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

class PutterValues {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.duty_values = null;
      this.interval_values = null;
    }
    else {
      if (initObj.hasOwnProperty('duty_values')) {
        this.duty_values = initObj.duty_values
      }
      else {
        this.duty_values = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('interval_values')) {
        this.interval_values = initObj.interval_values
      }
      else {
        this.interval_values = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PutterValues
    // Check that the constant length array field [duty_values] has the right length
    if (obj.duty_values.length !== 4) {
      throw new Error('Unable to serialize array field duty_values - length must be 4')
    }
    // Serialize message field [duty_values]
    bufferOffset = _arraySerializer.int16(obj.duty_values, buffer, bufferOffset, 4);
    // Check that the constant length array field [interval_values] has the right length
    if (obj.interval_values.length !== 4) {
      throw new Error('Unable to serialize array field interval_values - length must be 4')
    }
    // Serialize message field [interval_values]
    bufferOffset = _arraySerializer.float64(obj.interval_values, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PutterValues
    let len;
    let data = new PutterValues(null);
    // Deserialize message field [duty_values]
    data.duty_values = _arrayDeserializer.int16(buffer, bufferOffset, 4)
    // Deserialize message field [interval_values]
    data.interval_values = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'haptic_base/PutterValues';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'deae48c081a898661e9df48b433768e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16[4] duty_values
    float64[4] interval_values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PutterValues(null);
    if (msg.duty_values !== undefined) {
      resolved.duty_values = msg.duty_values;
    }
    else {
      resolved.duty_values = new Array(4).fill(0)
    }

    if (msg.interval_values !== undefined) {
      resolved.interval_values = msg.interval_values;
    }
    else {
      resolved.interval_values = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = PutterValues;
