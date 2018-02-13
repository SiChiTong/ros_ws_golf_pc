# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from haptic_base/PutterValues.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class PutterValues(genpy.Message):
  _md5sum = "deae48c081a898661e9df48b433768e7"
  _type = "haptic_base/PutterValues"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int16[4] duty_values
float64[4] interval_values
"""
  __slots__ = ['duty_values','interval_values']
  _slot_types = ['int16[4]','float64[4]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       duty_values,interval_values

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PutterValues, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.duty_values is None:
        self.duty_values = [0] * 4
      if self.interval_values is None:
        self.interval_values = [0.] * 4
    else:
      self.duty_values = [0] * 4
      self.interval_values = [0.] * 4

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
      buff.write(_get_struct_4h().pack(*self.duty_values))
      buff.write(_get_struct_4d().pack(*self.interval_values))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 8
      self.duty_values = _get_struct_4h().unpack(str[start:end])
      start = end
      end += 32
      self.interval_values = _get_struct_4d().unpack(str[start:end])
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
      buff.write(self.duty_values.tostring())
      buff.write(self.interval_values.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 8
      self.duty_values = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=4)
      start = end
      end += 32
      self.interval_values = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=4)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_4h = None
def _get_struct_4h():
    global _struct_4h
    if _struct_4h is None:
        _struct_4h = struct.Struct("<4h")
    return _struct_4h
