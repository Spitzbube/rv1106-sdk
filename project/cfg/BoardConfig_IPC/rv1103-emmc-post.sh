#!/bin/bash

cd $RK_PROJECT_PACKAGE_OEM_DIR/usr/lib/
rm face_mask_classify.data
rm face_quality_v2.data
rm object_detection_ipc_cls7.data
rm object_detection_ipc_cls7_v.data
rm object_detection_pfp_lite_896x512.data
mv object_detection_pfp_lite_512x288.data object_detection_pfp.data
cd -
