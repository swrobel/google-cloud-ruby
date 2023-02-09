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

require "helper"

require "gapic/grpc/service_stub"

require "google/identity/access_context_manager/v1/access_context_manager"

class ::Google::Identity::AccessContextManager::V1::AccessContextManager::ClientPathsTest < Minitest::Test
  def test_access_level_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Identity::AccessContextManager::V1::AccessContextManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.access_level_path access_policy: "value0", access_level: "value1"
      assert_equal "accessPolicies/value0/accessLevels/value1", path
    end
  end

  def test_access_policy_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Identity::AccessContextManager::V1::AccessContextManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.access_policy_path access_policy: "value0"
      assert_equal "accessPolicies/value0", path
    end
  end

  def test_gcp_user_access_binding_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Identity::AccessContextManager::V1::AccessContextManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.gcp_user_access_binding_path organization: "value0", gcp_user_access_binding: "value1"
      assert_equal "organizations/value0/gcpUserAccessBindings/value1", path
    end
  end

  def test_organization_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Identity::AccessContextManager::V1::AccessContextManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.organization_path organization: "value0"
      assert_equal "organizations/value0", path
    end
  end

  def test_service_perimeter_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Identity::AccessContextManager::V1::AccessContextManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.service_perimeter_path access_policy: "value0", service_perimeter: "value1"
      assert_equal "accessPolicies/value0/servicePerimeters/value1", path
    end
  end
end
