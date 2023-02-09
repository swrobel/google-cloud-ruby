# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "google/cloud/gaming/v1/version"

require "google/cloud/gaming/v1/game_server_configs_service/credentials"
require "google/cloud/gaming/v1/game_server_configs_service/paths"
require "google/cloud/gaming/v1/game_server_configs_service/operations"
require "google/cloud/gaming/v1/game_server_configs_service/client"

module Google
  module Cloud
    module Gaming
      module V1
        ##
        # The game server config configures the game servers in an Agones fleet.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/gaming/v1/game_server_configs_service"
        #     client = ::Google::Cloud::Gaming::V1::GameServerConfigsService::Client.new
        #
        module GameServerConfigsService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "game_server_configs_service", "helpers.rb"
require "google/cloud/gaming/v1/game_server_configs_service/helpers" if ::File.file? helper_path

