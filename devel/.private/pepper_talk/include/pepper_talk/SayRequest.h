// Generated by gencpp from file pepper_talk/SayRequest.msg
// DO NOT EDIT!


#ifndef PEPPER_TALK_MESSAGE_SAYREQUEST_H
#define PEPPER_TALK_MESSAGE_SAYREQUEST_H


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
struct SayRequest_
{
  typedef SayRequest_<ContainerAllocator> Type;

  SayRequest_()
    : message()  {
    }
  SayRequest_(const ContainerAllocator& _alloc)
    : message(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::pepper_talk::SayRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pepper_talk::SayRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SayRequest_

typedef ::pepper_talk::SayRequest_<std::allocator<void> > SayRequest;

typedef boost::shared_ptr< ::pepper_talk::SayRequest > SayRequestPtr;
typedef boost::shared_ptr< ::pepper_talk::SayRequest const> SayRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pepper_talk::SayRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pepper_talk::SayRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pepper_talk::SayRequest_<ContainerAllocator1> & lhs, const ::pepper_talk::SayRequest_<ContainerAllocator2> & rhs)
{
  return lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pepper_talk::SayRequest_<ContainerAllocator1> & lhs, const ::pepper_talk::SayRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pepper_talk

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pepper_talk::SayRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pepper_talk::SayRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pepper_talk::SayRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pepper_talk::SayRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pepper_talk::SayRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pepper_talk::SayRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pepper_talk::SayRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5f003d6bcc824cbd51361d66d8e4f76c";
  }

  static const char* value(const ::pepper_talk::SayRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5f003d6bcc824cbdULL;
  static const uint64_t static_value2 = 0x51361d66d8e4f76cULL;
};

template<class ContainerAllocator>
struct DataType< ::pepper_talk::SayRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pepper_talk/SayRequest";
  }

  static const char* value(const ::pepper_talk::SayRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pepper_talk::SayRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string message\n"
;
  }

  static const char* value(const ::pepper_talk::SayRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pepper_talk::SayRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SayRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pepper_talk::SayRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pepper_talk::SayRequest_<ContainerAllocator>& v)
  {
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PEPPER_TALK_MESSAGE_SAYREQUEST_H