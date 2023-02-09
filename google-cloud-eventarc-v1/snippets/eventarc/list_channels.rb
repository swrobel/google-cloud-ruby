# frozen_string_literal: true

# Copyright 2022 Google LLC
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

# [START eventarc_v1_generated_Eventarc_ListChannels_sync]
require "google/cloud/eventarc/v1"

##
# Snippet for the list_channels call in the Eventarc service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Eventarc::V1::Eventarc::Client#list_channels. It may require
# modification in order to execute successfully.
#
def list_channels
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Eventarc::V1::Eventarc::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Eventarc::V1::ListChannelsRequest.new

  # Call the list_channels method.
  result = client.list_channels request

  # The returned object is of type Gapic::PagedEnumerable. You can iterate
  # over elements, and API calls will be issued to fetch pages as needed.
  result.each do |item|
    # Each element is of type ::Google::Cloud::Eventarc::V1::Channel.
    p item
  end
end
# [END eventarc_v1_generated_Eventarc_ListChannels_sync]
