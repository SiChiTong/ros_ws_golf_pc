/**
* Implementation of KalmanFilter class.
*
* @author: Hayk Martirosyan
* @date: 2014.11.15
*/

#include <iostream>
#include <stdexcept>
#include "kalman.hpp"

KalmanFilter::KalmanFilter(
    double dt,
    const Eigen::MatrixXd& A,
    const Eigen::MatrixXd& C,
    const Eigen::MatrixXd& Q,
    const Eigen::MatrixXd& R,
    const Eigen::MatrixXd& P)
  : A(A), C(C), Q(Q), R(R), P0(P),
    m(C.rows()), n(A.rows()), dt(dt), initialized(false),
    I(n, n), x_hat(n), x_hat_new(n)
{
  I.setIdentity();
}

KalmanFilter::KalmanFilter() {}

void KalmanFilter::init(double t0, const Eigen::VectorXd& x0) {
  x_hat = x0;
  P = P0;
  this->t0 = t0;
  t = t0;
  initialized = true;
}

void KalmanFilter::init() {
  x_hat.setZero();
  P = P0;
  t0 = 0;
  t = t0;
  initialized = true;
}

void KalmanFilter::init_smooth(double t0, const Eigen::VectorXd& x0) {
  xs_hat = x0;
  Ps = P0;
  this->t0 = t0;
  t = t0;
  initialized_smooth = true;
}

void KalmanFilter::update(const Eigen::VectorXd& y) {

  if(!initialized)
    throw std::runtime_error("Filter is not initialized!");

  x_hat_new = A * x_hat;
  P_new = A*P*A.transpose() + Q;
  K = P_new*C.transpose()*(C*P_new*C.transpose() + R).inverse();

  //if (DetectionOutlier(K * (y - C*x_hat_new))) {
	  x_hat_new += K * (y - C*x_hat_new);
	  P_new = (I - K*C)*P_new;
	  x_hat = x_hat_new;
	  P = P_new;
  //}

  // t += dt;
}

void KalmanFilter::update(const Eigen::VectorXd& y, double dt, const Eigen::MatrixXd A) {

  this->A = A;
  this->dt = dt;
  update(y);
}

void KalmanFilter::update_smooth(const Eigen::VectorXd& y) {

  if(!initialized_smooth)
    throw std::runtime_error("Filter is not initialized!");

  xs_hat_new = A * xs_hat;
  Ps_new = A*Ps*A.transpose() + Q;
  Ks = Ps_new*C.transpose()*(C*Ps_new*C.transpose() + R).inverse();

  if (DetectionOutlier(Ks * (y - C*xs_hat_new))) {
	  xs_hat_new += Ks * (y - C*xs_hat_new);
	  Ps_new = (I - Ks*C)*Ps_new;
	  xs_hat = xs_hat_new;
	  Ps = Ps_new;
  }

  // t += dt;
}

Eigen::VectorXd KalmanFilter::prediction() {
	Eigen::VectorXd y_est(m);
	double temp_time;

	temp_time = time();
	mu = x_hat;
	Sigma = P;

	for (int j = 0; j < 40; j++) {
		temp_time += dt;
		mu_new = A * mu;
		Sigma_new = A*Sigma*A.transpose() + Q;
		mu = mu_new;
		Sigma = Sigma_new;
	}

	y_est = C * mu_new;
  //update_smooth(y_est);
  //y_est = C * state_smooth();

	return y_est;
}

bool KalmanFilter::DetectionOutlier(Eigen::VectorXd diff)
{
	double res;

	//マハラノビス距離を利用した外れ値検出
	res = diff.transpose() * P.inverse() * diff;

    /*
	if (res > TH)
		return false;
	else
		return true;
    */
    return true;
}
