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

class ocr2lrc {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cur_vel = null;
      this.u_k = null;
    }
    else {
      if (initObj.hasOwnProperty('cur_vel')) {
        this.cur_vel = initObj.cur_vel
      }
      else {
        this.cur_vel = 0.0;
      }
      if (initObj.hasOwnProperty('u_k')) {
        this.u_k = initObj.u_k
      }
      else {
        this.u_k = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ocr2lrc
    // Serialize message field [cur_vel]
    bufferOffset = _serializer.float32(obj.cur_vel, buffer, bufferOffset);
    // Serialize message field [u_k]
    bufferOffset = _serializer.float32(obj.u_k, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ocr2lrc
    let len;
    let data = new ocr2lrc(null);
    // Deserialize message field [cur_vel]
    data.cur_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u_k]
    data.u_k = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scale_truck_control/ocr2lrc';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5547173125610f649bee41045fabb0de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 cur_vel
    float32 u_k
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ocr2lrc(null);
    if (msg.cur_vel !== undefined) {
      resolved.cur_vel = msg.cur_vel;
    }
    else {
      resolved.cur_vel = 0.0
    }

    if (msg.u_k !== undefined) {
      resolved.u_k = msg.u_k;
    }
    else {
      resolved.u_k = 0.0
    }

    return resolved;
    }
};

module.exports = ocr2lrc;
