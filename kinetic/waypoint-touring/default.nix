
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, move-base, move-base-msgs, rospy, std-msgs, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-waypoint-touring";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/jihoonl/waypoint-release/archive/release/kinetic/waypoint_touring/0.0.1-0.tar.gz;
    sha256 = "0f2749729a69e79b2795f6bf6781468903d21e209ac17c931a73ea9f1eb04bb0";
  };

  buildInputs = [ rospy ];
  propagatedBuildInputs = [ move-base-msgs rospy std-msgs geometry-msgs visualization-msgs move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tours around the waypoints'';
    #license = lib.licenses.BSD;
  };
}