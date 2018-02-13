// Generated by gencpp from file haptic_base/DSValues.msg
// DO NOT EDIT!


#ifndef HAPTIC_BASE_MESSAGE_DSVALUES_H
#define HAPTIC_BASE_MESSAGE_DSVALUES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace haptic_base
{
template <class ContainerAllocator>
struct DSValues_
{
  typedef DSValues_<ContainerAllocator> Type;

  DSValues_()
    : ds_dur()
    , ds_angle(0)
    , ds_entry_angle(0)
    , ds_start_time()  {
    }
  DSValues_(const ContainerAllocator& _alloc)
    : ds_dur()
    , ds_angle(0)
    , ds_entry_angle(0)
    , ds_start_time()  {
  (void)_alloc;
    }



   typedef ros::Duration _ds_dur_type;
  _ds_dur_type ds_dur;

   typedef int16_t _ds_angle_type;
  _ds_angle_type ds_angle;

   typedef int16_t _ds_entry_angle_type;
  _ds_entry_angle_type ds_entry_angle;

   typedef ros::Time _ds_start_time_type;
  _ds_start_time_type ds_start_time;




  typedef boost::shared_ptr< ::haptic_base::DSValues_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::haptic_base::DSValues_<ContainerAllocator> const> ConstPtr;

}; // struct DSValues_

typedef ::haptic_base::DSValues_<std::allocator<void> > DSValues;

typedef boost::shared_ptr< ::haptic_base::DSValues > DSValuesPtr;
typedef boost::shared_ptr< ::haptic_base::DSValues const> DSValuesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::haptic_base::DSValues_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::haptic_base::DSValues_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace haptic_base

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'haptic_base': ['/home/raven/ros_ws/src/haptic_base/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::haptic_base::DSValues_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::haptic_base::DSValues_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::haptic_base::DSValues_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::haptic_base::DSValues_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::haptic_base::DSValues_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::haptic_base::DSValues_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::haptic_base::DSValues_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6adcc043e40096395efe95f2a02fadce";
  }

  static const char* value(const ::haptic_base::DSValues_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6adcc043e4009639ULL;
  static const uint64_t static_value2 = 0x5efe95f2a02fadceULL;
};

template<class ContainerAllocator>
struct DataType< ::haptic_base::DSValues_<ContainerAllocator> >
{
  static const char* value()
  {
    return "haptic_base/DSValues";
  }

  static const char* value(const ::haptic_base::DSValues_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::haptic_base::DSValues_<ContainerAllocator> >
{
  static const char* value()
  {
    return "duration ds_dur\n\
int16 ds_angle\n\
int16 ds_entry_angle\n\
time ds_start_time\n\
\n\
";
  }

  static const char* value(const ::haptic_base::DSValues_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::haptic_base::DSValues_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ds_dur);
      stream.next(m.ds_angle);
      stream.next(m.ds_entry_angle);
      stream.next(m.ds_start_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DSValues_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::haptic_base::DSValues_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::haptic_base::DSValues_<ContainerAllocator>& v)
  {
    s << indent << "ds_dur: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.ds_dur);
    s << indent << "ds_angle: ";
    Printer<int16_t>::stream(s, indent + "  ", v.ds_angle);
    s << indent << "ds_entry_angle: ";
    Printer<int16_t>::stream(s, indent + "  ", v.ds_entry_angle);
    s << indent << "ds_start_time: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.ds_start_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HAPTIC_BASE_MESSAGE_DSVALUES_H
