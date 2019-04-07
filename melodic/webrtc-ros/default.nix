
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, async-web-server-cpp, webrtc, image-transport, catkin, cv-bridge, roscpp, nodelet }:
buildRosPackage {
  pname = "ros-melodic-webrtc-ros";
  version = "59.0.3";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/webrtc_ros-release/archive/release/melodic/webrtc_ros/59.0.3-0.tar.gz;
    sha256 = "2e24d39a6cf8c98c8f2b9229dd5a0fabd731cf495abf76547baf476d26b98f96";
  };

  buildInputs = [ cv-bridge async-web-server-cpp webrtc image-transport nodelet roscpp ];
  propagatedBuildInputs = [ cv-bridge async-web-server-cpp webrtc image-transport nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of ROS utilities for using WebRTC with ROS'';
    #license = lib.licenses.BSD;
  };
}