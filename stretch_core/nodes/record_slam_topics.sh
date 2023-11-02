#! /usr/bin/env bash

topics=(
    # uncompressed RGB images @ 30fps are ~38 MB/s
    # /camera/color/camera_info
    # /camera/color/image_raw

    /camera/imu

    # uncompressed mono images @ 30fps are ~12.2 MB/s (each topic)
    /camera/infra1/camera_info
    /camera/infra1/image_rect_raw
    /camera/infra2/camera_info
    /camera/infra2/image_rect_raw

    /imu_mobile_base

    /odom

    /scan
    /scan_filtered

    /stretch/joint_states

    /tf
    /tf_static
)

rosbag record "${topics[@]}"
