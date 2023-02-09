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

# [START spanner_v1_generated_InstanceAdmin_GetIamPolicy_sync]
require "google/cloud/spanner/admin/instance/v1"

##
# Snippet for the get_iam_policy call in the InstanceAdmin service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Spanner::Admin::Instance::V1::InstanceAdmin::Client#get_iam_policy.
# It may require modification in order to execute successfully.
#
def get_iam_policy
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Spanner::Admin::Instance::V1::InstanceAdmin::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Iam::V1::GetIamPolicyRequest.new

  # Call the get_iam_policy method.
  result = client.get_iam_policy request

  # The returned object is of type Google::Iam::V1::Policy.
  p result
end
# [END spanner_v1_generated_InstanceAdmin_GetIamPolicy_sync]
