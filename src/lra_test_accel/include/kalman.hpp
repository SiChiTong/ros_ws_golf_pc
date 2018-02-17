/**
* Kalman filter implementation using Eigen. Based on the following
* introductory paper:
*
*     http://www.cs.unc.edu/~welch/media/pdf/kalman_intro.pdf
*
* @author: Hayk Martirosyan
* @date: 2014.11.15
*/

#include <Eigen/Dense>

#define TH 11.3449 //マハラノビス距離の閾値(自由度3，棄却率1[%]の時)
//#define TH 21.666 //マハラノビス距離の閾値(自由度9，棄却率1[%]の時)

#pragma once

class KalmanFilter {

public:

  /**
  * Create a Kalman filter with the specified matrices.
  *   A - System dynamics matrix
  *   C - Output matrix
  *   Q - Process noise covariance
  *   R - Measurement noise covariance
  *   P - Estimate error covariance
  */
  KalmanFilter(
      double dt,
      const Eigen::MatrixXd& A,
      const Eigen::MatrixXd& C,
      const Eigen::MatrixXd& Q,
      const Eigen::MatrixXd& R,
      const Eigen::MatrixXd& P
  );

  /**
  * Create a blank estimator.
  */
  KalmanFilter();

  /**
  * Initialize the filter with initial states as zero.
  */
  void init();

  /**
  * Initialize the filter with a guess for initial states.
  */
  void init(double t0, const Eigen::VectorXd& x0);

  void init_smooth(double t0, const Eigen::VectorXd& x0);

  /**
  * Update the estimated state based on measured values. The
  * time step is assumed to remain constant.
  */
  void update(const Eigen::VectorXd& y);

  /**
  * Update the estimated state based on measured values,
  * using the given time step and dynamics matrix.
  */
  void update(const Eigen::VectorXd& y, double dt, const Eigen::MatrixXd A);

  void update_smooth(const Eigen::VectorXd& y);

  Eigen::VectorXd prediction();

  /**
  * Return the current state and time.
  */
  Eigen::VectorXd state() { return x_hat; };
  Eigen::VectorXd state_smooth() { return xs_hat; };
  double time() { return t; };

private:

  // Matrices for computation
  Eigen::MatrixXd A, C, Q, R, P, K, Ks, P0, P_new, Ps, Ps_new;

  // System dimensions
  int m, n;

  // Initial and current time
  double t0, t;

  // Discrete time step
  double dt;

  // Is the filter initialized?
  bool initialized;
  bool initialized_smooth;

  // n-size identity
  Eigen::MatrixXd I;

  // Estimated states
  Eigen::VectorXd x_hat, x_hat_new;

  // Predicted states
  Eigen::VectorXd mu, mu_new;

  // Estimated states
  Eigen::VectorXd xs_hat, xs_hat_new;

  // Predicted estimate error covariance
  Eigen::MatrixXd Sigma, Sigma_new;

  bool DetectionOutlier(Eigen::VectorXd diff);//マハラノビス距離を利用した外れ値検出
};
