
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot3-automatic-parking-vision, turtlebot3-panorama, catkin, turtlebot3-follow-filter, turtlebot3-automatic-parking, turtlebot3-follower }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-applications";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/kinetic/turtlebot3_applications/1.1.0-0.tar.gz;
    sha256 = "43705631a0e79d363b15d9d03aeac04c1d3d4609b49d70027edbd91329675aee";
  };

  propagatedBuildInputs = [ turtlebot3-automatic-parking turtlebot3-automatic-parking-vision turtlebot3-follower turtlebot3-panorama turtlebot3-follow-filter ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the turtlebot3 applications (meta package)'';
    #license = lib.licenses.Apache 2.0;
  };
}