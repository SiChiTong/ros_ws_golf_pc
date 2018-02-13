// Auto-generated. Do not edit!

// (in-package haptic_base.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DSValues {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ds_dur = null;
      this.ds_angle = null;
      this.ds_entry_angle = null;
      this.ds_start_time = null;
    }
    else {
      if (initObj.hasOwnProperty('ds_dur')) {
        this.ds_dur = initObj.ds_dur
      }
      else {
        this.ds_dur = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('ds_angle')) {
        this.ds_angle = initObj.ds_angle
      }
      else {
        this.ds_angle = 0;
      }
      if (initObj.hasOwnProperty('ds_entry_angle')) {
        this.ds_entry_angle = initObj.ds_entry_angle
      }
      else {
        this.ds_entry_angle = 0;
      }
      if (initObj.hasOwnProperty('ds_start_time')) {
        this.ds_start_time = initObj.ds_start_time
      }
      else {
        this.ds_start_time = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DSValues
    // Serialize message field [ds_dur]
    bufferOffset = _serializer.duration(obj.ds_dur, buffer, bufferOffset);
    // Serialize message field [ds_angle]
    bufferOffset = _serializer.int16(obj.ds_angle, buffer, bufferOffset);
    // Serialize message field [ds_entry_angle]
    bufferOffset = _serializer.int16(obj.ds_entry_angle, buffer, bufferOffset);
    // Serialize message field [ds_start_time]
    bufferOffset = _serializer.time(obj.ds_start_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DSValues
    let len;
    let data = new DSValues(null);
    // Deserialize message field [ds_dur]
    data.ds_dur = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [ds_angle]
    data.ds_angle = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ds_entry_angle]
    data.ds_entry_angle = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ds_start_time]
    data.ds_start_time = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'haptic_base/DSValues';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6adcc043e40096395efe95f2a02fadce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    duration ds_dur
    int16 ds_angle
    int16 ds_entry_angle
    time ds_start_time
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DSValues(null);
    if (msg.ds_dur !== undefined) {
      resolved.ds_dur = msg.ds_dur;
    }
    else {
      resolved.ds_dur = {secs: 0, nsecs: 0}
    }

    if (msg.ds_angle !== undefined) {
      resolved.ds_angle = msg.ds_angle;
    }
    else {
      resolved.ds_angle = 0
    }

    if (msg.ds_entry_angle !== undefined) {
      resolved.ds_entry_angle = msg.ds_entry_angle;
    }
    else {
      resolved.ds_entry_angle = 0
    }

    if (msg.ds_start_time !== undefined) {
      resolved.ds_start_time = msg.ds_start_time;
    }
    else {
      resolved.ds_start_time = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = DSValues;
