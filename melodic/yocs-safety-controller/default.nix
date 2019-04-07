
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, sensor-msgs, catkin, ecl-threads, nodelet, std-msgs, roscpp, geometry-msgs, yocs-controllers }:
buildRosPackage {
  pname = "ros-melodic-yocs-safety-controller";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_safety_controller/0.8.2-0.tar.gz;
    sha256 = "83f0799143de08c0f6c8aa93c665fbac01d8a7dc3e8e04752bdc59e042244557";
  };

  buildInputs = [ pluginlib nodelet geometry-msgs std-msgs sensor-msgs roscpp yocs-controllers ecl-threads ];
  propagatedBuildInputs = [ pluginlib nodelet geometry-msgs std-msgs sensor-msgs roscpp yocs-controllers ecl-threads ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A controller ensuring the safe operation of your robot.

    The SafetyController listens to ranger readings in order to stop (and move back), if obstacles get to close.

    This controller can be enabled/disabled.'';
    #license = lib.licenses.BSD;
  };
}