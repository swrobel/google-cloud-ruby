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

# [START certificatemanager_v1_generated_CertificateManager_ListCertificateMaps_sync]
require "google/cloud/certificate_manager/v1"

##
# Snippet for the list_certificate_maps call in the CertificateManager service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::CertificateManager::V1::CertificateManager::Client#list_certificate_maps.
# It may require modification in order to execute successfully.
#
def list_certificate_maps
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::CertificateManager::V1::CertificateManager::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::CertificateManager::V1::ListCertificateMapsRequest.new

  # Call the list_certificate_maps method.
  result = client.list_certificate_maps request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::CertificateManager::V1::CertificateMap.
    p item
  end
end
# [END certificatemanager_v1_generated_CertificateManager_ListCertificateMaps_sync]
