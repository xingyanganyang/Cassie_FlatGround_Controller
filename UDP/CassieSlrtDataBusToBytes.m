%CASSIESLRTDATABUSTOBYTES Convert a CassieSlrtDataBus bus to a byte array.

% Copyright 2018 Agility Robotics
% Generated automatically by BusModule.generatePackingSystem

classdef CassieSlrtDataBusToBytes < ...
    matlab.System & ...
    matlab.system.mixin.Propagates %#codegen

  % PROTECTED METHODS =====================================================
  methods (Access = protected)
    % SYSTEM CLASS METHODS ================================================
    function setupImpl(~)
      %SETUPIMPL Initialize System object.
    end % setupImpl

    function bytes = stepImpl(~, bus)
      %STEPIMPL System output and state update equations.

      bytes = [...
        typecast(bus.outputs.pelvis.targetPc.etherCatStatus', 'uint8')'; ...
        typecast(bus.outputs.pelvis.targetPc.etherCatNotifications', 'uint8')'; ...
        typecast(single(bus.outputs.pelvis.targetPc.taskExecutionTime)', 'uint8')'; ...
        typecast(bus.outputs.pelvis.targetPc.overloadCounter', 'uint8')'; ...
        typecast(single(bus.outputs.pelvis.targetPc.cpuTemperature)', 'uint8')'; ...
        uint8(bus.outputs.pelvis.battery.dataGood); ...
        typecast(single(bus.outputs.pelvis.battery.stateOfCharge)', 'uint8')'; ...
        typecast(single(bus.outputs.pelvis.battery.voltage)', 'uint8')'; ...
        typecast(single(bus.outputs.pelvis.battery.current)', 'uint8')'; ...
        typecast(single(bus.outputs.pelvis.battery.temperature)', 'uint8')'; ...
        uint8(bus.outputs.pelvis.radio.radioReceiverSignalGood); ...
        uint8(bus.outputs.pelvis.radio.receiverMedullaSignalGood); ...
        typecast(single(bus.outputs.pelvis.radio.channel)', 'uint8')'; ...
        uint8(bus.outputs.pelvis.vectorNav.dataGood); ...
        typecast(bus.outputs.pelvis.vectorNav.vpeStatus', 'uint8')'; ...
        typecast(single(bus.outputs.pelvis.vectorNav.pressure)', 'uint8')'; ...
        typecast(single(bus.outputs.pelvis.vectorNav.temperature)', 'uint8')'; ...
        typecast(single(bus.outputs.pelvis.vectorNav.magneticField)', 'uint8')'; ...
        typecast(single(bus.outputs.pelvis.vectorNav.angularVelocity)', 'uint8')'; ...
        typecast(single(bus.outputs.pelvis.vectorNav.linearAcceleration)', 'uint8')'; ...
        typecast(single(bus.outputs.pelvis.vectorNav.orientation)', 'uint8')'; ...
        bus.outputs.pelvis.medullaCounter; ...
        typecast(bus.outputs.pelvis.medullaCpuLoad', 'uint8')'; ...
        uint8(bus.outputs.pelvis.bleederState); ...
        uint8(bus.outputs.pelvis.leftReedSwitchState); ...
        uint8(bus.outputs.pelvis.rightReedSwitchState); ...
        typecast(single(bus.outputs.pelvis.vtmTemperature)', 'uint8')'; ...
        typecast(bus.outputs.leftLeg.hipRollDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipRollDrive.position)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipRollDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipRollDrive.torque)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipRollDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipRollDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipRollDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipRollDrive.gearRatio)', 'uint8')'; ...
        typecast(bus.outputs.leftLeg.hipYawDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipYawDrive.position)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipYawDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipYawDrive.torque)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipYawDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipYawDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipYawDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipYawDrive.gearRatio)', 'uint8')'; ...
        typecast(bus.outputs.leftLeg.hipPitchDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipPitchDrive.position)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipPitchDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipPitchDrive.torque)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipPitchDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipPitchDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipPitchDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.hipPitchDrive.gearRatio)', 'uint8')'; ...
        typecast(bus.outputs.leftLeg.kneeDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.kneeDrive.position)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.kneeDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.kneeDrive.torque)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.kneeDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.kneeDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.kneeDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.kneeDrive.gearRatio)', 'uint8')'; ...
        typecast(bus.outputs.leftLeg.footDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.footDrive.position)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.footDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.footDrive.torque)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.footDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.footDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.footDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.footDrive.gearRatio)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.shinJoint.position)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.shinJoint.velocity)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.tarsusJoint.position)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.tarsusJoint.velocity)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.footJoint.position)', 'uint8')'; ...
        typecast(single(bus.outputs.leftLeg.footJoint.velocity)', 'uint8')'; ...
        bus.outputs.leftLeg.medullaCounter; ...
        typecast(bus.outputs.leftLeg.medullaCpuLoad', 'uint8')'; ...
        uint8(bus.outputs.leftLeg.reedSwitchState); ...
        typecast(bus.outputs.rightLeg.hipRollDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipRollDrive.position)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipRollDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipRollDrive.torque)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipRollDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipRollDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipRollDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipRollDrive.gearRatio)', 'uint8')'; ...
        typecast(bus.outputs.rightLeg.hipYawDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipYawDrive.position)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipYawDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipYawDrive.torque)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipYawDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipYawDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipYawDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipYawDrive.gearRatio)', 'uint8')'; ...
        typecast(bus.outputs.rightLeg.hipPitchDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipPitchDrive.position)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipPitchDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipPitchDrive.torque)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipPitchDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipPitchDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipPitchDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.hipPitchDrive.gearRatio)', 'uint8')'; ...
        typecast(bus.outputs.rightLeg.kneeDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.kneeDrive.position)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.kneeDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.kneeDrive.torque)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.kneeDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.kneeDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.kneeDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.kneeDrive.gearRatio)', 'uint8')'; ...
        typecast(bus.outputs.rightLeg.footDrive.statusWord', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.footDrive.position)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.footDrive.velocity)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.footDrive.torque)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.footDrive.driveTemperature)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.footDrive.dcLinkVoltage)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.footDrive.torqueLimit)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.footDrive.gearRatio)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.shinJoint.position)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.shinJoint.velocity)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.tarsusJoint.position)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.tarsusJoint.velocity)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.footJoint.position)', 'uint8')'; ...
        typecast(single(bus.outputs.rightLeg.footJoint.velocity)', 'uint8')'; ...
        bus.outputs.rightLeg.medullaCounter; ...
        typecast(bus.outputs.rightLeg.medullaCpuLoad', 'uint8')'; ...
        uint8(bus.outputs.rightLeg.reedSwitchState); ...
        uint8(bus.outputs.isCalibrated); ...
        typecast(int16(bus.outputs.messages)', 'uint8')'; ...
        typecast(single(bus.t)', 'uint8')'];
    end % stepImpl

    function resetImpl(~)
      %RESETIMPL Reset System object states.
    end % resetImpl

    function name_1 = getInputNamesImpl(~)
      %GETINPUTNAMESIMPL Return input port names for System block.
      name_1 = '';
    end % getInputNamesImpl

    function name_1 = getOutputNamesImpl(~)
      %GETOUTPUTNAMESIMPL Return output port names for System block.
      name_1 = '';
    end % getOutputNamesImpl

    % PROPAGATES CLASS METHODS ============================================
    function sz_1 = getOutputSizeImpl(~)
      %GETOUTPUTSIZEIMPL Get sizes of output ports.
      sz_1 = [701, 1];
    end % getOutputSizeImpl

    function dt_1 = getOutputDataTypeImpl(~)
      %GETOUTPUTDATATYPEIMPL Get data types of output ports.
      dt_1 = 'uint8';
    end % getOutputDataTypeImpl

    function cp_1 = isOutputComplexImpl(~)
      %ISOUTPUTCOMPLEXIMPL Complexity of output ports.
      cp_1 = false;
    end % isOutputComplexImpl

    function flag_1 = isOutputFixedSizeImpl(~)
      %ISOUTPUTFIXEDSIZEIMPL Fixed-size or variable-size output ports.
      flag_1 = true;
    end % isOutputFixedSizeImpl
  end % methods
end % classdef