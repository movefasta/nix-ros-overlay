
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, python3Packages, pythonPackages, rclpy, rosbag2, rqt-bag, rqt-gui, rqt-gui-py, rqt-plot, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rqt-bag-plugins";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_bag-release/archive/release/jazzy/rqt_bag_plugins/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "9b44556cccc4e40e044b40d3a806980e4a2f71d671094d0ac352b9fe774c7fa4";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.pillow python3Packages.pycairo rclpy rosbag2 rqt-bag rqt-gui rqt-gui-py rqt-plot sensor-msgs std-msgs ];

  meta = {
    description = "rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.";
    license = with lib.licenses; [ bsdOriginal "HPND" ];
  };
}