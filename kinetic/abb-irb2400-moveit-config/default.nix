
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-visualization, moveit-ros-move-group, industrial-robot-simulator, catkin, joint-state-publisher, moveit-simple-controller-manager, robot-state-publisher, abb-irb2400-support, abb-irb2400-moveit-plugins, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-abb-irb2400-moveit-config";
  version = "1.3.0-r1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/abb-release/archive/release/kinetic/abb_irb2400_moveit_config/1.3.0-1.tar.gz;
    sha256 = "85bd87058e31b801f3fe09095d227ee7784899d6fb819e97c039d1b3a8ee37b7";
  };

  propagatedBuildInputs = [ abb-irb2400-moveit-plugins moveit-ros-move-group moveit-ros-visualization moveit-simple-controller-manager moveit-planners-ompl robot-state-publisher abb-irb2400-support joint-state-publisher xacro industrial-robot-simulator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      MoveIt package for the ABB IRB 2400.
    </p>
    <p>
      An automatically generated package with all the configuration and launch
      files for using the ABB IRB 2400 with the MoveIt Motion Planning
      Framework.
    </p>'';
    #license = lib.licenses.BSD;
  };
}