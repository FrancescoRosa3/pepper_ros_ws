// Auto-generated. Do not edit!

// (in-package detection_srv.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class DetectorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectorRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectorRequest
    let len;
    let data = new DetectorRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'detection_srv/DetectorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectorRequest(null);
    return resolved;
    }
};

class DetectorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.objects = null;
    }
    else {
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectorResponse
    // Serialize message field [objects]
    bufferOffset = _arraySerializer.string(obj.objects, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectorResponse
    let len;
    let data = new DetectorResponse(null);
    // Deserialize message field [objects]
    data.objects = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.objects.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'detection_srv/DetectorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39d6292ea712a13252ebdb5470ba0086';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] objects
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectorResponse(null);
    if (msg.objects !== undefined) {
      resolved.objects = msg.objects;
    }
    else {
      resolved.objects = []
    }

    return resolved;
    }
};

module.exports = {
  Request: DetectorRequest,
  Response: DetectorResponse,
  md5sum() { return '39d6292ea712a13252ebdb5470ba0086'; },
  datatype() { return 'detection_srv/Detector'; }
};
