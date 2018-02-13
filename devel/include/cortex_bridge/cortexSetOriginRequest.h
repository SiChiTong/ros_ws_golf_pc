// Generated by gencpp from file cortex_bridge/cortexSetOriginRequest.msg
// DO NOT EDIT!


#ifndef CORTEX_BRIDGE_MESSAGE_CORTEXSETORIGINREQUEST_H
#define CORTEX_BRIDGE_MESSAGE_CORTEXSETORIGINREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cortex_bridge
{
template <class ContainerAllocator>
struct cortexSetOriginRequest_
{
  typedef cortexSetOriginRequest_<ContainerAllocator> Type;

  cortexSetOriginRequest_()
    : subject_name()
    , segment_name()
    , n_measurements(0)
    , z_offset(0.0)  {
    }
  cortexSetOriginRequest_(const ContainerAllocator& _alloc)
    : subject_name(_alloc)
    , segment_name(_alloc)
    , n_measurements(0)
    , z_offset(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _subject_name_type;
  _subject_name_type subject_name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _segment_name_type;
  _segment_name_type segment_name;

   typedef int32_t _n_measurements_type;
  _n_measurements_type n_measurements;

   typedef double _z_offset_type;
  _z_offset_type z_offset;




  typedef boost::shared_ptr< ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator> const> ConstPtr;

}; // struct cortexSetOriginRequest_

typedef ::cortex_bridge::cortexSetOriginRequest_<std::allocator<void> > cortexSetOriginRequest;

typedef boost::shared_ptr< ::cortex_bridge::cortexSetOriginRequest > cortexSetOriginRequestPtr;
typedef boost::shared_ptr< ::cortex_bridge::cortexSetOriginRequest const> cortexSetOriginRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cortex_bridge

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'cortex_bridge': ['/home/raven/ros_ws/src/cortex_ros_bridge/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6739800148f38455cf04c30c00be7df2";
  }

  static const char* value(const ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6739800148f38455ULL;
  static const uint64_t static_value2 = 0xcf04c30c00be7df2ULL;
};

template<class ContainerAllocator>
struct DataType< ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cortex_bridge/cortexSetOriginRequest";
  }

  static const char* value(const ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string subject_name\n\
string segment_name\n\
int32 n_measurements\n\
float64 z_offset\n\
";
  }

  static const char* value(const ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.subject_name);
      stream.next(m.segment_name);
      stream.next(m.n_measurements);
      stream.next(m.z_offset);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct cortexSetOriginRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cortex_bridge::cortexSetOriginRequest_<ContainerAllocator>& v)
  {
    s << indent << "subject_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.subject_name);
    s << indent << "segment_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.segment_name);
    s << indent << "n_measurements: ";
    Printer<int32_t>::stream(s, indent + "  ", v.n_measurements);
    s << indent << "z_offset: ";
    Printer<double>::stream(s, indent + "  ", v.z_offset);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CORTEX_BRIDGE_MESSAGE_CORTEXSETORIGINREQUEST_H