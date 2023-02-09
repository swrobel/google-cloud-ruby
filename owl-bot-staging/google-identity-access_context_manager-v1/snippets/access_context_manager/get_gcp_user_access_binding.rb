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

# [START accesscontextmanager_v1_generated_AccessContextManager_GetGcpUserAccessBinding_sync]
require "google/identity/access_context_manager/v1"

##
# Snippet for the get_gcp_user_access_binding call in the AccessContextManager service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Identity::AccessContextManager::V1::AccessContextManager::Client#get_gcp_user_access_binding.
# It may require modification in order to execute successfully.
#
def get_gcp_user_access_binding
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Identity::AccessContextManager::V1::AccessContextManager::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Identity::AccessContextManager::V1::GetGcpUserAccessBindingRequest.new

  # Call the get_gcp_user_access_binding method.
  result = client.get_gcp_user_access_binding request

  # The returned object is of type Google::Identity::AccessContextManager::V1::GcpUserAccessBinding.
  p result
end
# [END accesscontextmanager_v1_generated_AccessContextManager_GetGcpUserAccessBinding_sync]
