
"use strict";

let MemoryPairString = require('./MemoryPairString.js');
let PoseWithConfidenceStamped = require('./PoseWithConfidenceStamped.js');
let MemoryList = require('./MemoryList.js');
let StringArrayStamped = require('./StringArrayStamped.js');
let FloatArrayStamped = require('./FloatArrayStamped.js');
let FaceROI = require('./FaceROI.js');
let FloatStamped = require('./FloatStamped.js');
let EventStamped = require('./EventStamped.js');
let IntStamped = require('./IntStamped.js');
let StringStamped = require('./StringStamped.js');
let WordRecognized = require('./WordRecognized.js');
let BodyROI = require('./BodyROI.js');
let FadeRGB = require('./FadeRGB.js');
let Bumper = require('./Bumper.js');
let AudioBuffer = require('./AudioBuffer.js');
let HeadTouch = require('./HeadTouch.js');
let BoolStamped = require('./BoolStamped.js');
let MemoryPairFloat = require('./MemoryPairFloat.js');
let JointAnglesWithSpeed = require('./JointAnglesWithSpeed.js');
let MemoryPairInt = require('./MemoryPairInt.js');
let IntArrayStamped = require('./IntArrayStamped.js');
let HandTouch = require('./HandTouch.js');
let StatusChangeStamped = require('./StatusChangeStamped.js');
let RobotInfo = require('./RobotInfo.js');
let SoundLocated = require('./SoundLocated.js');
let JointAngleTrajectory = require('./JointAngleTrajectory.js');
let BodyPoseAction = require('./BodyPoseAction.js');
let FollowPathFeedback = require('./FollowPathFeedback.js');
let BlinkAction = require('./BlinkAction.js');
let FollowPathActionResult = require('./FollowPathActionResult.js');
let JointAnglesWithSpeedActionResult = require('./JointAnglesWithSpeedActionResult.js');
let JointAnglesWithSpeedActionFeedback = require('./JointAnglesWithSpeedActionFeedback.js');
let JointTrajectoryActionFeedback = require('./JointTrajectoryActionFeedback.js');
let SetSpeechVocabularyResult = require('./SetSpeechVocabularyResult.js');
let BodyPoseGoal = require('./BodyPoseGoal.js');
let BodyPoseActionResult = require('./BodyPoseActionResult.js');
let SetSpeechVocabularyActionResult = require('./SetSpeechVocabularyActionResult.js');
let SetSpeechVocabularyGoal = require('./SetSpeechVocabularyGoal.js');
let SetSpeechVocabularyActionGoal = require('./SetSpeechVocabularyActionGoal.js');
let SpeechWithFeedbackFeedback = require('./SpeechWithFeedbackFeedback.js');
let SetSpeechVocabularyFeedback = require('./SetSpeechVocabularyFeedback.js');
let BlinkGoal = require('./BlinkGoal.js');
let FollowPathGoal = require('./FollowPathGoal.js');
let JointAnglesWithSpeedActionGoal = require('./JointAnglesWithSpeedActionGoal.js');
let RunBehaviorActionResult = require('./RunBehaviorActionResult.js');
let FollowPathActionFeedback = require('./FollowPathActionFeedback.js');
let SetSpeechVocabularyActionFeedback = require('./SetSpeechVocabularyActionFeedback.js');
let FollowPathActionGoal = require('./FollowPathActionGoal.js');
let BodyPoseWithSpeedResult = require('./BodyPoseWithSpeedResult.js');
let JointTrajectoryActionResult = require('./JointTrajectoryActionResult.js');
let FollowPathAction = require('./FollowPathAction.js');
let BodyPoseActionGoal = require('./BodyPoseActionGoal.js');
let RunBehaviorGoal = require('./RunBehaviorGoal.js');
let SpeechWithFeedbackGoal = require('./SpeechWithFeedbackGoal.js');
let RunBehaviorActionFeedback = require('./RunBehaviorActionFeedback.js');
let BodyPoseWithSpeedAction = require('./BodyPoseWithSpeedAction.js');
let FollowPathResult = require('./FollowPathResult.js');
let BodyPoseActionFeedback = require('./BodyPoseActionFeedback.js');
let BodyPoseFeedback = require('./BodyPoseFeedback.js');
let BlinkResult = require('./BlinkResult.js');
let JointAnglesWithSpeedAction = require('./JointAnglesWithSpeedAction.js');
let BlinkActionResult = require('./BlinkActionResult.js');
let JointTrajectoryAction = require('./JointTrajectoryAction.js');
let BodyPoseWithSpeedFeedback = require('./BodyPoseWithSpeedFeedback.js');
let JointTrajectoryResult = require('./JointTrajectoryResult.js');
let BodyPoseWithSpeedActionGoal = require('./BodyPoseWithSpeedActionGoal.js');
let JointTrajectoryGoal = require('./JointTrajectoryGoal.js');
let RunBehaviorActionGoal = require('./RunBehaviorActionGoal.js');
let JointTrajectoryFeedback = require('./JointTrajectoryFeedback.js');
let JointAnglesWithSpeedGoal = require('./JointAnglesWithSpeedGoal.js');
let BodyPoseWithSpeedActionFeedback = require('./BodyPoseWithSpeedActionFeedback.js');
let SpeechWithFeedbackAction = require('./SpeechWithFeedbackAction.js');
let JointAnglesWithSpeedFeedback = require('./JointAnglesWithSpeedFeedback.js');
let BlinkFeedback = require('./BlinkFeedback.js');
let BodyPoseWithSpeedGoal = require('./BodyPoseWithSpeedGoal.js');
let SpeechWithFeedbackActionResult = require('./SpeechWithFeedbackActionResult.js');
let JointAnglesWithSpeedResult = require('./JointAnglesWithSpeedResult.js');
let SpeechWithFeedbackResult = require('./SpeechWithFeedbackResult.js');
let SetSpeechVocabularyAction = require('./SetSpeechVocabularyAction.js');
let SpeechWithFeedbackActionFeedback = require('./SpeechWithFeedbackActionFeedback.js');
let SpeechWithFeedbackActionGoal = require('./SpeechWithFeedbackActionGoal.js');
let JointTrajectoryActionGoal = require('./JointTrajectoryActionGoal.js');
let BodyPoseResult = require('./BodyPoseResult.js');
let BlinkActionFeedback = require('./BlinkActionFeedback.js');
let RunBehaviorFeedback = require('./RunBehaviorFeedback.js');
let BlinkActionGoal = require('./BlinkActionGoal.js');
let BodyPoseWithSpeedActionResult = require('./BodyPoseWithSpeedActionResult.js');
let RunBehaviorAction = require('./RunBehaviorAction.js');
let RunBehaviorResult = require('./RunBehaviorResult.js');

