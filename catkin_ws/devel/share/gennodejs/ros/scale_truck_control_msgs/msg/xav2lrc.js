// Auto-generated. Do not edit!

// (in-package scale_truck_control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class xav2lrc {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.steer_angle = null;
      this.cur_dist = null;
      this.tar_dist = null;
      this.tar_vel = null;
      this.beta = null;
      this.gamma = null;
    }
    else {
      if (initObj.hasOwnProperty('steer_angle')) {
        this.steer_angle = initObj.steer_angle
      }
      else {
        this.steer_angle = 0.0;
      }
      if (initObj.hasOwnProperty('cur_dist')) {
        this.cur_dist = initObj.cur_dist
      }
      else {
        this.cur_dist = 0.0;
      }
      if (initObj.hasOwnProperty('tar_dist')) {
        this.tar_dist = initObj.tar_dist
      }
      else {
        this.tar_dist = 0.0;
      }
      if (initObj.hasOwnProperty('tar_vel')) {
        this.tar_vel = initObj.tar_vel
      }
      else {
        this.tar_vel = 0.0;
      }
      if (initObj.hasOwnProperty('beta')) {
        this.beta = initObj.beta
      }
      else {
        this.beta = false;
      }
      if (initObj.hasOwnProperty('gamma')) {
        this.gamma = initObj.gamma
      }
      else {
        this.gamma = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type xav2lrc
    // Serialize message field [steer_angle]
    bufferOffset = _serializer.float32(obj.steer_angle, buffer, bufferOffset);
    // Serialize message field [cur_dist]
    bufferOffset = _serializer.float32(obj.cur_dist, buffer, bufferOffset);
    // Serialize message field [tar_dist]
    bufferOffset = _serializer.float32(obj.tar_dist, buffer, bufferOffset);
    // Serialize message field [tar_vel]
    bufferOffset = _serializer.float32(obj.tar_vel, buffer, bufferOffset);
    // Serialize message field [beta]
    bufferOffset = _serializer.bool(obj.beta, buffer, bufferOffset);
    // Serialize message field [gamma]
    bufferOffset = _serializer.bool(obj.gamma, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type xav2lrc
    let len;
    let data = new xav2lrc(null);
    // Deserialize message field [steer_angle]
    data.steer_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cur_dist]
    data.cur_dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tar_dist]
    data.tar_dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tar_vel]
    data.tar_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [beta]
    data.beta = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gamma]
    data.gamma = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scale_truck_control_msgs/xav2lrc';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67b2d2c9b9fe241a9e49be4c7e0c1a50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 steer_angle
    float32 cur_dist
    float32 tar_dist
    float32 tar_vel
    bool beta
    bool gamma
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new xav2lrc(null);
    if (msg.steer_angle !== undefined) {
      resolved.steer_angle = msg.steer_angle;
    }
    else {
      resolved.steer_angle = 0.0
    }

    if (msg.cur_dist !== undefined) {
      resolved.cur_dist = msg.cur_dist;
    }
    else {
      resolved.cur_dist = 0.0
    }

    if (msg.tar_dist !== undefined) {
      resolved.tar_dist = msg.tar_dist;
    }
    else {
      resolved.tar_dist = 0.0
    }

    if (msg.tar_vel !== undefined) {
      resolved.tar_vel = msg.tar_vel;
    }
    else {
      resolved.tar_vel = 0.0
    }

    if (msg.beta !== undefined) {
      resolved.beta = msg.beta;
    }
    else {
      resolved.beta = false
    }

    if (msg.gamma !== undefined) {
      resolved.gamma = msg.gamma;
    }
    else {
      resolved.gamma = false
    }

    return resolved;
    }
};

module.exports = xav2lrc;
