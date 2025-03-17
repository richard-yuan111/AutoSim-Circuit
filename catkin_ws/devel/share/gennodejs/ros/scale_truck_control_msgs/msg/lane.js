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

class lane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.c0 = null;
      this.c1 = null;
      this.c2 = null;
    }
    else {
      if (initObj.hasOwnProperty('c0')) {
        this.c0 = initObj.c0
      }
      else {
        this.c0 = 0.0;
      }
      if (initObj.hasOwnProperty('c1')) {
        this.c1 = initObj.c1
      }
      else {
        this.c1 = 0.0;
      }
      if (initObj.hasOwnProperty('c2')) {
        this.c2 = initObj.c2
      }
      else {
        this.c2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lane
    // Serialize message field [c0]
    bufferOffset = _serializer.float32(obj.c0, buffer, bufferOffset);
    // Serialize message field [c1]
    bufferOffset = _serializer.float32(obj.c1, buffer, bufferOffset);
    // Serialize message field [c2]
    bufferOffset = _serializer.float32(obj.c2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lane
    let len;
    let data = new lane(null);
    // Deserialize message field [c0]
    data.c0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [c1]
    data.c1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [c2]
    data.c2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scale_truck_control_msgs/lane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb37e2a7d1c9ea86f0485c19147d8e3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 c0  # a
    float32 c1  # b
    float32 c2  # c
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lane(null);
    if (msg.c0 !== undefined) {
      resolved.c0 = msg.c0;
    }
    else {
      resolved.c0 = 0.0
    }

    if (msg.c1 !== undefined) {
      resolved.c1 = msg.c1;
    }
    else {
      resolved.c1 = 0.0
    }

    if (msg.c2 !== undefined) {
      resolved.c2 = msg.c2;
    }
    else {
      resolved.c2 = 0.0
    }

    return resolved;
    }
};

module.exports = lane;
