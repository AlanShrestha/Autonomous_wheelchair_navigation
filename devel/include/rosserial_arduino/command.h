// Generated by gencpp from file rosserial_arduino/command.msg
// DO NOT EDIT!


#ifndef ROSSERIAL_ARDUINO_MESSAGE_COMMAND_H
#define ROSSERIAL_ARDUINO_MESSAGE_COMMAND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rosserial_arduino
{
template <class ContainerAllocator>
struct command_
{
  typedef command_<ContainerAllocator> Type;

  command_()
    : lwheel_vtarget(0.0)
    , rwheel_vtarget(0.0)
    , mode(0)  {
    }
  command_(const ContainerAllocator& _alloc)
    : lwheel_vtarget(0.0)
    , rwheel_vtarget(0.0)
    , mode(0)  {
    }



   typedef float _lwheel_vtarget_type;
  _lwheel_vtarget_type lwheel_vtarget;

   typedef float _rwheel_vtarget_type;
  _rwheel_vtarget_type rwheel_vtarget;

   typedef int16_t _mode_type;
  _mode_type mode;




  typedef boost::shared_ptr< ::rosserial_arduino::command_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosserial_arduino::command_<ContainerAllocator> const> ConstPtr;

}; // struct command_

typedef ::rosserial_arduino::command_<std::allocator<void> > command;

typedef boost::shared_ptr< ::rosserial_arduino::command > commandPtr;
typedef boost::shared_ptr< ::rosserial_arduino::command const> commandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosserial_arduino::command_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosserial_arduino::command_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rosserial_arduino

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'rosserial_arduino': ['/home/niraj/final_wheelchair_ws/src/rosserial/rosserial_arduino/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rosserial_arduino::command_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosserial_arduino::command_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosserial_arduino::command_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosserial_arduino::command_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosserial_arduino::command_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosserial_arduino::command_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosserial_arduino::command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e50c6157766eba7ad5bf8e5e1c37c251";
  }

  static const char* value(const ::rosserial_arduino::command_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe50c6157766eba7aULL;
  static const uint64_t static_value2 = 0xd5bf8e5e1c37c251ULL;
};

template<class ContainerAllocator>
struct DataType< ::rosserial_arduino::command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosserial_arduino/command";
  }

  static const char* value(const ::rosserial_arduino::command_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosserial_arduino::command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 lwheel_vtarget\n\
float32 rwheel_vtarget\n\
int16 mode\n\
";
  }

  static const char* value(const ::rosserial_arduino::command_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosserial_arduino::command_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.lwheel_vtarget);
      stream.next(m.rwheel_vtarget);
      stream.next(m.mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct command_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosserial_arduino::command_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosserial_arduino::command_<ContainerAllocator>& v)
  {
    s << indent << "lwheel_vtarget: ";
    Printer<float>::stream(s, indent + "  ", v.lwheel_vtarget);
    s << indent << "rwheel_vtarget: ";
    Printer<float>::stream(s, indent + "  ", v.rwheel_vtarget);
    s << indent << "mode: ";
    Printer<int16_t>::stream(s, indent + "  ", v.mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSSERIAL_ARDUINO_MESSAGE_COMMAND_H
