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

class PWMValues16 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pwm_values = null;
    }
    else {
      if (initObj.hasOwnProperty('pwm_values')) {
        this.pwm_values = initObj.pwm_values
      }
      else {
        this.pwm_values = new Array(16).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PWMValues16
    // Check that the constant length array field [pwm_values] has the right length
    if (obj.pwm_values.length !== 16) {
      throw new Error('Unable to serialize array field pwm_values - length must be 16')
    }
    // Serialize message field [pwm_values]
    bufferOffset = _arraySerializer.int16(obj.pwm_values, buffer, bufferOffset, 16);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PWMValues16
    let len;
    let data = new PWMValues16(null);
    // Deserialize message field [pwm_values]
    data.pwm_values = _arrayDeserializer.int16(buffer, bufferOffset, 16)
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'haptic_base/PWMValues16';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '21fd2457fe29da615fb66ec76d0b748c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16[16] pwm_values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PWMValues16(null);
    if (msg.pwm_values !== undefined) {
      resolved.pwm_values = msg.pwm_values;
    }
    else {
      resolved.pwm_values = new Array(16).fill(0)
    }

    return resolved;
    }
};

module.exports = PWMValues16;
