#!/bin/bash

# shellcheck disable=SC2086
rocker --x11 --devices /dev/dri --env ROS_DISTRO=humble --user --net host --privileged --name zenoh --volume aichallenge:/aichallenge vehicle:/vehicle -- "aichallenge-2025-dev-${USER}" zenoh-bridge-ros2dds -c /vehicle/zenoh.json5
