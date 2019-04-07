
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-mobileye-560-660-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/mobileye_560_660_msgs/2.3.1-0.tar.gz;
    sha256 = "8b04f0cb7b653492bdffead10bf58a81273782d2c80128de999cad8a460c2f2e";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for the Mobileye 560/660'';
    #license = lib.licenses.MIT;
  };
}