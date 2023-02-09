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

# [START recaptchaenterprise_v1_generated_RecaptchaEnterpriseService_MigrateKey_sync]
require "google/cloud/recaptcha_enterprise/v1"

##
# Snippet for the migrate_key call in the RecaptchaEnterpriseService service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client#migrate_key.
# It may require modification in order to execute successfully.
#
def migrate_key
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::RecaptchaEnterprise::V1::MigrateKeyRequest.new

  # Call the migrate_key method.
  result = client.migrate_key request

  # The returned object is of type Google::Cloud::RecaptchaEnterprise::V1::Key.
  p result
end
# [END recaptchaenterprise_v1_generated_RecaptchaEnterpriseService_MigrateKey_sync]
