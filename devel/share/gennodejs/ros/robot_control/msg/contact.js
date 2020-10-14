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

class contact {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.contact1 = null;
      this.contact2 = null;
      this.contact3 = null;
      this.contact4 = null;
      this.contact5 = null;
    }
    else {
      if (initObj.hasOwnProperty('contact1')) {
        this.contact1 = initObj.contact1
      }
      else {
        this.contact1 = 0;
      }
      if (initObj.hasOwnProperty('contact2')) {
        this.contact2 = initObj.contact2
      }
      else {
        this.contact2 = 0;
      }
      if (initObj.hasOwnProperty('contact3')) {
        this.contact3 = initObj.contact3
      }
      else {
        this.contact3 = 0;
      }
      if (initObj.hasOwnProperty('contact4')) {
        this.contact4 = initObj.contact4
      }
      else {
        this.contact4 = 0;
      }
      if (initObj.hasOwnProperty('contact5')) {
        this.contact5 = initObj.contact5
      }
      else {
        this.contact5 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type contact
    // Serialize message field [contact1]
    bufferOffset = _serializer.int64(obj.contact1, buffer, bufferOffset);
    // Serialize message field [contact2]
    bufferOffset = _serializer.int64(obj.contact2, buffer, bufferOffset);
    // Serialize message field [contact3]
    bufferOffset = _serializer.int64(obj.contact3, buffer, bufferOffset);
    // Serialize message field [contact4]
    bufferOffset = _serializer.int64(obj.contact4, buffer, bufferOffset);
    // Serialize message field [contact5]
    bufferOffset = _serializer.int64(obj.contact5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type contact
    let len;
    let data = new contact(null);
    // Deserialize message field [contact1]
    data.contact1 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [contact2]
    data.contact2 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [contact3]
    data.contact3 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [contact4]
    data.contact4 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [contact5]
    data.contact5 = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_control/contact';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05a794a2e3c1dcb7a9232a6e3a8e219d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 contact1
    int64 contact2
    int64 contact3
    int64 contact4
    int64 contact5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new contact(null);
    if (msg.contact1 !== undefined) {
      resolved.contact1 = msg.contact1;
    }
    else {
      resolved.contact1 = 0
    }

    if (msg.contact2 !== undefined) {
      resolved.contact2 = msg.contact2;
    }
    else {
      resolved.contact2 = 0
    }

    if (msg.contact3 !== undefined) {
      resolved.contact3 = msg.contact3;
    }
    else {
      resolved.contact3 = 0
    }

    if (msg.contact4 !== undefined) {
      resolved.contact4 = msg.contact4;
    }
    else {
      resolved.contact4 = 0
    }

    if (msg.contact5 !== undefined) {
      resolved.contact5 = msg.contact5;
    }
    else {
      resolved.contact5 = 0
    }

    return resolved;
    }
};

module.exports = contact;
