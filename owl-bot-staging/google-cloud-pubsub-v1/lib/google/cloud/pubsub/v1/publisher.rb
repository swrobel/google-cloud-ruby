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

require "google/cloud/pubsub/v1/version"

require "google/cloud/pubsub/v1/publisher/credentials"
require "google/cloud/pubsub/v1/publisher/paths"
require "google/cloud/pubsub/v1/publisher/client"

module Google
  module Cloud
    module PubSub
      module V1
        ##
        # The service that an application uses to manipulate topics, and to send
        # messages to a topic.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/pubsub/v1/publisher"
        #     client = ::Google::Cloud::PubSub::V1::Publisher::Client.new
        #
        module Publisher
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "publisher", "helpers.rb"
require "google/cloud/pubsub/v1/publisher/helpers" if ::File.file? helper_path
