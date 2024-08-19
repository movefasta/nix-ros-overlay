
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, eigen, eigen3-cmake-module, geometric-shapes, moveit-common, moveit-core, moveit-msgs, pluginlib, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-moveit-ros-occupancy-map-monitor";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_ros_occupancy_map_monitor/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "33112b2ced789125709e8ef8418fe10dc06d1c1f2cf2cd355f342a1b69535bd1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module geometric-shapes moveit-common moveit-core moveit-msgs pluginlib rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Components of MoveIt connecting to occupancy map";
    license = with lib.licenses; [ bsd3 ];
  };
}