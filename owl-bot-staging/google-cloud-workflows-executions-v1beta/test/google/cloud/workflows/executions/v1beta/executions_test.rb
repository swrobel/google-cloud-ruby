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

require "google/cloud/workflows/executions/v1beta/executions_pb"
require "google/cloud/workflows/executions/v1beta/executions_services_pb"
require "google/cloud/workflows/executions/v1beta/executions"

class ::Google::Cloud::Workflows::Executions::V1beta::Executions::ClientTest < Minitest::Test
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

  def test_list_executions
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Workflows::Executions::V1beta::ListExecutionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    view = :EXECUTION_VIEW_UNSPECIFIED

    list_executions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_executions, name
      assert_kind_of ::Google::Cloud::Workflows::Executions::V1beta::ListExecutionsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal :EXECUTION_VIEW_UNSPECIFIED, request["view"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_executions_client_stub do
      # Create client
      client = ::Google::Cloud::Workflows::Executions::V1beta::Executions::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_executions({ parent: parent, page_size: page_size, page_token: page_token, view: view }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_executions parent: parent, page_size: page_size, page_token: page_token, view: view do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_executions ::Google::Cloud::Workflows::Executions::V1beta::ListExecutionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, view: view) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_executions({ parent: parent, page_size: page_size, page_token: page_token, view: view }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_executions(::Google::Cloud::Workflows::Executions::V1beta::ListExecutionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, view: view), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_executions_client_stub.call_rpc_count
    end
  end

  def test_create_execution
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Workflows::Executions::V1beta::Execution.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    execution = {}

    create_execution_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_execution, name
      assert_kind_of ::Google::Cloud::Workflows::Executions::V1beta::CreateExecutionRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Workflows::Executions::V1beta::Execution), request["execution"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_execution_client_stub do
      # Create client
      client = ::Google::Cloud::Workflows::Executions::V1beta::Executions::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_execution({ parent: parent, execution: execution }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_execution parent: parent, execution: execution do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_execution ::Google::Cloud::Workflows::Executions::V1beta::CreateExecutionRequest.new(parent: parent, execution: execution) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_execution({ parent: parent, execution: execution }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_execution(::Google::Cloud::Workflows::Executions::V1beta::CreateExecutionRequest.new(parent: parent, execution: execution), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_execution_client_stub.call_rpc_count
    end
  end

  def test_get_execution
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Workflows::Executions::V1beta::Execution.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    view = :EXECUTION_VIEW_UNSPECIFIED

    get_execution_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_execution, name
      assert_kind_of ::Google::Cloud::Workflows::Executions::V1beta::GetExecutionRequest, request
      assert_equal "hello world", request["name"]
      assert_equal :EXECUTION_VIEW_UNSPECIFIED, request["view"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_execution_client_stub do
      # Create client
      client = ::Google::Cloud::Workflows::Executions::V1beta::Executions::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_execution({ name: name, view: view }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_execution name: name, view: view do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_execution ::Google::Cloud::Workflows::Executions::V1beta::GetExecutionRequest.new(name: name, view: view) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_execution({ name: name, view: view }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_execution(::Google::Cloud::Workflows::Executions::V1beta::GetExecutionRequest.new(name: name, view: view), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_execution_client_stub.call_rpc_count
    end
  end

  def test_cancel_execution
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Workflows::Executions::V1beta::Execution.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    cancel_execution_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :cancel_execution, name
      assert_kind_of ::Google::Cloud::Workflows::Executions::V1beta::CancelExecutionRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, cancel_execution_client_stub do
      # Create client
      client = ::Google::Cloud::Workflows::Executions::V1beta::Executions::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.cancel_execution({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.cancel_execution name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.cancel_execution ::Google::Cloud::Workflows::Executions::V1beta::CancelExecutionRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.cancel_execution({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.cancel_execution(::Google::Cloud::Workflows::Executions::V1beta::CancelExecutionRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, cancel_execution_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Workflows::Executions::V1beta::Executions::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Workflows::Executions::V1beta::Executions::Client::Configuration, config
  end
end
