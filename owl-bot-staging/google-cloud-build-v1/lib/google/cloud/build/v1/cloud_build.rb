# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/build/v1/version"

require "google/cloud/build/v1/cloud_build/credentials"
require "google/cloud/build/v1/cloud_build/paths"
require "google/cloud/build/v1/cloud_build/operations"
require "google/cloud/build/v1/cloud_build/client"

module Google
  module Cloud
    module Build
      module V1
        ##
        # Creates and manages builds on Google Cloud Platform.
        #
        # The main concept used by this API is a `Build`, which describes the location
        # of the source to build, how to build the source, and where to store the
        # built artifacts, if any.
        #
        # A user can list previously-requested builds or get builds by their ID to
        # determine the status of the build.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/build/v1/cloud_build"
        #     client = ::Google::Cloud::Build::V1::CloudBuild::Client.new
        #
        module CloudBuild
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "cloud_build", "helpers.rb"
require "google/cloud/build/v1/cloud_build/helpers" if ::File.file? helper_path

