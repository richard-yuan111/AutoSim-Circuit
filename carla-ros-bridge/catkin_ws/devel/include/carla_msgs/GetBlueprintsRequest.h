// Generated by gencpp from file carla_msgs/GetBlueprintsRequest.msg
// DO NOT EDIT!


#ifndef CARLA_MSGS_MESSAGE_GETBLUEPRINTSREQUEST_H
#define CARLA_MSGS_MESSAGE_GETBLUEPRINTSREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace carla_msgs
{
template <class ContainerAllocator>
struct GetBlueprintsRequest_
{
  typedef GetBlueprintsRequest_<ContainerAllocator> Type;

  GetBlueprintsRequest_()
    : filter()  {
    }
  GetBlueprintsRequest_(const ContainerAllocator& _alloc)
    : filter(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _filter_type;
  _filter_type filter;





  typedef boost::shared_ptr< ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetBlueprintsRequest_

typedef ::carla_msgs::GetBlueprintsRequest_<std::allocator<void> > GetBlueprintsRequest;

typedef boost::shared_ptr< ::carla_msgs::GetBlueprintsRequest > GetBlueprintsRequestPtr;
typedef boost::shared_ptr< ::carla_msgs::GetBlueprintsRequest const> GetBlueprintsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator1> & lhs, const ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.filter == rhs.filter;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator1> & lhs, const ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace carla_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0665b698518980c549ffcc60283b661c";
  }

  static const char* value(const ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0665b698518980c5ULL;
  static const uint64_t static_value2 = 0x49ffcc60283b661cULL;
};

template<class ContainerAllocator>
struct DataType< ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "carla_msgs/GetBlueprintsRequest";
  }

  static const char* value(const ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# Copyright (c) 2020 Intel Corporation.\n"
"#\n"
"# This work is licensed under the terms of the MIT license.\n"
"# For a copy, see <https://opensource.org/licenses/MIT>.\n"
"#\n"
"string filter\n"
;
  }

  static const char* value(const ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.filter);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetBlueprintsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::carla_msgs::GetBlueprintsRequest_<ContainerAllocator>& v)
  {
    s << indent << "filter: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.filter);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARLA_MSGS_MESSAGE_GETBLUEPRINTSREQUEST_H
