# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "google/cloud/essential_contacts/v1/version"

require "google/cloud/essential_contacts/v1/essential_contacts_service/credentials"
require "google/cloud/essential_contacts/v1/essential_contacts_service/paths"
require "google/cloud/essential_contacts/v1/essential_contacts_service/client"

module Google
  module Cloud
    module EssentialContacts
      module V1
        ##
        # Manages contacts for important Google Cloud notifications.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/essential_contacts/v1/essential_contacts_service"
        #     client = ::Google::Cloud::EssentialContacts::V1::EssentialContactsService::Client.new
        #
        module EssentialContactsService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "essential_contacts_service", "helpers.rb"
require "google/cloud/essential_contacts/v1/essential_contacts_service/helpers" if ::File.file? helper_path

