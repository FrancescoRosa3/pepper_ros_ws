// Auto-generated. Do not edit!

// (in-package naoqi_bridge_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RunBehaviorGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.behavior = null;
    }
    else {
      if (initObj.hasOwnProperty('behavior')) {
        this.behavior = initObj.behavior
      }
      else {
        this.behavior = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RunBehaviorGoal
    // Serialize message field [behavior]
    bufferOffset = _serializer.string(obj.behavior, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RunBehaviorGoal
    let len;
    let data = new RunBehaviorGoal(null);
    // Deserialize message field [behavior]
    data.behavior = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.behavior.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'naoqi_bridge_msgs/RunBehaviorGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03729983c4b9be7a4f2b56846a7ccbdc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Goal [behavior]: name of the behavior to be executed
    # Result: none, will be set to aborted or preempted
    # Feedback: none as NaoQI API cannot be queried in this respect
    string behavior
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RunBehaviorGoal(null);
    if (msg.behavior !== undefined) {
      resolved.behavior = msg.behavior;
    }
    else {
      resolved.behavior = ''
    }

    return resolved;
    }
};

module.exports = RunBehaviorGoal;
