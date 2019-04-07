
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, zeroconf-msgs, catkin, roscpp, avahi }:
buildRosPackage {
  pname = "ros-kinetic-zeroconf-avahi";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/zeroconf_avahi_suite-release/archive/release/kinetic/zeroconf_avahi/0.2.3-0.tar.gz;
    sha256 = "bf23ee2938a77f7ecbee57ea8f76a542ef82154d831aed726f8120b23f4b2a0b";
  };

  buildInputs = [ rosconsole zeroconf-msgs roscpp avahi ];
  propagatedBuildInputs = [ rosconsole zeroconf-msgs roscpp avahi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides zeroconf services on avahi for ros systems.
     This is a c++ implementation.'';
    #license = lib.licenses.BSD;
  };
}