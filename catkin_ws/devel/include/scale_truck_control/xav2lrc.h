// Generated by gencpp from file scale_truck_control/xav2lrc.msg
// DO NOT EDIT!


#ifndef SCALE_TRUCK_CONTROL_MESSAGE_XAV2LRC_H
#define SCALE_TRUCK_CONTROL_MESSAGE_XAV2LRC_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace scale_truck_control
{
template <class ContainerAllocator>
struct xav2lrc_
{
  typedef xav2lrc_<ContainerAllocator> Type;

  xav2lrc_()
    : steer_angle(0.0)
    , cur_dist(0.0)
    , tar_dist(0.0)
    , tar_vel(0.0)
    , beta(false)
    , gamma(false)  {
    }
  xav2lrc_(const ContainerAllocator& _alloc)
    : steer_angle(0.0)
    , cur_dist(0.0)
    , tar_dist(0.0)
    , tar_vel(0.0)
    , beta(false)
    , gamma(false)  {
  (void)_alloc;
    }



   typedef float _steer_angle_type;
  _steer_angle_type steer_angle;

   typedef float _cur_dist_type;
  _cur_dist_type cur_dist;

   typedef float _tar_dist_type;
  _tar_dist_type tar_dist;

   typedef float _tar_vel_type;
  _tar_vel_type tar_vel;

   typedef uint8_t _beta_type;
  _beta_type beta;

   typedef uint8_t _gamma_type;
  _gamma_type gamma;





  typedef boost::shared_ptr< ::scale_truck_control::xav2lrc_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::scale_truck_control::xav2lrc_<ContainerAllocator> const> ConstPtr;

}; // struct xav2lrc_

typedef ::scale_truck_control::xav2lrc_<std::allocator<void> > xav2lrc;

typedef boost::shared_ptr< ::scale_truck_control::xav2lrc > xav2lrcPtr;
typedef boost::shared_ptr< ::scale_truck_control::xav2lrc const> xav2lrcConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::scale_truck_control::xav2lrc_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::scale_truck_control::xav2lrc_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::scale_truck_control::xav2lrc_<ContainerAllocator1> & lhs, const ::scale_truck_control::xav2lrc_<ContainerAllocator2> & rhs)
{
  return lhs.steer_angle == rhs.steer_angle &&
    lhs.cur_dist == rhs.cur_dist &&
    lhs.tar_dist == rhs.tar_dist &&
    lhs.tar_vel == rhs.tar_vel &&
    lhs.beta == rhs.beta &&
    lhs.gamma == rhs.gamma;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::scale_truck_control::xav2lrc_<ContainerAllocator1> & lhs, const ::scale_truck_control::xav2lrc_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace scale_truck_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::scale_truck_control::xav2lrc_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scale_truck_control::xav2lrc_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scale_truck_control::xav2lrc_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scale_truck_control::xav2lrc_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scale_truck_control::xav2lrc_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scale_truck_control::xav2lrc_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::scale_truck_control::xav2lrc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "67b2d2c9b9fe241a9e49be4c7e0c1a50";
  }

  static const char* value(const ::scale_truck_control::xav2lrc_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x67b2d2c9b9fe241aULL;
  static const uint64_t static_value2 = 0x9e49be4c7e0c1a50ULL;
};

template<class ContainerAllocator>
struct DataType< ::scale_truck_control::xav2lrc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "scale_truck_control/xav2lrc";
  }

  static const char* value(const ::scale_truck_control::xav2lrc_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::scale_truck_control::xav2lrc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 steer_angle\n"
"float32 cur_dist\n"
"float32 tar_dist\n"
"float32 tar_vel\n"
"bool beta\n"
"bool gamma\n"
;
  }

  static const char* value(const ::scale_truck_control::xav2lrc_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::scale_truck_control::xav2lrc_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.steer_angle);
      stream.next(m.cur_dist);
      stream.next(m.tar_dist);
      stream.next(m.tar_vel);
      stream.next(m.beta);
      stream.next(m.gamma);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct xav2lrc_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::scale_truck_control::xav2lrc_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::scale_truck_control::xav2lrc_<ContainerAllocator>& v)
  {
    s << indent << "steer_angle: ";
    Printer<float>::stream(s, indent + "  ", v.steer_angle);
    s << indent << "cur_dist: ";
    Printer<float>::stream(s, indent + "  ", v.cur_dist);
    s << indent << "tar_dist: ";
    Printer<float>::stream(s, indent + "  ", v.tar_dist);
    s << indent << "tar_vel: ";
    Printer<float>::stream(s, indent + "  ", v.tar_vel);
    s << indent << "beta: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.beta);
    s << indent << "gamma: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gamma);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCALE_TRUCK_CONTROL_MESSAGE_XAV2LRC_H
