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
        "https://dl.google.com/googleadmobadssdk/5ca3e33572cac088/googleusermessagingplatformios-spm-3.0.0.zip",
      checksum: "5ca3e33572cac088f5bfd1249712d172c20905932402b6fe60b8f544961d5ee1"
    ),
  ]
)
