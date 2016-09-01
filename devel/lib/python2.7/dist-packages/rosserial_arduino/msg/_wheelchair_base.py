# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rosserial_arduino/wheelchair_base.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class wheelchair_base(genpy.Message):
  _md5sum = "5c5eb770ca01fbe2c81d102012013b03"
  _type = "rosserial_arduino/wheelchair_base"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 gyro
float32 compass
int16 lwheel
int16 rwheel
int16 usonic_1
int16 usonic_2
int16 usonic_3
int16 status

"""
  __slots__ = ['gyro','compass','lwheel','rwheel','usonic_1','usonic_2','usonic_3','status']
  _slot_types = ['float32','float32','int16','int16','int16','int16','int16','int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       gyro,compass,lwheel,rwheel,usonic_1,usonic_2,usonic_3,status

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(wheelchair_base, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.gyro is None:
        self.gyro = 0.
      if self.compass is None:
        self.compass = 0.
      if self.lwheel is None:
        self.lwheel = 0
      if self.rwheel is None:
        self.rwheel = 0
      if self.usonic_1 is None:
        self.usonic_1 = 0
      if self.usonic_2 is None:
        self.usonic_2 = 0
      if self.usonic_3 is None:
        self.usonic_3 = 0
      if self.status is None:
        self.status = 0
    else:
      self.gyro = 0.
      self.compass = 0.
      self.lwheel = 0
      self.rwheel = 0
      self.usonic_1 = 0
      self.usonic_2 = 0
      self.usonic_3 = 0
      self.status = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_2f6h.pack(_x.gyro, _x.compass, _x.lwheel, _x.rwheel, _x.usonic_1, _x.usonic_2, _x.usonic_3, _x.status))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 20
      (_x.gyro, _x.compass, _x.lwheel, _x.rwheel, _x.usonic_1, _x.usonic_2, _x.usonic_3, _x.status,) = _struct_2f6h.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_2f6h.pack(_x.gyro, _x.compass, _x.lwheel, _x.rwheel, _x.usonic_1, _x.usonic_2, _x.usonic_3, _x.status))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 20
      (_x.gyro, _x.compass, _x.lwheel, _x.rwheel, _x.usonic_1, _x.usonic_2, _x.usonic_3, _x.status,) = _struct_2f6h.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_2f6h = struct.Struct("<2f6h")