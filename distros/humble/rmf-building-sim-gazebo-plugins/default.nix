
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-ros, menge-vendor, opencv, qt5, rclcpp, rmf-building-sim-common, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-humble-rmf-building-sim-gazebo-plugins";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/humble/rmf_building_sim_gazebo_plugins/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "cfa95dc9d8534a6b2380bbf5214d6aa26e26d23311d9e62e1767bc5075698f49";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-dev gazebo-ros menge-vendor opencv qt5.qtbase rclcpp rmf-building-sim-common rmf-fleet-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Gazebo plugins so that buildings generated by rmf_building_map_tools can
    talk to the ROS 2-based systems in the rmf_core package.'';
    license = with lib.licenses; [ asl20 ];
  };
}