# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from obstacle_detector/SegmentObstacle.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class SegmentObstacle(genpy.Message):
  _md5sum = "37ecbf7e1053bae89f0770466b37c3c3"
  _type = "obstacle_detector/SegmentObstacle"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Point first_point  # First point of the segment [m]
geometry_msgs/Point last_point   # Last point of the segment [m]

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['first_point','last_point']
  _slot_types = ['geometry_msgs/Point','geometry_msgs/Point']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       first_point,last_point

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SegmentObstacle, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.first_point is None:
        self.first_point = geometry_msgs.msg.Point()
      if self.last_point is None:
        self.last_point = geometry_msgs.msg.Point()
    else:
      self.first_point = geometry_msgs.msg.Point()
      self.last_point = geometry_msgs.msg.Point()

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
      buff.write(_get_struct_6d().pack(_x.first_point.x, _x.first_point.y, _x.first_point.z, _x.last_point.x, _x.last_point.y, _x.last_point.z))
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
      if self.first_point is None:
        self.first_point = geometry_msgs.msg.Point()
      if self.last_point is None:
        self.last_point = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.first_point.x, _x.first_point.y, _x.first_point.z, _x.last_point.x, _x.last_point.y, _x.last_point.z,) = _get_struct_6d().unpack(str[start:end])
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
      buff.write(_get_struct_6d().pack(_x.first_point.x, _x.first_point.y, _x.first_point.z, _x.last_point.x, _x.last_point.y, _x.last_point.z))
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
      if self.first_point is None:
        self.first_point = geometry_msgs.msg.Point()
      if self.last_point is None:
        self.last_point = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.first_point.x, _x.first_point.y, _x.first_point.z, _x.last_point.x, _x.last_point.y, _x.last_point.z,) = _get_struct_6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
