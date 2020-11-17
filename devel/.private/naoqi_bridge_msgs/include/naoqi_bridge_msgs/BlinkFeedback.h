// Generated by gencpp from file naoqi_bridge_msgs/BlinkFeedback.msg
// DO NOT EDIT!


#ifndef NAOQI_BRIDGE_MSGS_MESSAGE_BLINKFEEDBACK_H
#define NAOQI_BRIDGE_MSGS_MESSAGE_BLINKFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/ColorRGBA.h>

namespace naoqi_bridge_msgs
{
template <class ContainerAllocator>
struct BlinkFeedback_
{
  typedef BlinkFeedback_<ContainerAllocator> Type;

  BlinkFeedback_()
    : last_color()  {
    }
  BlinkFeedback_(const ContainerAllocator& _alloc)
    : last_color(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::ColorRGBA_<ContainerAllocator>  _last_color_type;
  _last_color_type last_color;





  typedef boost::shared_ptr< ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct BlinkFeedback_

typedef ::naoqi_bridge_msgs::BlinkFeedback_<std::allocator<void> > BlinkFeedback;

typedef boost::shared_ptr< ::naoqi_bridge_msgs::BlinkFeedback > BlinkFeedbackPtr;
typedef boost::shared_ptr< ::naoqi_bridge_msgs::BlinkFeedback const> BlinkFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator1> & lhs, const ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.last_color == rhs.last_color;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator1> & lhs, const ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace naoqi_bridge_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6f1f94fb3eb06412264f6e0c5e72cfab";
  }

  static const char* value(const ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6f1f94fb3eb06412ULL;
  static const uint64_t static_value2 = 0x264f6e0c5e72cfabULL;
};

template<class ContainerAllocator>
struct DataType< ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "naoqi_bridge_msgs/BlinkFeedback";
  }

  static const char* value(const ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"std_msgs/ColorRGBA last_color\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/ColorRGBA\n"
"float32 r\n"
"float32 g\n"
"float32 b\n"
"float32 a\n"
;
  }

  static const char* value(const ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.last_color);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BlinkFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::naoqi_bridge_msgs::BlinkFeedback_<ContainerAllocator>& v)
  {
    s << indent << "last_color: ";
    s << std::endl;
    Printer< ::std_msgs::ColorRGBA_<ContainerAllocator> >::stream(s, indent + "  ", v.last_color);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAOQI_BRIDGE_MSGS_MESSAGE_BLINKFEEDBACK_H