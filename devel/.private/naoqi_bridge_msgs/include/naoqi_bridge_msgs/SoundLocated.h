// Generated by gencpp from file naoqi_bridge_msgs/SoundLocated.msg
// DO NOT EDIT!


#ifndef NAOQI_BRIDGE_MSGS_MESSAGE_SOUNDLOCATED_H
#define NAOQI_BRIDGE_MSGS_MESSAGE_SOUNDLOCATED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Twist.h>

namespace naoqi_bridge_msgs
{
template <class ContainerAllocator>
struct SoundLocated_
{
  typedef SoundLocated_<ContainerAllocator> Type;

  SoundLocated_()
    : header()
    , azimuth(0.0)
    , elevation(0.0)
    , confidence(0.0)
    , energy(0.0)
    , head_position_frame_torso()
    , head_position_frame_robot()  {
    }
  SoundLocated_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , azimuth(0.0)
    , elevation(0.0)
    , confidence(0.0)
    , energy(0.0)
    , head_position_frame_torso(_alloc)
    , head_position_frame_robot(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _azimuth_type;
  _azimuth_type azimuth;

   typedef double _elevation_type;
  _elevation_type elevation;

   typedef double _confidence_type;
  _confidence_type confidence;

   typedef double _energy_type;
  _energy_type energy;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _head_position_frame_torso_type;
  _head_position_frame_torso_type head_position_frame_torso;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _head_position_frame_robot_type;
  _head_position_frame_robot_type head_position_frame_robot;





  typedef boost::shared_ptr< ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator> const> ConstPtr;

}; // struct SoundLocated_

typedef ::naoqi_bridge_msgs::SoundLocated_<std::allocator<void> > SoundLocated;

typedef boost::shared_ptr< ::naoqi_bridge_msgs::SoundLocated > SoundLocatedPtr;
typedef boost::shared_ptr< ::naoqi_bridge_msgs::SoundLocated const> SoundLocatedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator1> & lhs, const ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.azimuth == rhs.azimuth &&
    lhs.elevation == rhs.elevation &&
    lhs.confidence == rhs.confidence &&
    lhs.energy == rhs.energy &&
    lhs.head_position_frame_torso == rhs.head_position_frame_torso &&
    lhs.head_position_frame_robot == rhs.head_position_frame_robot;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator1> & lhs, const ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace naoqi_bridge_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator> >
{
  static const char* value()
  {
    return "884a2810157403bbdabfb1011c851b42";
  }

  static const char* value(const ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x884a2810157403bbULL;
  static const uint64_t static_value2 = 0xdabfb1011c851b42ULL;
};

template<class ContainerAllocator>
struct DataType< ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator> >
{
  static const char* value()
  {
    return "naoqi_bridge_msgs/SoundLocated";
  }

  static const char* value(const ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"float64 azimuth\n"
"float64 elevation\n"
"float64 confidence\n"
"float64 energy\n"
"geometry_msgs/Twist head_position_frame_torso\n"
"geometry_msgs/Twist head_position_frame_robot\n"
"\n"
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

  static const char* value(const ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.azimuth);
      stream.next(m.elevation);
      stream.next(m.confidence);
      stream.next(m.energy);
      stream.next(m.head_position_frame_torso);
      stream.next(m.head_position_frame_robot);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SoundLocated_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::naoqi_bridge_msgs::SoundLocated_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "azimuth: ";
    Printer<double>::stream(s, indent + "  ", v.azimuth);
    s << indent << "elevation: ";
    Printer<double>::stream(s, indent + "  ", v.elevation);
    s << indent << "confidence: ";
    Printer<double>::stream(s, indent + "  ", v.confidence);
    s << indent << "energy: ";
    Printer<double>::stream(s, indent + "  ", v.energy);
    s << indent << "head_position_frame_torso: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.head_position_frame_torso);
    s << indent << "head_position_frame_robot: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.head_position_frame_robot);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAOQI_BRIDGE_MSGS_MESSAGE_SOUNDLOCATED_H
