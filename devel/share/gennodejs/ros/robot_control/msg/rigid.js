// Auto-generated. Do not edit!

// (in-package robot_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class rigid {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tact_1 = null;
      this.tact_2 = null;
      this.tact_3 = null;
      this.tact_4 = null;
      this.tact_5 = null;
      this.load_1 = null;
      this.load_2 = null;
      this.load_3 = null;
      this.load_4 = null;
      this.load_5 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tact_1')) {
        this.tact_1 = initObj.tact_1
      }
      else {
        this.tact_1 = 0.0;
      }
      if (initObj.hasOwnProperty('tact_2')) {
        this.tact_2 = initObj.tact_2
      }
      else {
        this.tact_2 = 0.0;
      }
      if (initObj.hasOwnProperty('tact_3')) {
        this.tact_3 = initObj.tact_3
      }
      else {
        this.tact_3 = 0.0;
      }
      if (initObj.hasOwnProperty('tact_4')) {
        this.tact_4 = initObj.tact_4
      }
      else {
        this.tact_4 = 0.0;
      }
      if (initObj.hasOwnProperty('tact_5')) {
        this.tact_5 = initObj.tact_5
      }
      else {
        this.tact_5 = 0.0;
      }
      if (initObj.hasOwnProperty('load_1')) {
        this.load_1 = initObj.load_1
      }
      else {
        this.load_1 = 0.0;
      }
      if (initObj.hasOwnProperty('load_2')) {
        this.load_2 = initObj.load_2
      }
      else {
        this.load_2 = 0.0;
      }
      if (initObj.hasOwnProperty('load_3')) {
        this.load_3 = initObj.load_3
      }
      else {
        this.load_3 = 0.0;
      }
      if (initObj.hasOwnProperty('load_4')) {
        this.load_4 = initObj.load_4
      }
      else {
        this.load_4 = 0.0;
      }
      if (initObj.hasOwnProperty('load_5')) {
        this.load_5 = initObj.load_5
      }
      else {
        this.load_5 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rigid
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tact_1]
    bufferOffset = _serializer.float64(obj.tact_1, buffer, bufferOffset);
    // Serialize message field [tact_2]
    bufferOffset = _serializer.float64(obj.tact_2, buffer, bufferOffset);
    // Serialize message field [tact_3]
    bufferOffset = _serializer.float64(obj.tact_3, buffer, bufferOffset);
    // Serialize message field [tact_4]
    bufferOffset = _serializer.float64(obj.tact_4, buffer, bufferOffset);
    // Serialize message field [tact_5]
    bufferOffset = _serializer.float64(obj.tact_5, buffer, bufferOffset);
    // Serialize message field [load_1]
    bufferOffset = _serializer.float64(obj.load_1, buffer, bufferOffset);
    // Serialize message field [load_2]
    bufferOffset = _serializer.float64(obj.load_2, buffer, bufferOffset);
    // Serialize message field [load_3]
    bufferOffset = _serializer.float64(obj.load_3, buffer, bufferOffset);
    // Serialize message field [load_4]
    bufferOffset = _serializer.float64(obj.load_4, buffer, bufferOffset);
    // Serialize message field [load_5]
    bufferOffset = _serializer.float64(obj.load_5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rigid
    let len;
    let data = new rigid(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tact_1]
    data.tact_1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tact_2]
    data.tact_2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tact_3]
    data.tact_3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tact_4]
    data.tact_4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tact_5]
    data.tact_5 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [load_1]
    data.load_1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [load_2]
    data.load_2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [load_3]
    data.load_3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [load_4]
    data.load_4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [load_5]
    data.load_5 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_control/rigid';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8bcb515782fec7970e7fb78e76cf6135';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 tact_1
    float64 tact_2
    float64 tact_3
    float64 tact_4
    float64 tact_5
    float64 load_1
    float64 load_2
    float64 load_3
    float64 load_4
    float64 load_5
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rigid(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tact_1 !== undefined) {
      resolved.tact_1 = msg.tact_1;
    }
    else {
      resolved.tact_1 = 0.0
    }

    if (msg.tact_2 !== undefined) {
      resolved.tact_2 = msg.tact_2;
    }
    else {
      resolved.tact_2 = 0.0
    }

    if (msg.tact_3 !== undefined) {
      resolved.tact_3 = msg.tact_3;
    }
    else {
      resolved.tact_3 = 0.0
    }

    if (msg.tact_4 !== undefined) {
      resolved.tact_4 = msg.tact_4;
    }
    else {
      resolved.tact_4 = 0.0
    }

    if (msg.tact_5 !== undefined) {
      resolved.tact_5 = msg.tact_5;
    }
    else {
      resolved.tact_5 = 0.0
    }

    if (msg.load_1 !== undefined) {
      resolved.load_1 = msg.load_1;
    }
    else {
      resolved.load_1 = 0.0
    }

    if (msg.load_2 !== undefined) {
      resolved.load_2 = msg.load_2;
    }
    else {
      resolved.load_2 = 0.0
    }

    if (msg.load_3 !== undefined) {
      resolved.load_3 = msg.load_3;
    }
    else {
      resolved.load_3 = 0.0
    }

    if (msg.load_4 !== undefined) {
      resolved.load_4 = msg.load_4;
    }
    else {
      resolved.load_4 = 0.0
    }

    if (msg.load_5 !== undefined) {
      resolved.load_5 = msg.load_5;
    }
    else {
      resolved.load_5 = 0.0
    }

    return resolved;
    }
};

module.exports = rigid;
