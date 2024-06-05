# frozen_string_literal: true

# Copyright 2024 Google LLC
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

require "google/shopping/merchant/data_sources/v1beta/data_sources_service"
require "google/shopping/merchant/data_sources/v1beta/version"

module Google
  module Shopping
    module Merchant
      module DataSources
        ##
        # API client module.
        #
        # @example Load this package, including all its services, and instantiate a gRPC client
        #
        #     require "google/shopping/merchant/data_sources/v1beta"
        #     client = ::Google::Shopping::Merchant::DataSources::V1beta::DataSourcesService::Client.new
        #
        # @example Load this package, including all its services, and instantiate a REST client
        #
        #     require "google/shopping/merchant/data_sources/v1beta"
        #     client = ::Google::Shopping::Merchant::DataSources::V1beta::DataSourcesService::Rest::Client.new
        #
        module V1beta
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "v1beta", "_helpers.rb"
require "google/shopping/merchant/data_sources/v1beta/_helpers" if ::File.file? helper_path
