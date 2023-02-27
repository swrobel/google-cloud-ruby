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

# [START oslogin_v1beta_generated_OsLoginService_CreateSshPublicKey_sync]
require "google/cloud/os_login/v1beta"

##
# Snippet for the create_ssh_public_key call in the OsLoginService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::OsLogin::V1beta::OsLoginService::Client#create_ssh_public_key.
# It may require modification in order to execute successfully.
#
def create_ssh_public_key
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::OsLogin::V1beta::OsLoginService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::OsLogin::V1beta::CreateSshPublicKeyRequest.new

  # Call the create_ssh_public_key method.
  result = client.create_ssh_public_key request

  # The returned object is of type Google::Cloud::OsLogin::Common::SshPublicKey.
  p result
end
# [END oslogin_v1beta_generated_OsLoginService_CreateSshPublicKey_sync]
