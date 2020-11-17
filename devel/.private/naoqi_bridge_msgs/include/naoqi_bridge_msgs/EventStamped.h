// Generated by gencpp from file naoqi_bridge_msgs/EventStamped.msg
// DO NOT EDIT!


#ifndef NAOQI_BRIDGE_MSGS_MESSAGE_EVENTSTAMPED_H
#define NAOQI_BRIDGE_MSGS_MESSAGE_EVENTSTAMPED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <std_msgs/String.h>
#include <std_msgs/String.h>

namespace naoqi_bridge_msgs
{
template <class ContainerAllocator>
struct EventStamped_
{
  typedef EventStamped_<ContainerAllocator> Type;

  EventStamped_()
    : header()
    , name()
    , data()  {
    }
  EventStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , name(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::std_msgs::String_<ContainerAllocator>  _name_type;
  _name_type name;

   typedef  ::std_msgs::String_<ContainerAllocator>  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator> const> ConstPtr;

}; // struct EventStamped_

typedef ::naoqi_bridge_msgs::EventStamped_<std::allocator<void> > EventStamped;

typedef boost::shared_ptr< ::naoqi_bridge_msgs::EventStamped > EventStampedPtr;
typedef boost::shared_ptr< ::naoqi_bridge_msgs::EventStamped const> EventStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator1> & lhs, const ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.name == rhs.name &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator1> & lhs, const ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace naoqi_bridge_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "da9da7dab2e8376f0a588b6d053ac972";
  }

  static const char* value(const ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xda9da7dab2e8376fULL;
  static const uint64_t static_value2 = 0x0a588b6d053ac972ULL;
};

template<class ContainerAllocator>
struct DataType< ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "naoqi_bridge_msgs/EventStamped";
  }

  static const char* value(const ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"std_msgs/String name\n"
"std_msgs/String data\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
;
  }

  static const char* value(const ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.name);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EventStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::naoqi_bridge_msgs::EventStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "name: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.name);
    s << indent << "data: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAOQI_BRIDGE_MSGS_MESSAGE_EVENTSTAMPED_H
