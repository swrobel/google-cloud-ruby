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

require "google/cloud/monitoring/v3/version"

require "google/cloud/monitoring/v3/uptime_check_service/credentials"
require "google/cloud/monitoring/v3/uptime_check_service/paths"
require "google/cloud/monitoring/v3/uptime_check_service/client"

module Google
  module Cloud
    module Monitoring
      module V3
        ##
        # The UptimeCheckService API is used to manage (list, create, delete, edit)
        # Uptime check configurations in the Stackdriver Monitoring product. An Uptime
        # check is a piece of configuration that determines which resources and
        # services to monitor for availability. These configurations can also be
        # configured interactively by navigating to the [Cloud Console]
        # (http://console.cloud.google.com), selecting the appropriate project,
        # clicking on "Monitoring" on the left-hand side to navigate to Stackdriver,
        # and then clicking on "Uptime".
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/monitoring/v3/uptime_check_service"
        #     client = ::Google::Cloud::Monitoring::V3::UptimeCheckService::Client.new
        #
        module UptimeCheckService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "uptime_check_service", "helpers.rb"
require "google/cloud/monitoring/v3/uptime_check_service/helpers" if ::File.file? helper_path
