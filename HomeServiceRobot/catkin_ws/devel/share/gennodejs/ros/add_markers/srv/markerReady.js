// Auto-generated. Do not edit!

// (in-package add_markers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class markerReadyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ready = null;
    }
    else {
      if (initObj.hasOwnProperty('ready')) {
        this.ready = initObj.ready
      }
      else {
        this.ready = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type markerReadyRequest
    // Serialize message field [ready]
    bufferOffset = _serializer.int64(obj.ready, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type markerReadyRequest
    let len;
    let data = new markerReadyRequest(null);
    // Deserialize message field [ready]
    data.ready = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'add_markers/markerReadyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd74ca1ffb31881ab824e1d61313924a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 ready
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new markerReadyRequest(null);
    if (msg.ready !== undefined) {
      resolved.ready = msg.ready;
    }
    else {
      resolved.ready = 0
    }

    return resolved;
    }
};

class markerReadyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('msg_feedback')) {
        this.msg_feedback = initObj.msg_feedback
      }
      else {
        this.msg_feedback = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type markerReadyResponse
    // Serialize message field [msg_feedback]
    bufferOffset = _serializer.string(obj.msg_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type markerReadyResponse
    let len;
    let data = new markerReadyResponse(null);
    // Deserialize message field [msg_feedback]
    data.msg_feedback = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.msg_feedback.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'add_markers/markerReadyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2897a4bc4d7ca330e430870cfdee7314';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string msg_feedback
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new markerReadyResponse(null);
    if (msg.msg_feedback !== undefined) {
      resolved.msg_feedback = msg.msg_feedback;
    }
    else {
      resolved.msg_feedback = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: markerReadyRequest,
  Response: markerReadyResponse,
  md5sum() { return 'fdff9e8065741781036b62dff308d310'; },
  datatype() { return 'add_markers/markerReady'; }
};
