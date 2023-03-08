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
require "gapic/rest"
require "google/cloud/notebooks/v1/managed_service_pb"
require "google/cloud/notebooks/v1/managed_notebook_service/rest"


class ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end
  end

  def test_list_runtimes
    # Create test objects.
    client_result = ::Google::Cloud::Notebooks::V1::ListRuntimesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_runtimes_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::ServiceStub.stub :transcode_list_runtimes_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_runtimes_client_stub do
        # Create client
        client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_runtimes({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_runtimes parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_runtimes ::Google::Cloud::Notebooks::V1::ListRuntimesRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_runtimes({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_runtimes(::Google::Cloud::Notebooks::V1::ListRuntimesRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_runtimes_client_stub.call_count
      end
    end
  end

  def test_get_runtime
    # Create test objects.
    client_result = ::Google::Cloud::Notebooks::V1::Runtime.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_runtime_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::ServiceStub.stub :transcode_get_runtime_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_runtime_client_stub do
        # Create client
        client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_runtime({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_runtime name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_runtime ::Google::Cloud::Notebooks::V1::GetRuntimeRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_runtime({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_runtime(::Google::Cloud::Notebooks::V1::GetRuntimeRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_runtime_client_stub.call_count
      end
    end
  end

  def test_create_runtime
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    runtime_id = "hello world"
    runtime = {}
    request_id = "hello world"

    create_runtime_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::ServiceStub.stub :transcode_create_runtime_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_runtime_client_stub do
        # Create client
        client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_runtime({ parent: parent, runtime_id: runtime_id, runtime: runtime, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_runtime parent: parent, runtime_id: runtime_id, runtime: runtime, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_runtime ::Google::Cloud::Notebooks::V1::CreateRuntimeRequest.new(parent: parent, runtime_id: runtime_id, runtime: runtime, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_runtime({ parent: parent, runtime_id: runtime_id, runtime: runtime, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_runtime(::Google::Cloud::Notebooks::V1::CreateRuntimeRequest.new(parent: parent, runtime_id: runtime_id, runtime: runtime, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_runtime_client_stub.call_count
      end
    end
  end

  def test_update_runtime
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    runtime = {}
    update_mask = {}
    request_id = "hello world"

    update_runtime_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::ServiceStub.stub :transcode_update_runtime_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_runtime_client_stub do
        # Create client
        client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_runtime({ runtime: runtime, update_mask: update_mask, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_runtime runtime: runtime, update_mask: update_mask, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_runtime ::Google::Cloud::Notebooks::V1::UpdateRuntimeRequest.new(runtime: runtime, update_mask: update_mask, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_runtime({ runtime: runtime, update_mask: update_mask, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_runtime(::Google::Cloud::Notebooks::V1::UpdateRuntimeRequest.new(runtime: runtime, update_mask: update_mask, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_runtime_client_stub.call_count
      end
    end
  end

  def test_delete_runtime
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    delete_runtime_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::ServiceStub.stub :transcode_delete_runtime_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_runtime_client_stub do
        # Create client
        client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_runtime({ name: name, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_runtime name: name, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_runtime ::Google::Cloud::Notebooks::V1::DeleteRuntimeRequest.new(name: name, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_runtime({ name: name, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_runtime(::Google::Cloud::Notebooks::V1::DeleteRuntimeRequest.new(name: name, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_runtime_client_stub.call_count
      end
    end
  end

  def test_start_runtime
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    start_runtime_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::ServiceStub.stub :transcode_start_runtime_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, start_runtime_client_stub do
        # Create client
        client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.start_runtime({ name: name, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.start_runtime name: name, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.start_runtime ::Google::Cloud::Notebooks::V1::StartRuntimeRequest.new(name: name, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.start_runtime({ name: name, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.start_runtime(::Google::Cloud::Notebooks::V1::StartRuntimeRequest.new(name: name, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, start_runtime_client_stub.call_count
      end
    end
  end

  def test_stop_runtime
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    stop_runtime_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::ServiceStub.stub :transcode_stop_runtime_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, stop_runtime_client_stub do
        # Create client
        client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.stop_runtime({ name: name, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.stop_runtime name: name, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.stop_runtime ::Google::Cloud::Notebooks::V1::StopRuntimeRequest.new(name: name, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.stop_runtime({ name: name, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.stop_runtime(::Google::Cloud::Notebooks::V1::StopRuntimeRequest.new(name: name, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, stop_runtime_client_stub.call_count
      end
    end
  end

  def test_switch_runtime
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    machine_type = "hello world"
    accelerator_config = {}
    request_id = "hello world"

    switch_runtime_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::ServiceStub.stub :transcode_switch_runtime_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, switch_runtime_client_stub do
        # Create client
        client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.switch_runtime({ name: name, machine_type: machine_type, accelerator_config: accelerator_config, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.switch_runtime name: name, machine_type: machine_type, accelerator_config: accelerator_config, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.switch_runtime ::Google::Cloud::Notebooks::V1::SwitchRuntimeRequest.new(name: name, machine_type: machine_type, accelerator_config: accelerator_config, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.switch_runtime({ name: name, machine_type: machine_type, accelerator_config: accelerator_config, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.switch_runtime(::Google::Cloud::Notebooks::V1::SwitchRuntimeRequest.new(name: name, machine_type: machine_type, accelerator_config: accelerator_config, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, switch_runtime_client_stub.call_count
      end
    end
  end

  def test_reset_runtime
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    reset_runtime_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::ServiceStub.stub :transcode_reset_runtime_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, reset_runtime_client_stub do
        # Create client
        client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.reset_runtime({ name: name, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.reset_runtime name: name, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.reset_runtime ::Google::Cloud::Notebooks::V1::ResetRuntimeRequest.new(name: name, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.reset_runtime({ name: name, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.reset_runtime(::Google::Cloud::Notebooks::V1::ResetRuntimeRequest.new(name: name, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, reset_runtime_client_stub.call_count
      end
    end
  end

  def test_upgrade_runtime
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    upgrade_runtime_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::ServiceStub.stub :transcode_upgrade_runtime_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, upgrade_runtime_client_stub do
        # Create client
        client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.upgrade_runtime({ name: name, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.upgrade_runtime name: name, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.upgrade_runtime ::Google::Cloud::Notebooks::V1::UpgradeRuntimeRequest.new(name: name, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.upgrade_runtime({ name: name, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.upgrade_runtime(::Google::Cloud::Notebooks::V1::UpgradeRuntimeRequest.new(name: name, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, upgrade_runtime_client_stub.call_count
      end
    end
  end

  def test_report_runtime_event
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    vm_id = "hello world"
    event = {}

    report_runtime_event_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::ServiceStub.stub :transcode_report_runtime_event_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, report_runtime_event_client_stub do
        # Create client
        client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.report_runtime_event({ name: name, vm_id: vm_id, event: event }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.report_runtime_event name: name, vm_id: vm_id, event: event do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.report_runtime_event ::Google::Cloud::Notebooks::V1::ReportRuntimeEventRequest.new(name: name, vm_id: vm_id, event: event) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.report_runtime_event({ name: name, vm_id: vm_id, event: event }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.report_runtime_event(::Google::Cloud::Notebooks::V1::ReportRuntimeEventRequest.new(name: name, vm_id: vm_id, event: event), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, report_runtime_event_client_stub.call_count
      end
    end
  end

  def test_refresh_runtime_token_internal
    # Create test objects.
    client_result = ::Google::Cloud::Notebooks::V1::RefreshRuntimeTokenInternalResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    vm_id = "hello world"

    refresh_runtime_token_internal_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::ServiceStub.stub :transcode_refresh_runtime_token_internal_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, refresh_runtime_token_internal_client_stub do
        # Create client
        client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.refresh_runtime_token_internal({ name: name, vm_id: vm_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.refresh_runtime_token_internal name: name, vm_id: vm_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.refresh_runtime_token_internal ::Google::Cloud::Notebooks::V1::RefreshRuntimeTokenInternalRequest.new(name: name, vm_id: vm_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.refresh_runtime_token_internal({ name: name, vm_id: vm_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.refresh_runtime_token_internal(::Google::Cloud::Notebooks::V1::RefreshRuntimeTokenInternalRequest.new(name: name, vm_id: vm_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, refresh_runtime_token_internal_client_stub.call_count
      end
    end
  end

  def test_diagnose_runtime
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    diagnostic_config = {}

    diagnose_runtime_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::ServiceStub.stub :transcode_diagnose_runtime_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, diagnose_runtime_client_stub do
        # Create client
        client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.diagnose_runtime({ name: name, diagnostic_config: diagnostic_config }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.diagnose_runtime name: name, diagnostic_config: diagnostic_config do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.diagnose_runtime ::Google::Cloud::Notebooks::V1::DiagnoseRuntimeRequest.new(name: name, diagnostic_config: diagnostic_config) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.diagnose_runtime({ name: name, diagnostic_config: diagnostic_config }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.diagnose_runtime(::Google::Cloud::Notebooks::V1::DiagnoseRuntimeRequest.new(name: name, diagnostic_config: diagnostic_config), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, diagnose_runtime_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Notebooks::V1::ManagedNotebookService::Rest::Client::Configuration, config
  end
end
