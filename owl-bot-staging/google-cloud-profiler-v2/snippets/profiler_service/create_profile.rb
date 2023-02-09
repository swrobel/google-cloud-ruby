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

# [START cloudprofiler_v2_generated_ProfilerService_CreateProfile_sync]
require "google/cloud/profiler/v2"

##
# Snippet for the create_profile call in the ProfilerService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Profiler::V2::ProfilerService::Client#create_profile. It may
# require modification in order to execute successfully.
#
def create_profile
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Profiler::V2::ProfilerService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Profiler::V2::CreateProfileRequest.new

  # Call the create_profile method.
  result = client.create_profile request

  # The returned object is of type Google::Cloud::Profiler::V2::Profile.
  p result
end
# [END cloudprofiler_v2_generated_ProfilerService_CreateProfile_sync]
