
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cpp-common, roscpp-traits, catkin, pkg-config, rosgraph-msgs, message-generation, roslang, xmlrpcpp, roscpp-serialization, std-msgs, message-runtime, rostime }:
buildRosPackage {
  pname = "ros-melodic-roscpp";
  version = "1.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/roscpp/1.14.3-0.tar.gz;
    sha256 = "aafa1e50ff61f428b3cdf7158129b8b09b4bd7aae6aee553f6a5c8251eae1806";
  };

  buildInputs = [ rosconsole cpp-common roscpp-traits pkg-config rosgraph-msgs message-generation roslang xmlrpcpp roscpp-serialization std-msgs rostime ];
  propagatedBuildInputs = [ rosconsole cpp-common roscpp-traits rosgraph-msgs message-runtime xmlrpcpp roscpp-serialization std-msgs rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roscpp is a C++ implementation of ROS. It provides
    a <a href="http://www.ros.org/wiki/Client%20Libraries">client
    library</a> that enables C++ programmers to quickly interface with
    ROS <a href="http://ros.org/wiki/Topics">Topics</a>,
    <a href="http://ros.org/wiki/Services">Services</a>,
    and <a href="http://ros.org/wiki/Parameter Server">Parameters</a>.

    roscpp is the most widely used ROS client library and is designed to
    be the high-performance library for ROS.'';
    #license = lib.licenses.BSD;
  };
}