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

require "google/cloud/monitoring/v3/alert_policy_service/credentials"
require "google/cloud/monitoring/v3/alert_policy_service/paths"
require "google/cloud/monitoring/v3/alert_policy_service/client"

module Google
  module Cloud
    module Monitoring
      module V3
        ##
        # The AlertPolicyService API is used to manage (list, create, delete,
        # edit) alert policies in Cloud Monitoring. An alerting policy is
        # a description of the conditions under which some aspect of your
        # system is considered to be "unhealthy" and the ways to notify
        # people or services about this state. In addition to using this API, alert
        # policies can also be managed through
        # [Cloud Monitoring](https://cloud.google.com/monitoring/docs/),
        # which can be reached by clicking the "Monitoring" tab in
        # [Cloud console](https://console.cloud.google.com/).
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/monitoring/v3/alert_policy_service"
        #     client = ::Google::Cloud::Monitoring::V3::AlertPolicyService::Client.new
        #
        module AlertPolicyService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "alert_policy_service", "helpers.rb"
require "google/cloud/monitoring/v3/alert_policy_service/helpers" if ::File.file? helper_path
