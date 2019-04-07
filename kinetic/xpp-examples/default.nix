
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xpp-quadrotor, xpp-hyq, rosbag, catkin, xpp-vis, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-xpp-examples";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/kinetic/xpp_examples/1.0.10-0.tar.gz;
    sha256 = "760b96aa3a2d78cb1d0f07f15818213cf3b3c50439253b626afc3f39b5b40b7c";
  };

  buildInputs = [ xpp-quadrotor xpp-hyq rosbag roscpp xpp-vis ];
  propagatedBuildInputs = [ xpp-quadrotor xpp-hyq rosbag roscpp xpp-vis ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Examples of how to use the xpp framework.'';
    #license = lib.licenses.BSD;
  };
}