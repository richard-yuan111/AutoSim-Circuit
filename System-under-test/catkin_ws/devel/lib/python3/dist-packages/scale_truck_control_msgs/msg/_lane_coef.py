# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from scale_truck_control_msgs/lane_coef.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import scale_truck_control_msgs.msg

class lane_coef(genpy.Message):
  _md5sum = "7c6ff9784595502bdb14dc46b7d0651e"
  _type = "scale_truck_control_msgs/lane_coef"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """lane left
lane right
lane center

================================================================================
MSG: scale_truck_control_msgs/lane
float32 c0  # a
float32 c1  # b
float32 c2  # c
"""
  __slots__ = ['left','right','center']
  _slot_types = ['scale_truck_control_msgs/lane','scale_truck_control_msgs/lane','scale_truck_control_msgs/lane']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       left,right,center

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(lane_coef, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.left is None:
        self.left = scale_truck_control_msgs.msg.lane()
      if self.right is None:
        self.right = scale_truck_control_msgs.msg.lane()
      if self.center is None:
        self.center = scale_truck_control_msgs.msg.lane()
    else:
      self.left = scale_truck_control_msgs.msg.lane()
      self.right = scale_truck_control_msgs.msg.lane()
      self.center = scale_truck_control_msgs.msg.lane()

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
      buff.write(_get_struct_9f().pack(_x.left.c0, _x.left.c1, _x.left.c2, _x.right.c0, _x.right.c1, _x.right.c2, _x.center.c0, _x.center.c1, _x.center.c2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.left is None:
        self.left = scale_truck_control_msgs.msg.lane()
      if self.right is None:
        self.right = scale_truck_control_msgs.msg.lane()
      if self.center is None:
        self.center = scale_truck_control_msgs.msg.lane()
      end = 0
      _x = self
      start = end
      end += 36
      (_x.left.c0, _x.left.c1, _x.left.c2, _x.right.c0, _x.right.c1, _x.right.c2, _x.center.c0, _x.center.c1, _x.center.c2,) = _get_struct_9f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_9f().pack(_x.left.c0, _x.left.c1, _x.left.c2, _x.right.c0, _x.right.c1, _x.right.c2, _x.center.c0, _x.center.c1, _x.center.c2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.left is None:
        self.left = scale_truck_control_msgs.msg.lane()
      if self.right is None:
        self.right = scale_truck_control_msgs.msg.lane()
      if self.center is None:
        self.center = scale_truck_control_msgs.msg.lane()
      end = 0
      _x = self
      start = end
      end += 36
      (_x.left.c0, _x.left.c1, _x.left.c2, _x.right.c0, _x.right.c1, _x.right.c2, _x.center.c0, _x.center.c1, _x.center.c2,) = _get_struct_9f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_9f = None
def _get_struct_9f():
    global _struct_9f
    if _struct_9f is None:
        _struct_9f = struct.Struct("<9f")
    return _struct_9f
