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

class lrc2ocr {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.steer_angle = null;
      this.cur_dist = null;
      this.tar_dist = null;
      this.tar_vel = null;
      this.pred_vel = null;
      this.alpha = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
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
      if (initObj.hasOwnProperty('pred_vel')) {
        this.pred_vel = initObj.pred_vel
      }
      else {
        this.pred_vel = 0.0;
      }
      if (initObj.hasOwnProperty('alpha')) {
        this.alpha = initObj.alpha
      }
      else {
        this.alpha = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lrc2ocr
    // Serialize message field [index]
    bufferOffset = _serializer.int32(obj.index, buffer, bufferOffset);
    // Serialize message field [steer_angle]
    bufferOffset = _serializer.float32(obj.steer_angle, buffer, bufferOffset);
    // Serialize message field [cur_dist]
    bufferOffset = _serializer.float32(obj.cur_dist, buffer, bufferOffset);
    // Serialize message field [tar_dist]
    bufferOffset = _serializer.float32(obj.tar_dist, buffer, bufferOffset);
    // Serialize message field [tar_vel]
    bufferOffset = _serializer.float32(obj.tar_vel, buffer, bufferOffset);
    // Serialize message field [pred_vel]
    bufferOffset = _serializer.float32(obj.pred_vel, buffer, bufferOffset);
    // Serialize message field [alpha]
    bufferOffset = _serializer.bool(obj.alpha, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lrc2ocr
    let len;
    let data = new lrc2ocr(null);
    // Deserialize message field [index]
    data.index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steer_angle]
    data.steer_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cur_dist]
    data.cur_dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tar_dist]
    data.tar_dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tar_vel]
    data.tar_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pred_vel]
    data.pred_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alpha]
    data.alpha = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scale_truck_control_msgs/lrc2ocr';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4df4cc808fb5dda1620117e19736ec90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 index
    float32 steer_angle
    float32 cur_dist
    float32 tar_dist
    float32 tar_vel
    float32 pred_vel
    bool alpha
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lrc2ocr(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

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

    if (msg.pred_vel !== undefined) {
      resolved.pred_vel = msg.pred_vel;
    }
    else {
      resolved.pred_vel = 0.0
    }

    if (msg.alpha !== undefined) {
      resolved.alpha = msg.alpha;
    }
    else {
      resolved.alpha = false
    }

    return resolved;
    }
};

module.exports = lrc2ocr;
