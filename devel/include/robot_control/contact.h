// Generated by gencpp from file robot_control/contact.msg
// DO NOT EDIT!


#ifndef ROBOT_CONTROL_MESSAGE_CONTACT_H
#define ROBOT_CONTROL_MESSAGE_CONTACT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_control
{
template <class ContainerAllocator>
struct contact_
{
  typedef contact_<ContainerAllocator> Type;

  contact_()
    : contact1(0)
    , contact2(0)
    , contact3(0)
    , contact4(0)
    , contact5(0)  {
    }
  contact_(const ContainerAllocator& _alloc)
    : contact1(0)
    , contact2(0)
    , contact3(0)
    , contact4(0)
    , contact5(0)  {
  (void)_alloc;
    }



   typedef int64_t _contact1_type;
  _contact1_type contact1;

   typedef int64_t _contact2_type;
  _contact2_type contact2;

   typedef int64_t _contact3_type;
  _contact3_type contact3;

   typedef int64_t _contact4_type;
  _contact4_type contact4;

   typedef int64_t _contact5_type;
  _contact5_type contact5;





  typedef boost::shared_ptr< ::robot_control::contact_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_control::contact_<ContainerAllocator> const> ConstPtr;

}; // struct contact_

typedef ::robot_control::contact_<std::allocator<void> > contact;

typedef boost::shared_ptr< ::robot_control::contact > contactPtr;
typedef boost::shared_ptr< ::robot_control::contact const> contactConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_control::contact_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_control::contact_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robot_control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'robot_control': ['/home/dimash/snake_robot/src/ros_snake_robot/robot_control/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robot_control::contact_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_control::contact_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_control::contact_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_control::contact_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_control::contact_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_control::contact_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_control::contact_<ContainerAllocator> >
{
  static const char* value()
  {
    return "05a794a2e3c1dcb7a9232a6e3a8e219d";
  }

  static const char* value(const ::robot_control::contact_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x05a794a2e3c1dcb7ULL;
  static const uint64_t static_value2 = 0xa9232a6e3a8e219dULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_control::contact_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_control/contact";
  }

  static const char* value(const ::robot_control::contact_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_control::contact_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 contact1\n\
int64 contact2\n\
int64 contact3\n\
int64 contact4\n\
int64 contact5\n\
";
  }

  static const char* value(const ::robot_control::contact_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_control::contact_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.contact1);
      stream.next(m.contact2);
      stream.next(m.contact3);
      stream.next(m.contact4);
      stream.next(m.contact5);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct contact_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_control::contact_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_control::contact_<ContainerAllocator>& v)
  {
    s << indent << "contact1: ";
    Printer<int64_t>::stream(s, indent + "  ", v.contact1);
    s << indent << "contact2: ";
    Printer<int64_t>::stream(s, indent + "  ", v.contact2);
    s << indent << "contact3: ";
    Printer<int64_t>::stream(s, indent + "  ", v.contact3);
    s << indent << "contact4: ";
    Printer<int64_t>::stream(s, indent + "  ", v.contact4);
    s << indent << "contact5: ";
    Printer<int64_t>::stream(s, indent + "  ", v.contact5);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_CONTROL_MESSAGE_CONTACT_H
