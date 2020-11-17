// Generated by gencpp from file detection_srv/DetectorRequest.msg
// DO NOT EDIT!


#ifndef DETECTION_SRV_MESSAGE_DETECTORREQUEST_H
#define DETECTION_SRV_MESSAGE_DETECTORREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace detection_srv
{
template <class ContainerAllocator>
struct DetectorRequest_
{
  typedef DetectorRequest_<ContainerAllocator> Type;

  DetectorRequest_()
    {
    }
  DetectorRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::detection_srv::DetectorRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::detection_srv::DetectorRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DetectorRequest_

typedef ::detection_srv::DetectorRequest_<std::allocator<void> > DetectorRequest;

typedef boost::shared_ptr< ::detection_srv::DetectorRequest > DetectorRequestPtr;
typedef boost::shared_ptr< ::detection_srv::DetectorRequest const> DetectorRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::detection_srv::DetectorRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::detection_srv::DetectorRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace detection_srv

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::detection_srv::DetectorRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::detection_srv::DetectorRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::detection_srv::DetectorRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::detection_srv::DetectorRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::detection_srv::DetectorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::detection_srv::DetectorRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::detection_srv::DetectorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::detection_srv::DetectorRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::detection_srv::DetectorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "detection_srv/DetectorRequest";
  }

  static const char* value(const ::detection_srv::DetectorRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::detection_srv::DetectorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::detection_srv::DetectorRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::detection_srv::DetectorRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DetectorRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::detection_srv::DetectorRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::detection_srv::DetectorRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // DETECTION_SRV_MESSAGE_DETECTORREQUEST_H