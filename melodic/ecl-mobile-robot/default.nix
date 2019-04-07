
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-formatters, catkin, ecl-geometry, ecl-build, ecl-license, ecl-errors, ecl-math, ecl-linear-algebra }:
buildRosPackage {
  pname = "ros-melodic-ecl-mobile-robot";
  version = "0.60.3";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_navigation-release/archive/release/melodic/ecl_mobile_robot/0.60.3-0.tar.gz;
    sha256 = "b90849f51b703d6d5c3b246161ad8679bf14b8a27865ae175e9c945fe9edf31e";
  };

  buildInputs = [ ecl-license ecl-formatters ecl-errors ecl-math ecl-linear-algebra ecl-geometry ecl-build ];
  propagatedBuildInputs = [ ecl-license ecl-formatters ecl-errors ecl-math ecl-linear-algebra ecl-geometry ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains transforms (e.g. differential drive inverse kinematics)
    for the various types of mobile robot platforms.'';
    #license = lib.licenses.BSD;
  };
}