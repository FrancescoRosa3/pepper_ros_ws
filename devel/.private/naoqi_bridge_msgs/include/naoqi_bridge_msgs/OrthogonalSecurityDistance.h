// Generated by gencpp from file naoqi_bridge_msgs/OrthogonalSecurityDistance.msg
// DO NOT EDIT!


#ifndef NAOQI_BRIDGE_MSGS_MESSAGE_ORTHOGONALSECURITYDISTANCE_H
#define NAOQI_BRIDGE_MSGS_MESSAGE_ORTHOGONALSECURITYDISTANCE_H

#include <ros/service_traits.h>


#include <naoqi_bridge_msgs/OrthogonalSecurityDistanceRequest.h>
#include <naoqi_bridge_msgs/OrthogonalSecurityDistanceResponse.h>


namespace naoqi_bridge_msgs
{

struct OrthogonalSecurityDistance
{

typedef OrthogonalSecurityDistanceRequest Request;
typedef OrthogonalSecurityDistanceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct OrthogonalSecurityDistance
} // namespace naoqi_bridge_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::naoqi_bridge_msgs::OrthogonalSecurityDistance > {
  static const char* value()
  {
    return "69e9b81707b13ae1b2bceacbb0d41137";
  }

  static const char* value(const ::naoqi_bridge_msgs::OrthogonalSecurityDistance&) { return value(); }
};

template<>
struct DataType< ::naoqi_bridge_msgs::OrthogonalSecurityDistance > {
  static const char* value()
  {
    return "naoqi_bridge_msgs/OrthogonalSecurityDistance";
  }

  static const char* value(const ::naoqi_bridge_msgs::OrthogonalSecurityDistance&) { return value(); }
};


// service_traits::MD5Sum< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest> should match
// service_traits::MD5Sum< ::naoqi_bridge_msgs::OrthogonalSecurityDistance >
template<>
struct MD5Sum< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::naoqi_bridge_msgs::OrthogonalSecurityDistance >::value();
  }
  static const char* value(const ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest> should match
// service_traits::DataType< ::naoqi_bridge_msgs::OrthogonalSecurityDistance >
template<>
struct DataType< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest>
{
  static const char* value()
  {
    return DataType< ::naoqi_bridge_msgs::OrthogonalSecurityDistance >::value();
  }
  static const char* value(const ::naoqi_bridge_msgs::OrthogonalSecurityDistanceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceResponse> should match
// service_traits::MD5Sum< ::naoqi_bridge_msgs::OrthogonalSecurityDistance >
template<>
struct MD5Sum< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::naoqi_bridge_msgs::OrthogonalSecurityDistance >::value();
  }
  static const char* value(const ::naoqi_bridge_msgs::OrthogonalSecurityDistanceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceResponse> should match
// service_traits::DataType< ::naoqi_bridge_msgs::OrthogonalSecurityDistance >
template<>
struct DataType< ::naoqi_bridge_msgs::OrthogonalSecurityDistanceResponse>
{
  static const char* value()
  {
    return DataType< ::naoqi_bridge_msgs::OrthogonalSecurityDistance >::value();
  }
  static const char* value(const ::naoqi_bridge_msgs::OrthogonalSecurityDistanceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NAOQI_BRIDGE_MSGS_MESSAGE_ORTHOGONALSECURITYDISTANCE_H
