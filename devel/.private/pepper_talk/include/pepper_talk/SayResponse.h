// Generated by gencpp from file pepper_talk/SayResponse.msg
// DO NOT EDIT!


#ifndef PEPPER_TALK_MESSAGE_SAYRESPONSE_H
#define PEPPER_TALK_MESSAGE_SAYRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pepper_talk
{
template <class ContainerAllocator>
struct SayResponse_
{
  typedef SayResponse_<ContainerAllocator> Type;

  SayResponse_()
    : result(false)  {
    }
  SayResponse_(const ContainerAllocator& _alloc)
    : result(false)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::pepper_talk::SayResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pepper_talk::SayResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SayResponse_

typedef ::pepper_talk::SayResponse_<std::allocator<void> > SayResponse;

typedef boost::shared_ptr< ::pepper_talk::SayResponse > SayResponsePtr;
typedef boost::shared_ptr< ::pepper_talk::SayResponse const> SayResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pepper_talk::SayResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pepper_talk::SayResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pepper_talk::SayResponse_<ContainerAllocator1> & lhs, const ::pepper_talk::SayResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pepper_talk::SayResponse_<ContainerAllocator1> & lhs, const ::pepper_talk::SayResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pepper_talk

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pepper_talk::SayResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pepper_talk::SayResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pepper_talk::SayResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pepper_talk::SayResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pepper_talk::SayResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pepper_talk::SayResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pepper_talk::SayResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb13ac1f1354ccecb7941ee8fa2192e8";
  }

  static const char* value(const ::pepper_talk::SayResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb13ac1f1354ccecULL;
  static const uint64_t static_value2 = 0xb7941ee8fa2192e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::pepper_talk::SayResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pepper_talk/SayResponse";
  }

  static const char* value(const ::pepper_talk::SayResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pepper_talk::SayResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result\n"
;
  }

  static const char* value(const ::pepper_talk::SayResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pepper_talk::SayResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SayResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pepper_talk::SayResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pepper_talk::SayResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PEPPER_TALK_MESSAGE_SAYRESPONSE_H
