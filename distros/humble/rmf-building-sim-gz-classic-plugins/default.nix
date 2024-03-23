
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-dev, gazebo-ros, menge-vendor, opencv, qt5, rclcpp, rmf-building-sim-common, rmf-fleet-msgs }:
buildRosPackage {
  pname = "ros-humble-rmf-building-sim-gz-classic-plugins";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/humble/rmf_building_sim_gz_classic_plugins/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "cbaeba1ab34cd9991ca0929d04918cd9b20ac61125994e25f801af4a48f53239";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-dev gazebo-ros menge-vendor opencv opencv.cxxdev qt5.qtbase rclcpp rmf-building-sim-common rmf-fleet-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo plugins so that buildings generated by rmf_building_map_tools can
    talk to the ROS 2-based systems in the rmf_traffic_ros2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
