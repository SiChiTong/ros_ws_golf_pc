// Auto-generated. Do not edit!

// (in-package haptic_golf.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LSM9DS_raw {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.accelData = null;
      this.magData = null;
      this.gyroData = null;
      this.orientation = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('accelData')) {
        this.accelData = initObj.accelData
      }
      else {
        this.accelData = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('magData')) {
        this.magData = initObj.magData
      }
      else {
        this.magData = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('gyroData')) {
        this.gyroData = initObj.gyroData
      }
      else {
        this.gyroData = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LSM9DS_raw
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [accelData] has the right length
    if (obj.accelData.length !== 3) {
      throw new Error('Unable to serialize array field accelData - length must be 3')
    }
    // Serialize message field [accelData]
    bufferOffset = _arraySerializer.float32(obj.accelData, buffer, bufferOffset, 3);
    // Check that the constant length array field [magData] has the right length
    if (obj.magData.length !== 3) {
      throw new Error('Unable to serialize array field magData - length must be 3')
    }
    // Serialize message field [magData]
    bufferOffset = _arraySerializer.float32(obj.magData, buffer, bufferOffset, 3);
    // Check that the constant length array field [gyroData] has the right length
    if (obj.gyroData.length !== 3) {
      throw new Error('Unable to serialize array field gyroData - length must be 3')
    }
    // Serialize message field [gyroData]
    bufferOffset = _arraySerializer.float32(obj.gyroData, buffer, bufferOffset, 3);
    // Check that the constant length array field [orientation] has the right length
    if (obj.orientation.length !== 4) {
      throw new Error('Unable to serialize array field orientation - length must be 4')
    }
    // Serialize message field [orientation]
    bufferOffset = _arraySerializer.float32(obj.orientation, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LSM9DS_raw
    let len;
    let data = new LSM9DS_raw(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [accelData]
    data.accelData = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [magData]
    data.magData = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [gyroData]
    data.gyroData = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [orientation]
    data.orientation = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'haptic_golf/LSM9DS_raw';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8bdef954b5990975e7acefa1ca27db1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32[3] accelData
    float32[3] magData
    float32[3] gyroData
    float32[4] orientation
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LSM9DS_raw(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.accelData !== undefined) {
      resolved.accelData = msg.accelData;
    }
    else {
      resolved.accelData = new Array(3).fill(0)
    }

    if (msg.magData !== undefined) {
      resolved.magData = msg.magData;
    }
    else {
      resolved.magData = new Array(3).fill(0)
    }

    if (msg.gyroData !== undefined) {
      resolved.gyroData = msg.gyroData;
    }
    else {
      resolved.gyroData = new Array(3).fill(0)
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = LSM9DS_raw;
