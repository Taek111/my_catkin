// Auto-generated. Do not edit!

// (in-package erp42.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class input {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Auto = null;
      this.Manual = null;
      this.ESTOP = null;
      this.Gear = null;
      this.Speed_mps = null;
      this.Speed_kph = null;
      this.Steer = null;
      this.Steer_degree = null;
      this.Brake = null;
      this.Alive = null;
    }
    else {
      if (initObj.hasOwnProperty('Auto')) {
        this.Auto = initObj.Auto
      }
      else {
        this.Auto = false;
      }
      if (initObj.hasOwnProperty('Manual')) {
        this.Manual = initObj.Manual
      }
      else {
        this.Manual = false;
      }
      if (initObj.hasOwnProperty('ESTOP')) {
        this.ESTOP = initObj.ESTOP
      }
      else {
        this.ESTOP = false;
      }
      if (initObj.hasOwnProperty('Gear')) {
        this.Gear = initObj.Gear
      }
      else {
        this.Gear = 0;
      }
      if (initObj.hasOwnProperty('Speed_mps')) {
        this.Speed_mps = initObj.Speed_mps
      }
      else {
        this.Speed_mps = 0.0;
      }
      if (initObj.hasOwnProperty('Speed_kph')) {
        this.Speed_kph = initObj.Speed_kph
      }
      else {
        this.Speed_kph = 0.0;
      }
      if (initObj.hasOwnProperty('Steer')) {
        this.Steer = initObj.Steer
      }
      else {
        this.Steer = 0;
      }
      if (initObj.hasOwnProperty('Steer_degree')) {
        this.Steer_degree = initObj.Steer_degree
      }
      else {
        this.Steer_degree = 0.0;
      }
      if (initObj.hasOwnProperty('Brake')) {
        this.Brake = initObj.Brake
      }
      else {
        this.Brake = 0;
      }
      if (initObj.hasOwnProperty('Alive')) {
        this.Alive = initObj.Alive
      }
      else {
        this.Alive = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type input
    // Serialize message field [Auto]
    bufferOffset = _serializer.bool(obj.Auto, buffer, bufferOffset);
    // Serialize message field [Manual]
    bufferOffset = _serializer.bool(obj.Manual, buffer, bufferOffset);
    // Serialize message field [ESTOP]
    bufferOffset = _serializer.bool(obj.ESTOP, buffer, bufferOffset);
    // Serialize message field [Gear]
    bufferOffset = _serializer.int32(obj.Gear, buffer, bufferOffset);
    // Serialize message field [Speed_mps]
    bufferOffset = _serializer.float64(obj.Speed_mps, buffer, bufferOffset);
    // Serialize message field [Speed_kph]
    bufferOffset = _serializer.float64(obj.Speed_kph, buffer, bufferOffset);
    // Serialize message field [Steer]
    bufferOffset = _serializer.int32(obj.Steer, buffer, bufferOffset);
    // Serialize message field [Steer_degree]
    bufferOffset = _serializer.float64(obj.Steer_degree, buffer, bufferOffset);
    // Serialize message field [Brake]
    bufferOffset = _serializer.int32(obj.Brake, buffer, bufferOffset);
    // Serialize message field [Alive]
    bufferOffset = _serializer.int32(obj.Alive, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type input
    let len;
    let data = new input(null);
    // Deserialize message field [Auto]
    data.Auto = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Manual]
    data.Manual = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ESTOP]
    data.ESTOP = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Gear]
    data.Gear = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Speed_mps]
    data.Speed_mps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Speed_kph]
    data.Speed_kph = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Steer]
    data.Steer = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Steer_degree]
    data.Steer_degree = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Brake]
    data.Brake = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Alive]
    data.Alive = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 43;
  }

  static datatype() {
    // Returns string type for a message object
    return 'erp42/input';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33d5d4e4e40e9f892c268f2f4f3ea626';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool Auto
    bool Manual
    bool ESTOP
    int32 Gear
    float64 Speed_mps
    float64 Speed_kph
    int32 Steer
    float64 Steer_degree
    int32  Brake
    int32 Alive
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new input(null);
    if (msg.Auto !== undefined) {
      resolved.Auto = msg.Auto;
    }
    else {
      resolved.Auto = false
    }

    if (msg.Manual !== undefined) {
      resolved.Manual = msg.Manual;
    }
    else {
      resolved.Manual = false
    }

    if (msg.ESTOP !== undefined) {
      resolved.ESTOP = msg.ESTOP;
    }
    else {
      resolved.ESTOP = false
    }

    if (msg.Gear !== undefined) {
      resolved.Gear = msg.Gear;
    }
    else {
      resolved.Gear = 0
    }

    if (msg.Speed_mps !== undefined) {
      resolved.Speed_mps = msg.Speed_mps;
    }
    else {
      resolved.Speed_mps = 0.0
    }

    if (msg.Speed_kph !== undefined) {
      resolved.Speed_kph = msg.Speed_kph;
    }
    else {
      resolved.Speed_kph = 0.0
    }

    if (msg.Steer !== undefined) {
      resolved.Steer = msg.Steer;
    }
    else {
      resolved.Steer = 0
    }

    if (msg.Steer_degree !== undefined) {
      resolved.Steer_degree = msg.Steer_degree;
    }
    else {
      resolved.Steer_degree = 0.0
    }

    if (msg.Brake !== undefined) {
      resolved.Brake = msg.Brake;
    }
    else {
      resolved.Brake = 0
    }

    if (msg.Alive !== undefined) {
      resolved.Alive = msg.Alive;
    }
    else {
      resolved.Alive = 0
    }

    return resolved;
    }
};

module.exports = input;
