#!/usr/bin/env bash

# Copyright © 2023 The Knative Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


set -o errexit
set -o nounset
set -o pipefail

BASE_DIR="$(dirname "${BASH_SOURCE[0]}")/.."

# This script updates README.md files in plugins sub-dirs.
# Note knative-sandbox/func redirects to knative/func, that may stop working.

RAW_URL="https://raw.githubusercontent.com"
ORG_SANDBOX="knative-sandbox"

for dir in "$BASE_DIR"/plugins/*/; do
  
  dir_name=$(basename "$dir")
  echo "Plugin dir: $dir_name"

  url="$RAW_URL/$ORG_SANDBOX/$dir_name/main/README.md"
  
  curl -s -L "$url" -o "$dir"/README.md

done

echo "Updated files:"
git status --porcelain
