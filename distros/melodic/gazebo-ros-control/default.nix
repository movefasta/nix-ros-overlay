
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, controller-manager, gazebo-dev, gazebo-ros, hardware-interface, joint-limits-interface, pluginlib, roscpp, std-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-melodic-gazebo-ros-control";
  version = "2.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/gazebo_ros_control/2.8.6-1.tar.gz";
    name = "2.8.6-1.tar.gz";
    sha256 = "92e01882d9f3e1a454bc6b728d9699564759d37b52f0faf4fbe1a28ddd58ecb8";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-dev ];
  propagatedBuildInputs = [ angles control-toolbox controller-manager gazebo-ros hardware-interface joint-limits-interface pluginlib roscpp std-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}