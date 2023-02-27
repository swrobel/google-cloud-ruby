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

require "google/cloud/networkmanagement/v1/reachability_pb"
require "google/cloud/networkmanagement/v1/reachability_services_pb"
require "google/cloud/network_management/v1/reachability_service"

class ::Google::Cloud::NetworkManagement::V1::ReachabilityService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_list_connectivity_tests
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::NetworkManagement::V1::ListConnectivityTestsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_connectivity_tests_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_connectivity_tests, name
      assert_kind_of ::Google::Cloud::NetworkManagement::V1::ListConnectivityTestsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_connectivity_tests_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkManagement::V1::ReachabilityService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_connectivity_tests({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_connectivity_tests parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_connectivity_tests ::Google::Cloud::NetworkManagement::V1::ListConnectivityTestsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_connectivity_tests({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_connectivity_tests(::Google::Cloud::NetworkManagement::V1::ListConnectivityTestsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_connectivity_tests_client_stub.call_rpc_count
    end
  end

  def test_get_connectivity_test
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::NetworkManagement::V1::ConnectivityTest.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_connectivity_test_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_connectivity_test, name
      assert_kind_of ::Google::Cloud::NetworkManagement::V1::GetConnectivityTestRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_connectivity_test_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkManagement::V1::ReachabilityService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_connectivity_test({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_connectivity_test name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_connectivity_test ::Google::Cloud::NetworkManagement::V1::GetConnectivityTestRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_connectivity_test({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_connectivity_test(::Google::Cloud::NetworkManagement::V1::GetConnectivityTestRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_connectivity_test_client_stub.call_rpc_count
    end
  end

  def test_create_connectivity_test
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    test_id = "hello world"
    resource = {}

    create_connectivity_test_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_connectivity_test, name
      assert_kind_of ::Google::Cloud::NetworkManagement::V1::CreateConnectivityTestRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["test_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::NetworkManagement::V1::ConnectivityTest), request["resource"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_connectivity_test_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkManagement::V1::ReachabilityService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_connectivity_test({ parent: parent, test_id: test_id, resource: resource }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_connectivity_test parent: parent, test_id: test_id, resource: resource do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_connectivity_test ::Google::Cloud::NetworkManagement::V1::CreateConnectivityTestRequest.new(parent: parent, test_id: test_id, resource: resource) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_connectivity_test({ parent: parent, test_id: test_id, resource: resource }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_connectivity_test(::Google::Cloud::NetworkManagement::V1::CreateConnectivityTestRequest.new(parent: parent, test_id: test_id, resource: resource), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_connectivity_test_client_stub.call_rpc_count
    end
  end

  def test_update_connectivity_test
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    update_mask = {}
    resource = {}

    update_connectivity_test_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_connectivity_test, name
      assert_kind_of ::Google::Cloud::NetworkManagement::V1::UpdateConnectivityTestRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::NetworkManagement::V1::ConnectivityTest), request["resource"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_connectivity_test_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkManagement::V1::ReachabilityService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_connectivity_test({ update_mask: update_mask, resource: resource }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_connectivity_test update_mask: update_mask, resource: resource do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_connectivity_test ::Google::Cloud::NetworkManagement::V1::UpdateConnectivityTestRequest.new(update_mask: update_mask, resource: resource) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_connectivity_test({ update_mask: update_mask, resource: resource }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_connectivity_test(::Google::Cloud::NetworkManagement::V1::UpdateConnectivityTestRequest.new(update_mask: update_mask, resource: resource), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_connectivity_test_client_stub.call_rpc_count
    end
  end

  def test_rerun_connectivity_test
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    rerun_connectivity_test_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :rerun_connectivity_test, name
      assert_kind_of ::Google::Cloud::NetworkManagement::V1::RerunConnectivityTestRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, rerun_connectivity_test_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkManagement::V1::ReachabilityService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.rerun_connectivity_test({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.rerun_connectivity_test name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.rerun_connectivity_test ::Google::Cloud::NetworkManagement::V1::RerunConnectivityTestRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.rerun_connectivity_test({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.rerun_connectivity_test(::Google::Cloud::NetworkManagement::V1::RerunConnectivityTestRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, rerun_connectivity_test_client_stub.call_rpc_count
    end
  end

  def test_delete_connectivity_test
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_connectivity_test_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_connectivity_test, name
      assert_kind_of ::Google::Cloud::NetworkManagement::V1::DeleteConnectivityTestRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_connectivity_test_client_stub do
      # Create client
      client = ::Google::Cloud::NetworkManagement::V1::ReachabilityService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_connectivity_test({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_connectivity_test name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_connectivity_test ::Google::Cloud::NetworkManagement::V1::DeleteConnectivityTestRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_connectivity_test({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_connectivity_test(::Google::Cloud::NetworkManagement::V1::DeleteConnectivityTestRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_connectivity_test_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::NetworkManagement::V1::ReachabilityService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::NetworkManagement::V1::ReachabilityService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::NetworkManagement::V1::ReachabilityService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::NetworkManagement::V1::ReachabilityService::Operations, client.operations_client
  end
end
