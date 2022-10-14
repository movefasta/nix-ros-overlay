
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint, cmake, doxygen, git, ignition }:
buildRosPackage {
  pname = "ros-humble-ignition-cmake2-vendor";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ignition_cmake2_vendor-release/archive/release/humble/ignition_cmake2_vendor/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "dcb1ce243048b84ce324cd1eacd6af6fc767d53068f2fa2fe472eb8e08cdbb8f";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-test cmake doxygen git ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ ignition.cmake2 ];
  nativeBuildInputs = [ ament-cmake-test cmake doxygen git ];

  meta = {
    description = ''This package provides the Ignition CMake 2.x library.'';
    license = with lib.licenses; [ asl20 ];
  };
}
