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
      // TODO(neycwang): Replace with the actual public URL.
      url: "https://gad-repo.appspot.com/static/UserMessagingPlatformSdkIos-2.0.0-SPM.zip",
      checksum: "f8b187e86baff20ba0d8a5fa260f6462fa88056ba876a962407f2bbbc3502f53"
    )
  ]
)
