// Generated by gencpp from file carla_msgs/CarlaBoundingBox.msg
// DO NOT EDIT!


#ifndef CARLA_MSGS_MESSAGE_CARLABOUNDINGBOX_H
#define CARLA_MSGS_MESSAGE_CARLABOUNDINGBOX_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace carla_msgs
{
template <class ContainerAllocator>
struct CarlaBoundingBox_
{
  typedef CarlaBoundingBox_<ContainerAllocator> Type;

  CarlaBoundingBox_()
    : center()
    , size()  {
    }
  CarlaBoundingBox_(const ContainerAllocator& _alloc)
    : center(_alloc)
    , size(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _center_type;
  _center_type center;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _size_type;
  _size_type size;





  typedef boost::shared_ptr< ::carla_msgs::CarlaBoundingBox_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::carla_msgs::CarlaBoundingBox_<ContainerAllocator> const> ConstPtr;

}; // struct CarlaBoundingBox_

typedef ::carla_msgs::CarlaBoundingBox_<std::allocator<void> > CarlaBoundingBox;

typedef boost::shared_ptr< ::carla_msgs::CarlaBoundingBox > CarlaBoundingBoxPtr;
typedef boost::shared_ptr< ::carla_msgs::CarlaBoundingBox const> CarlaBoundingBoxConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::carla_msgs::CarlaBoundingBox_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::carla_msgs::CarlaBoundingBox_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::carla_msgs::CarlaBoundingBox_<ContainerAllocator1> & lhs, const ::carla_msgs::CarlaBoundingBox_<ContainerAllocator2> & rhs)
{
  return lhs.center == rhs.center &&
    lhs.size == rhs.size;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::carla_msgs::CarlaBoundingBox_<ContainerAllocator1> & lhs, const ::carla_msgs::CarlaBoundingBox_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace carla_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::carla_msgs::CarlaBoundingBox_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::carla_msgs::CarlaBoundingBox_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_msgs::CarlaBoundingBox_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_msgs::CarlaBoundingBox_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_msgs::CarlaBoundingBox_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_msgs::CarlaBoundingBox_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::carla_msgs::CarlaBoundingBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "17746d0996c54d9b8b0dfe6f3cd0b588";
  }

  static const char* value(const ::carla_msgs::CarlaBoundingBox_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x17746d0996c54d9bULL;
  static const uint64_t static_value2 = 0x8b0dfe6f3cd0b588ULL;
};

template<class ContainerAllocator>
struct DataType< ::carla_msgs::CarlaBoundingBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "carla_msgs/CarlaBoundingBox";
  }

  static const char* value(const ::carla_msgs::CarlaBoundingBox_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::carla_msgs::CarlaBoundingBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# Copyright (c) 2020 Intel Corporation.\n"
"#\n"
"# This work is licensed under the terms of the MIT license.\n"
"# For a copy, see <https://opensource.org/licenses/MIT>.\n"
"#\n"
"geometry_msgs/Vector3 center\n"
"\n"
"geometry_msgs/Vector3 size\n"
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

  static const char* value(const ::carla_msgs::CarlaBoundingBox_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::carla_msgs::CarlaBoundingBox_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.center);
      stream.next(m.size);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CarlaBoundingBox_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::carla_msgs::CarlaBoundingBox_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::carla_msgs::CarlaBoundingBox_<ContainerAllocator>& v)
  {
    s << indent << "center: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.center);
    s << indent << "size: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.size);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARLA_MSGS_MESSAGE_CARLABOUNDINGBOX_H
