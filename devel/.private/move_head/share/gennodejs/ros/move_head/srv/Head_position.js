// Auto-generated. Do not edit!

// (in-package move_head.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class Head_positionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.HeadYaw = null;
      this.HeadPitch = null;
    }
    else {
      if (initObj.hasOwnProperty('HeadYaw')) {
        this.HeadYaw = initObj.HeadYaw
      }
      else {
        this.HeadYaw = 0.0;
      }
      if (initObj.hasOwnProperty('HeadPitch')) {
        this.HeadPitch = initObj.HeadPitch
      }
      else {
        this.HeadPitch = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Head_positionRequest
    // Serialize message field [HeadYaw]
    bufferOffset = _serializer.float64(obj.HeadYaw, buffer, bufferOffset);
    // Serialize message field [HeadPitch]
    bufferOffset = _serializer.float64(obj.HeadPitch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Head_positionRequest
    let len;
    let data = new Head_positionRequest(null);
    // Deserialize message field [HeadYaw]
    data.HeadYaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [HeadPitch]
    data.HeadPitch = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'move_head/Head_positionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09353ab7b162a9d3424b1b078b9907f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # yaw desired and pitch desired rotation 
    float64 HeadYaw
    float64 HeadPitch
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Head_positionRequest(null);
    if (msg.HeadYaw !== undefined) {
      resolved.HeadYaw = msg.HeadYaw;
    }
    else {
      resolved.HeadYaw = 0.0
    }

    if (msg.HeadPitch !== undefined) {
      resolved.HeadPitch = msg.HeadPitch;
    }
    else {
      resolved.HeadPitch = 0.0
    }

    return resolved;
    }
};

class Head_positionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Head_positionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Head_positionResponse
    let len;
    let data = new Head_positionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'move_head/Head_positionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # movement result
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Head_positionResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: Head_positionRequest,
  Response: Head_positionResponse,
  md5sum() { return 'c55b3b2c584945fab7834a7633541610'; },
  datatype() { return 'move_head/Head_position'; }
};
