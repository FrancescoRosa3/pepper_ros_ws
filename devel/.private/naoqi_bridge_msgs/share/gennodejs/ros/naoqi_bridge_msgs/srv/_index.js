
"use strict";

let SetArmsEnabled = require('./SetArmsEnabled.js')
let GetString = require('./GetString.js')
let SetTransform = require('./SetTransform.js')
let GetBodyROI = require('./GetBodyROI.js')
let CmdVelService = require('./CmdVelService.js')
let TangentialSecurityDistance = require('./TangentialSecurityDistance.js')
let GetFacesROI = require('./GetFacesROI.js')
let GetRobotInfo = require('./GetRobotInfo.js')
let CmdPoseService = require('./CmdPoseService.js')
let SetString = require('./SetString.js')
let GetInstalledBehaviors = require('./GetInstalledBehaviors.js')
let OrthogonalSecurityDistance = require('./OrthogonalSecurityDistance.js')
let SetFloat = require('./SetFloat.js')
let GetFloat = require('./GetFloat.js')
let GetTruepose = require('./GetTruepose.js')

module.exports = {
  SetArmsEnabled: SetArmsEnabled,
  GetString: GetString,
  SetTransform: SetTransform,
  GetBodyROI: GetBodyROI,
  CmdVelService: CmdVelService,
  TangentialSecurityDistance: TangentialSecurityDistance,
  GetFacesROI: GetFacesROI,
  GetRobotInfo: GetRobotInfo,
  CmdPoseService: CmdPoseService,
  SetString: SetString,
  GetInstalledBehaviors: GetInstalledBehaviors,
  OrthogonalSecurityDistance: OrthogonalSecurityDistance,
  SetFloat: SetFloat,
  GetFloat: GetFloat,
  GetTruepose: GetTruepose,
};
