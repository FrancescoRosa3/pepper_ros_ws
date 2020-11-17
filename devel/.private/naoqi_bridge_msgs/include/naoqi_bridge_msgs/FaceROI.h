// Generated by gencpp from file naoqi_bridge_msgs/FaceROI.msg
// DO NOT EDIT!


#ifndef NAOQI_BRIDGE_MSGS_MESSAGE_FACEROI_H
#define NAOQI_BRIDGE_MSGS_MESSAGE_FACEROI_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace naoqi_bridge_msgs
{
template <class ContainerAllocator>
struct FaceROI_
{
  typedef FaceROI_<ContainerAllocator> Type;

  FaceROI_()
    : angle(0.0)
    , cx(0.0)
    , cy(0.0)
    , height(0.0)
    , width(0.0)
    , confidence(0.0)  {
    }
  FaceROI_(const ContainerAllocator& _alloc)
    : angle(0.0)
    , cx(0.0)
    , cy(0.0)
    , height(0.0)
    , width(0.0)
    , confidence(0.0)  {
  (void)_alloc;
    }



   typedef float _angle_type;
  _angle_type angle;

   typedef float _cx_type;
  _cx_type cx;

   typedef float _cy_type;
  _cy_type cy;

   typedef float _height_type;
  _height_type height;

   typedef float _width_type;
  _width_type width;

   typedef float _confidence_type;
  _confidence_type confidence;





  typedef boost::shared_ptr< ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator> const> ConstPtr;

}; // struct FaceROI_

typedef ::naoqi_bridge_msgs::FaceROI_<std::allocator<void> > FaceROI;

typedef boost::shared_ptr< ::naoqi_bridge_msgs::FaceROI > FaceROIPtr;
typedef boost::shared_ptr< ::naoqi_bridge_msgs::FaceROI const> FaceROIConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator1> & lhs, const ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator2> & rhs)
{
  return lhs.angle == rhs.angle &&
    lhs.cx == rhs.cx &&
    lhs.cy == rhs.cy &&
    lhs.height == rhs.height &&
    lhs.width == rhs.width &&
    lhs.confidence == rhs.confidence;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator1> & lhs, const ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace naoqi_bridge_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a9f6bf2f53b2585ecc0ff57bd4a21df4";
  }

  static const char* value(const ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa9f6bf2f53b2585eULL;
  static const uint64_t static_value2 = 0xcc0ff57bd4a21df4ULL;
};

template<class ContainerAllocator>
struct DataType< ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator> >
{
  static const char* value()
  {
    return "naoqi_bridge_msgs/FaceROI";
  }

  static const char* value(const ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 angle\n"
"float32 cx\n"
"float32 cy\n"
"float32 height\n"
"float32 width\n"
"float32 confidence\n"
;
  }

  static const char* value(const ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.angle);
      stream.next(m.cx);
      stream.next(m.cy);
      stream.next(m.height);
      stream.next(m.width);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FaceROI_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::naoqi_bridge_msgs::FaceROI_<ContainerAllocator>& v)
  {
    s << indent << "angle: ";
    Printer<float>::stream(s, indent + "  ", v.angle);
    s << indent << "cx: ";
    Printer<float>::stream(s, indent + "  ", v.cx);
    s << indent << "cy: ";
    Printer<float>::stream(s, indent + "  ", v.cy);
    s << indent << "height: ";
    Printer<float>::stream(s, indent + "  ", v.height);
    s << indent << "width: ";
    Printer<float>::stream(s, indent + "  ", v.width);
    s << indent << "confidence: ";
    Printer<float>::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAOQI_BRIDGE_MSGS_MESSAGE_FACEROI_H