// Auto-generated. Do not edit!

// (in-package scale_truck_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class lrc2xav {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cur_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('cur_vel')) {
        this.cur_vel = initObj.cur_vel
      }
      else {
        this.cur_vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lrc2xav
    // Serialize message field [cur_vel]
    bufferOffset = _serializer.float32(obj.cur_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lrc2xav
    let len;
    let data = new lrc2xav(null);
    // Deserialize message field [cur_vel]
    data.cur_vel = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scale_truck_control/lrc2xav';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '647f32150b8255f1e2582744b0be8476';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 cur_vel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lrc2xav(null);
    if (msg.cur_vel !== undefined) {
      resolved.cur_vel = msg.cur_vel;
    }
    else {
      resolved.cur_vel = 0.0
    }

    return resolved;
    }
};

module.exports = lrc2xav;
