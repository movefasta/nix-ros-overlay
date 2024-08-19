
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, asio, console-bridge, mavlink, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-libmavconn";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavros-release/archive/release/jazzy/libmavconn/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "873bde30f3727d8d553f8b65b5e4c6d828a4df6ef16d8a9d5794f53366972487";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python3Packages.empy ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ asio console-bridge mavlink ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "MAVLink communication library.
    This library provide unified connection handling classes
    and URL to connection object mapper.

    This library can be used in standalone programs.";
    license = with lib.licenses; [ gpl3Only lgpl3Only bsdOriginal ];
  };
}