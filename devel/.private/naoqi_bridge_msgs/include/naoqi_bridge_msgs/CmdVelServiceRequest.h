// Generated by gencpp from file naoqi_bridge_msgs/CmdVelServiceRequest.msg
// DO NOT EDIT!


#ifndef NAOQI_BRIDGE_MSGS_MESSAGE_CMDVELSERVICEREQUEST_H
#define NAOQI_BRIDGE_MSGS_MESSAGE_CMDVELSERVICEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Twist.h>

namespace naoqi_bridge_msgs
{
template <class ContainerAllocator>
struct CmdVelServiceRequest_
{
  typedef CmdVelServiceRequest_<ContainerAllocator> Type;

  CmdVelServiceRequest_()
    : twist()  {
    }
  CmdVelServiceRequest_(const ContainerAllocator& _alloc)
    : twist(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _twist_type;
  _twist_type twist;





  typedef boost::shared_ptr< ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CmdVelServiceRequest_

typedef ::naoqi_bridge_msgs::CmdVelServiceRequest_<std::allocator<void> > CmdVelServiceRequest;

typedef boost::shared_ptr< ::naoqi_bridge_msgs::CmdVelServiceRequest > CmdVelServiceRequestPtr;
typedef boost::shared_ptr< ::naoqi_bridge_msgs::CmdVelServiceRequest const> CmdVelServiceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator1> & lhs, const ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.twist == rhs.twist;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator1> & lhs, const ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace naoqi_bridge_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a787b2802160dcc7fe02d089e10afe56";
  }

  static const char* value(const ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa787b2802160dcc7ULL;
  static const uint64_t static_value2 = 0xfe02d089e10afe56ULL;
};

template<class ContainerAllocator>
struct DataType< ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "naoqi_bridge_msgs/CmdVelServiceRequest";
  }

  static const char* value(const ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Command velocity as service:\n"
"geometry_msgs/Twist twist\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.twist);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CmdVelServiceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::naoqi_bridge_msgs::CmdVelServiceRequest_<ContainerAllocator>& v)
  {
    s << indent << "twist: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.twist);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAOQI_BRIDGE_MSGS_MESSAGE_CMDVELSERVICEREQUEST_H
