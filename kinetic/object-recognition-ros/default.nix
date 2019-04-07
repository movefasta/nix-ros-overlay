
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, cmake-modules, boost, catkin, object-recognition-msgs, rostest, geometric-shapes, rostopic, visualization-msgs, actionlib, object-recognition-core, ecto, ecto-ros, ecto-image-pipeline }:
buildRosPackage {
  pname = "ros-kinetic-object-recognition-ros";
  version = "0.3.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/object_recognition_ros-release/archive/release/kinetic/object_recognition_ros/0.3.7-0.tar.gz;
    sha256 = "9da5485f0e80811676a5a09e80e4f5f1945f94f5e963774cf371b35825383d75";
  };

  buildInputs = [ cmake-modules pluginlib boost object-recognition-core geometric-shapes actionlib object-recognition-msgs ecto ecto-ros ecto-image-pipeline ];
  checkInputs = [ rostest visualization-msgs ];
  propagatedBuildInputs = [ pluginlib boost geometric-shapes actionlib rostopic object-recognition-msgs object-recognition-core ecto ecto-ros ecto-image-pipeline ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''object_recognition_core contains tools to launch several recognition pipelines, train objects, store models ...'';
    #license = lib.licenses.BSD;
  };
}