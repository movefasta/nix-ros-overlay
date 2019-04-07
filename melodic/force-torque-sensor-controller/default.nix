
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, realtime-tools, catkin, controller-interface, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-force-torque-sensor-controller";
  version = "0.15.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/force_torque_sensor_controller/0.15.0-0.tar.gz;
    sha256 = "5d2aede75983ca4789ab54a5b688500a58decd441e38582bc0d80999ee595786";
  };

  buildInputs = [ hardware-interface controller-interface pluginlib realtime-tools roscpp geometry-msgs ];
  propagatedBuildInputs = [ hardware-interface controller-interface pluginlib realtime-tools roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller to publish state of force-torque sensors'';
    #license = lib.licenses.BSD;
  };
}