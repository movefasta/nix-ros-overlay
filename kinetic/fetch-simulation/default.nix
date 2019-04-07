
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fetch-gazebo, catkin, fetch-gazebo-demo, fetchit-challenge }:
buildRosPackage {
  pname = "ros-kinetic-fetch-simulation";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/kinetic/fetch_simulation/0.8.2-0.tar.gz;
    sha256 = "2e4e52340c60769e344417ddf91985b0a1c023de99538398ef9dea33d10678c3";
  };

  propagatedBuildInputs = [ fetch-gazebo fetch-gazebo-demo fetchit-challenge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fetch Simulation, packages for working with Fetch and Freight in Gazebo'';
    #license = lib.licenses.BSD;
  };
}