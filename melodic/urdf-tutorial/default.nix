
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz, robot-state-publisher, roslaunch, joint-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-melodic-urdf-tutorial";
  version = "0.4.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/urdf_tutorial-release/archive/release/melodic/urdf_tutorial/0.4.0-0.tar.gz;
    sha256 = "92605e8f00f4f6ca12ef65eceb536dc41ba222e9881eaa733a28afc784f7bbbf";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ rviz joint-state-publisher xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a number of URDF tutorials.'';
    #license = lib.licenses.BSD;
  };
}