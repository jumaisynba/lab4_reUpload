
"use strict";

let SetSpeed = require('./SetSpeed.js')
let SetComplianceSlope = require('./SetComplianceSlope.js')
let StopController = require('./StopController.js')
let SetCompliancePunch = require('./SetCompliancePunch.js')
let StartController = require('./StartController.js')
let RestartController = require('./RestartController.js')
let SetComplianceMargin = require('./SetComplianceMargin.js')
let SetTorqueLimit = require('./SetTorqueLimit.js')
let TorqueEnable = require('./TorqueEnable.js')

module.exports = {
  SetSpeed: SetSpeed,
  SetComplianceSlope: SetComplianceSlope,
  StopController: StopController,
  SetCompliancePunch: SetCompliancePunch,
  StartController: StartController,
  RestartController: RestartController,
  SetComplianceMargin: SetComplianceMargin,
  SetTorqueLimit: SetTorqueLimit,
  TorqueEnable: TorqueEnable,
};
