// Auto-generated. Do not edit!

// (in-package scale_truck_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let lane = require('./lane.js');

//-----------------------------------------------------------

class lane_coef {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left = null;
      this.right = null;
      this.center = null;
    }
    else {
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = new lane();
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = new lane();
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new lane();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lane_coef
    // Serialize message field [left]
    bufferOffset = lane.serialize(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = lane.serialize(obj.right, buffer, bufferOffset);
    // Serialize message field [center]
    bufferOffset = lane.serialize(obj.center, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lane_coef
    let len;
    let data = new lane_coef(null);
    // Deserialize message field [left]
    data.left = lane.deserialize(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = lane.deserialize(buffer, bufferOffset);
    // Deserialize message field [center]
    data.center = lane.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scale_truck_control/lane_coef';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce20933ad34b813e016600c3706e1251';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    lane left
    lane right
    lane center
    
    ================================================================================
    MSG: scale_truck_control/lane
    float32 a
    float32 b
    float32 c
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lane_coef(null);
    if (msg.left !== undefined) {
      resolved.left = lane.Resolve(msg.left)
    }
    else {
      resolved.left = new lane()
    }

    if (msg.right !== undefined) {
      resolved.right = lane.Resolve(msg.right)
    }
    else {
      resolved.right = new lane()
    }

    if (msg.center !== undefined) {
      resolved.center = lane.Resolve(msg.center)
    }
    else {
      resolved.center = new lane()
    }

    return resolved;
    }
};

module.exports = lane_coef;
