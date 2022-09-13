// swift-tools-version:5.3

// Copyright 2021 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription

let package = Package(
  name: "GoogleUserMessagingPlatform",
  platforms: [.iOS(.v10)],
  products: [
    .library(
      name: "GoogleUserMessagingPlatform",
      targets: ["UserMessagingPlatform"]
    )
  ],
  targets: [
    .binaryTarget(
      name: "UserMessagingPlatform",
      url:
        "https://dl.google.com/googleadmobadssdk/2d67696a7be81922/googleusermessagingplatformios-spm-2.0.1.zip",
      checksum: "2d67696a7be819228fa28baaa5789e60a283c7aacc015373a449fc985529702a"
    )
  ]
)
