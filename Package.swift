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
  platforms: [.iOS(.v12)],
  products: [
    .library(
      name: "GoogleUserMessagingPlatform",
      targets: ["UserMessagingPlatformTarget"]
    )
  ],
  targets: [
    .target(
      name: "UserMessagingPlatformTarget",
      dependencies: [
        .target(name: "UserMessagingPlatform")
      ],
      path: "UserMessagingPlatformTarget",
      linkerSettings: [
        .linkedFramework("WebKit")
      ]
    ),
    .binaryTarget(
      name: "UserMessagingPlatform",
      url:
        "https://dl.google.com/googleadmobadssdk/d19528eef3b87919/googleusermessagingplatformios-spm-2.3.0.zip",
      checksum: "d19528eef3b879194dbfc33e0fae7aaeac2e23dc419b82489c2caeea2d2a2e53"
    ),
  ]
)
