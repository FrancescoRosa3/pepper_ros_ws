// Generated by gencpp from file naoqi_bridge_msgs/AudioBuffer.msg
// DO NOT EDIT!


#ifndef NAOQI_BRIDGE_MSGS_MESSAGE_AUDIOBUFFER_H
#define NAOQI_BRIDGE_MSGS_MESSAGE_AUDIOBUFFER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace naoqi_bridge_msgs
{
template <class ContainerAllocator>
struct AudioBuffer_
{
  typedef AudioBuffer_<ContainerAllocator> Type;

  AudioBuffer_()
    : header()
    , frequency(0)
    , channelMap()
    , data()  {
    }
  AudioBuffer_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , frequency(0)
    , channelMap(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint16_t _frequency_type;
  _frequency_type frequency;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _channelMap_type;
  _channelMap_type channelMap;

   typedef std::vector<int16_t, typename ContainerAllocator::template rebind<int16_t>::other >  _data_type;
  _data_type data;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(CHANNEL_FRONT_LEFT)
  #undef CHANNEL_FRONT_LEFT
#endif
#if defined(_WIN32) && defined(CHANNEL_FRONT_CENTER)
  #undef CHANNEL_FRONT_CENTER
#endif
#if defined(_WIN32) && defined(CHANNEL_FRONT_RIGHT)
  #undef CHANNEL_FRONT_RIGHT
#endif
#if defined(_WIN32) && defined(CHANNEL_REAR_LEFT)
  #undef CHANNEL_REAR_LEFT
#endif
#if defined(_WIN32) && defined(CHANNEL_REAR_CENTER)
  #undef CHANNEL_REAR_CENTER
#endif
#if defined(_WIN32) && defined(CHANNEL_REAR_RIGHT)
  #undef CHANNEL_REAR_RIGHT
#endif
#if defined(_WIN32) && defined(CHANNEL_SURROUND_LEFT)
  #undef CHANNEL_SURROUND_LEFT
#endif
#if defined(_WIN32) && defined(CHANNEL_SURROUND_RIGHT)
  #undef CHANNEL_SURROUND_RIGHT
#endif
#if defined(_WIN32) && defined(CHANNEL_SUBWOOFER)
  #undef CHANNEL_SUBWOOFER
#endif
#if defined(_WIN32) && defined(CHANNEL_LFE)
  #undef CHANNEL_LFE
#endif

  enum {
    CHANNEL_FRONT_LEFT = 0u,
    CHANNEL_FRONT_CENTER = 1u,
    CHANNEL_FRONT_RIGHT = 2u,
    CHANNEL_REAR_LEFT = 3u,
    CHANNEL_REAR_CENTER = 4u,
    CHANNEL_REAR_RIGHT = 5u,
    CHANNEL_SURROUND_LEFT = 6u,
    CHANNEL_SURROUND_RIGHT = 7u,
    CHANNEL_SUBWOOFER = 8u,
    CHANNEL_LFE = 9u,
  };


  typedef boost::shared_ptr< ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator> const> ConstPtr;

}; // struct AudioBuffer_

typedef ::naoqi_bridge_msgs::AudioBuffer_<std::allocator<void> > AudioBuffer;

typedef boost::shared_ptr< ::naoqi_bridge_msgs::AudioBuffer > AudioBufferPtr;
typedef boost::shared_ptr< ::naoqi_bridge_msgs::AudioBuffer const> AudioBufferConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator1> & lhs, const ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.frequency == rhs.frequency &&
    lhs.channelMap == rhs.channelMap &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator1> & lhs, const ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace naoqi_bridge_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "50f300aa63f3c1b2f3d3173329165316";
  }

  static const char* value(const ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x50f300aa63f3c1b2ULL;
  static const uint64_t static_value2 = 0xf3d3173329165316ULL;
};

template<class ContainerAllocator>
struct DataType< ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "naoqi_bridge_msgs/AudioBuffer";
  }

  static const char* value(const ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# timestanp the audio buffer\n"
"Header header\n"
"# current frequency of the audio interface\n"
"uint16 frequency\n"
"# channel order properties :\n"
"uint8 CHANNEL_FRONT_LEFT=0\n"
"uint8 CHANNEL_FRONT_CENTER=1\n"
"uint8 CHANNEL_FRONT_RIGHT=2\n"
"uint8 CHANNEL_REAR_LEFT=3\n"
"uint8 CHANNEL_REAR_CENTER=4\n"
"uint8 CHANNEL_REAR_RIGHT=5\n"
"uint8 CHANNEL_SURROUND_LEFT=6\n"
"uint8 CHANNEL_SURROUND_RIGHT=7\n"
"uint8 CHANNEL_SUBWOOFER=8\n"
"uint8 CHANNEL_LFE=9\n"
"# channel order of the current buffer\n"
"uint8[] channelMap\n"
"# interlaced data of the audio buffer\n"
"int16[] data\n"
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
;
  }

  static const char* value(const ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.frequency);
      stream.next(m.channelMap);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AudioBuffer_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::naoqi_bridge_msgs::AudioBuffer_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "frequency: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.frequency);
    s << indent << "channelMap[]" << std::endl;
    for (size_t i = 0; i < v.channelMap.size(); ++i)
    {
      s << indent << "  channelMap[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.channelMap[i]);
    }
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<int16_t>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAOQI_BRIDGE_MSGS_MESSAGE_AUDIOBUFFER_H