module.exports = {
  MemoryPairString: MemoryPairString,
  PoseWithConfidenceStamped: PoseWithConfidenceStamped,
  MemoryList: MemoryList,
  StringArrayStamped: StringArrayStamped,
  FloatArrayStamped: FloatArrayStamped,
  FaceROI: FaceROI,
  FloatStamped: FloatStamped,
  EventStamped: EventStamped,
  IntStamped: IntStamped,
  StringStamped: StringStamped,
  WordRecognized: WordRecognized,
  BodyROI: BodyROI,
  FadeRGB: FadeRGB,
  Bumper: Bumper,
  AudioBuffer: AudioBuffer,
  HeadTouch: HeadTouch,
  BoolStamped: BoolStamped,
  MemoryPairFloat: MemoryPairFloat,
  JointAnglesWithSpeed: JointAnglesWithSpeed,
  MemoryPairInt: MemoryPairInt,
  IntArrayStamped: IntArrayStamped,
  HandTouch: HandTouch,
  StatusChangeStamped: StatusChangeStamped,
  RobotInfo: RobotInfo,
  SoundLocated: SoundLocated,
  JointAngleTrajectory: JointAngleTrajectory,
  BodyPoseAction: BodyPoseAction,
  FollowPathFeedback: FollowPathFeedback,
  BlinkAction: BlinkAction,
  FollowPathActionResult: FollowPathActionResult,
  JointAnglesWithSpeedActionResult: JointAnglesWithSpeedActionResult,
  JointAnglesWithSpeedActionFeedback: JointAnglesWithSpeedActionFeedback,
  JointTrajectoryActionFeedback: JointTrajectoryActionFeedback,
  SetSpeechVocabularyResult: SetSpeechVocabularyResult,
  BodyPoseGoal: BodyPoseGoal,
  BodyPoseActionResult: BodyPoseActionResult,
  SetSpeechVocabularyActionResult: SetSpeechVocabularyActionResult,
  SetSpeechVocabularyGoal: SetSpeechVocabularyGoal,
  SetSpeechVocabularyActionGoal: SetSpeechVocabularyActionGoal,
  SpeechWithFeedbackFeedback: SpeechWithFeedbackFeedback,
  SetSpeechVocabularyFeedback: SetSpeechVocabularyFeedback,
  BlinkGoal: BlinkGoal,
  FollowPathGoal: FollowPathGoal,
  JointAnglesWithSpeedActionGoal: JointAnglesWithSpeedActionGoal,
  RunBehaviorActionResult: RunBehaviorActionResult,
  FollowPathActionFeedback: FollowPathActionFeedback,
  SetSpeechVocabularyActionFeedback: SetSpeechVocabularyActionFeedback,
  FollowPathActionGoal: FollowPathActionGoal,
  BodyPoseWithSpeedResult: BodyPoseWithSpeedResult,
  JointTrajectoryActionResult: JointTrajectoryActionResult,
  FollowPathAction: FollowPathAction,
  BodyPoseActionGoal: BodyPoseActionGoal,
  RunBehaviorGoal: RunBehaviorGoal,
  SpeechWithFeedbackGoal: SpeechWithFeedbackGoal,
  RunBehaviorActionFeedback: RunBehaviorActionFeedback,
  BodyPoseWithSpeedAction: BodyPoseWithSpeedAction,
  FollowPathResult: FollowPathResult,
  BodyPoseActionFeedback: BodyPoseActionFeedback,
  BodyPoseFeedback: BodyPoseFeedback,
  BlinkResult: BlinkResult,
  JointAnglesWithSpeedAction: JointAnglesWithSpeedAction,
  BlinkActionResult: BlinkActionResult,
  JointTrajectoryAction: JointTrajectoryAction,
  BodyPoseWithSpeedFeedback: BodyPoseWithSpeedFeedback,
  JointTrajectoryResult: JointTrajectoryResult,
  BodyPoseWithSpeedActionGoal: BodyPoseWithSpeedActionGoal,
  JointTrajectoryGoal: JointTrajectoryGoal,
  RunBehaviorActionGoal: RunBehaviorActionGoal,
  JointTrajectoryFeedback: JointTrajectoryFeedback,
  JointAnglesWithSpeedGoal: JointAnglesWithSpeedGoal,
  BodyPoseWithSpeedActionFeedback: BodyPoseWithSpeedActionFeedback,
  SpeechWithFeedbackAction: SpeechWithFeedbackAction,
  JointAnglesWithSpeedFeedback: JointAnglesWithSpeedFeedback,
  BlinkFeedback: BlinkFeedback,
  BodyPoseWithSpeedGoal: BodyPoseWithSpeedGoal,
  SpeechWithFeedbackActionResult: SpeechWithFeedbackActionResult,
  JointAnglesWithSpeedResult: JointAnglesWithSpeedResult,
  SpeechWithFeedbackResult: SpeechWithFeedbackResult,
  SetSpeechVocabularyAction: SetSpeechVocabularyAction,
  SpeechWithFeedbackActionFeedback: SpeechWithFeedbackActionFeedback,
  SpeechWithFeedbackActionGoal: SpeechWithFeedbackActionGoal,
  JointTrajectoryActionGoal: JointTrajectoryActionGoal,
  BodyPoseResult: BodyPoseResult,
  BlinkActionFeedback: BlinkActionFeedback,
  RunBehaviorFeedback: RunBehaviorFeedback,
  BlinkActionGoal: BlinkActionGoal,
  BodyPoseWithSpeedActionResult: BodyPoseWithSpeedActionResult,
  RunBehaviorAction: RunBehaviorAction,
  RunBehaviorResult: RunBehaviorResult,
};
