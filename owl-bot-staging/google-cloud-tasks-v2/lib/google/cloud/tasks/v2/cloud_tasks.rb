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

require "google/cloud/tasks/v2/version"

require "google/cloud/tasks/v2/cloud_tasks/credentials"
require "google/cloud/tasks/v2/cloud_tasks/paths"
require "google/cloud/tasks/v2/cloud_tasks/client"

module Google
  module Cloud
    module Tasks
      module V2
        ##
        # Cloud Tasks allows developers to manage the execution of background
        # work in their applications.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/tasks/v2/cloud_tasks"
        #     client = ::Google::Cloud::Tasks::V2::CloudTasks::Client.new
        #
        module CloudTasks
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "cloud_tasks", "helpers.rb"
require "google/cloud/tasks/v2/cloud_tasks/helpers" if ::File.file? helper_path

