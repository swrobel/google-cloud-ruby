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

# [START jobs_v4beta1_generated_TenantService_UpdateTenant_sync]
require "google/cloud/talent/v4beta1"

##
# Snippet for the update_tenant call in the TenantService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Talent::V4beta1::TenantService::Client#update_tenant. It may
# require modification in order to execute successfully.
#
def update_tenant
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Talent::V4beta1::TenantService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Talent::V4beta1::UpdateTenantRequest.new

  # Call the update_tenant method.
  result = client.update_tenant request

  # The returned object is of type Google::Cloud::Talent::V4beta1::Tenant.
  p result
end
# [END jobs_v4beta1_generated_TenantService_UpdateTenant_sync]
