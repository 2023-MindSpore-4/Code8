#!/bin/bash
# Copyright 2022 Huawei Technologies Co., Ltd
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ============================================================================
if [ $# != 2 ]; then
  echo "Usage: bash run_standalone_train_gpu.sh [DEVICE_ID] [DATASET_PATH]"
  exit 1
fi

DEVICE_ID=$1
DATASET_PATH=$2
python ../train.py --device_target="GPU" --device_id=$DEVICE_ID --dataset_path=$DATASET_PATH > autoslim.log 2>&1 &
