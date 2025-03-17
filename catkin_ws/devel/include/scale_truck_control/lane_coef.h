// Generated by gencpp from file scale_truck_control/lane_coef.msg
// DO NOT EDIT!


#ifndef SCALE_TRUCK_CONTROL_MESSAGE_LANE_COEF_H
#define SCALE_TRUCK_CONTROL_MESSAGE_LANE_COEF_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <scale_truck_control/lane.h>
#include <scale_truck_control/lane.h>
#include <scale_truck_control/lane.h>

namespace scale_truck_control
{
template <class ContainerAllocator>
struct lane_coef_
{
  typedef lane_coef_<ContainerAllocator> Type;

  lane_coef_()
    : left()
    , right()
    , center()  {
    }
  lane_coef_(const ContainerAllocator& _alloc)
    : left(_alloc)
    , right(_alloc)
    , center(_alloc)  {
  (void)_alloc;
    }



   typedef  ::scale_truck_control::lane_<ContainerAllocator>  _left_type;
  _left_type left;

   typedef  ::scale_truck_control::lane_<ContainerAllocator>  _right_type;
  _right_type right;

   typedef  ::scale_truck_control::lane_<ContainerAllocator>  _center_type;
  _center_type center;





  typedef boost::shared_ptr< ::scale_truck_control::lane_coef_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::scale_truck_control::lane_coef_<ContainerAllocator> const> ConstPtr;

}; // struct lane_coef_

typedef ::scale_truck_control::lane_coef_<std::allocator<void> > lane_coef;

typedef boost::shared_ptr< ::scale_truck_control::lane_coef > lane_coefPtr;
typedef boost::shared_ptr< ::scale_truck_control::lane_coef const> lane_coefConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::scale_truck_control::lane_coef_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::scale_truck_control::lane_coef_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::scale_truck_control::lane_coef_<ContainerAllocator1> & lhs, const ::scale_truck_control::lane_coef_<ContainerAllocator2> & rhs)
{
  return lhs.left == rhs.left &&
    lhs.right == rhs.right &&
    lhs.center == rhs.center;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::scale_truck_control::lane_coef_<ContainerAllocator1> & lhs, const ::scale_truck_control::lane_coef_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace scale_truck_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::scale_truck_control::lane_coef_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scale_truck_control::lane_coef_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scale_truck_control::lane_coef_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scale_truck_control::lane_coef_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scale_truck_control::lane_coef_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scale_truck_control::lane_coef_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::scale_truck_control::lane_coef_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ce20933ad34b813e016600c3706e1251";
  }

  static const char* value(const ::scale_truck_control::lane_coef_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xce20933ad34b813eULL;
  static const uint64_t static_value2 = 0x016600c3706e1251ULL;
};

template<class ContainerAllocator>
struct DataType< ::scale_truck_control::lane_coef_<ContainerAllocator> >
{
  static const char* value()
  {
    return "scale_truck_control/lane_coef";
  }

  static const char* value(const ::scale_truck_control::lane_coef_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::scale_truck_control::lane_coef_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lane left\n"
"lane right\n"
"lane center\n"
"\n"
"================================================================================\n"
"MSG: scale_truck_control/lane\n"
"float32 a\n"
"float32 b\n"
"float32 c\n"
;
  }

  static const char* value(const ::scale_truck_control::lane_coef_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::scale_truck_control::lane_coef_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.left);
      stream.next(m.right);
      stream.next(m.center);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct lane_coef_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::scale_truck_control::lane_coef_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::scale_truck_control::lane_coef_<ContainerAllocator>& v)
  {
    s << indent << "left: ";
    s << std::endl;
    Printer< ::scale_truck_control::lane_<ContainerAllocator> >::stream(s, indent + "  ", v.left);
    s << indent << "right: ";
    s << std::endl;
    Printer< ::scale_truck_control::lane_<ContainerAllocator> >::stream(s, indent + "  ", v.right);
    s << indent << "center: ";
    s << std::endl;
    Printer< ::scale_truck_control::lane_<ContainerAllocator> >::stream(s, indent + "  ", v.center);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCALE_TRUCK_CONTROL_MESSAGE_LANE_COEF_H
