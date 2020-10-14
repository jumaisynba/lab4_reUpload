// Auto-generated. Do not edit!

// (in-package robot_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class tactile {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.first = null;
      this.second = null;
      this.third = null;
      this.fourth = null;
      this.fifth = null;
    }
    else {
      if (initObj.hasOwnProperty('first')) {
        this.first = initObj.first
      }
      else {
        this.first = 0.0;
      }
      if (initObj.hasOwnProperty('second')) {
        this.second = initObj.second
      }
      else {
        this.second = 0.0;
      }
      if (initObj.hasOwnProperty('third')) {
        this.third = initObj.third
      }
      else {
        this.third = 0.0;
      }
      if (initObj.hasOwnProperty('fourth')) {
        this.fourth = initObj.fourth
      }
      else {
        this.fourth = 0.0;
      }
      if (initObj.hasOwnProperty('fifth')) {
        this.fifth = initObj.fifth
      }
      else {
        this.fifth = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tactile
    // Serialize message field [first]
    bufferOffset = _serializer.float64(obj.first, buffer, bufferOffset);
    // Serialize message field [second]
    bufferOffset = _serializer.float64(obj.second, buffer, bufferOffset);
    // Serialize message field [third]
    bufferOffset = _serializer.float64(obj.third, buffer, bufferOffset);
    // Serialize message field [fourth]
    bufferOffset = _serializer.float64(obj.fourth, buffer, bufferOffset);
    // Serialize message field [fifth]
    bufferOffset = _serializer.float64(obj.fifth, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tactile
    let len;
    let data = new tactile(null);
    // Deserialize message field [first]
    data.first = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [second]
    data.second = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [third]
    data.third = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fourth]
    data.fourth = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fifth]
    data.fifth = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_control/tactile';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b92696e452fb86182cb1f3c9a1668690';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 first
    float64 second
    float64 third
    float64 fourth
    float64 fifth
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new tactile(null);
    if (msg.first !== undefined) {
      resolved.first = msg.first;
    }
    else {
      resolved.first = 0.0
    }

    if (msg.second !== undefined) {
      resolved.second = msg.second;
    }
    else {
      resolved.second = 0.0
    }

    if (msg.third !== undefined) {
      resolved.third = msg.third;
    }
    else {
      resolved.third = 0.0
    }

    if (msg.fourth !== undefined) {
      resolved.fourth = msg.fourth;
    }
    else {
      resolved.fourth = 0.0
    }

    if (msg.fifth !== undefined) {
      resolved.fifth = msg.fifth;
    }
    else {
      resolved.fifth = 0.0
    }

    return resolved;
    }
};

module.exports = tactile;
