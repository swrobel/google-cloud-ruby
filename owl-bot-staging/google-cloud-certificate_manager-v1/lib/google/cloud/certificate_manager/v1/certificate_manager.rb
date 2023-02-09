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

require "google/cloud/certificate_manager/v1/version"

require "google/cloud/certificate_manager/v1/certificate_manager/credentials"
require "google/cloud/certificate_manager/v1/certificate_manager/paths"
require "google/cloud/certificate_manager/v1/certificate_manager/operations"
require "google/cloud/certificate_manager/v1/certificate_manager/client"

module Google
  module Cloud
    module CertificateManager
      module V1
        ##
        # API Overview
        #
        # Certificates Manager API allows customers to see and manage all their TLS
        # certificates.
        #
        # Certificates Manager API service provides methods to manage certificates,
        # group them into collections, and create serving configuration that can be
        # easily applied to other Cloud resources e.g. Target Proxies.
        #
        # Data Model
        #
        # The Certificates Manager service exposes the following resources:
        #
        # * `Certificate` that describes a single TLS certificate.
        # * `CertificateMap` that describes a collection of certificates that can be
        # attached to a target resource.
        # * `CertificateMapEntry` that describes a single configuration entry that
        # consists of a SNI and a group of certificates. It's a subresource of
        # CertificateMap.
        #
        # Certificate, CertificateMap and CertificateMapEntry IDs
        # have to fully match the regexp `[a-z0-9-]{1,63}`. In other words,
        # - only lower case letters, digits, and hyphen are allowed
        # - length of the resource ID has to be in [1,63] range.
        #
        # Provides methods to manage Cloud Certificate Manager entities.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/certificate_manager/v1/certificate_manager"
        #     client = ::Google::Cloud::CertificateManager::V1::CertificateManager::Client.new
        #
        module CertificateManager
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "certificate_manager", "helpers.rb"
require "google/cloud/certificate_manager/v1/certificate_manager/helpers" if ::File.file? helper_path

