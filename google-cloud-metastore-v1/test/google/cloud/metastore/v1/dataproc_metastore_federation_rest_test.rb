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
require "google/cloud/metastore/v1/metastore_federation_pb"
require "google/cloud/metastore/v1/dataproc_metastore_federation/rest"


class ::Google::Cloud::Metastore::V1::DataprocMetastoreFederation::Rest::ClientTest < Minitest::Test
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

  def test_list_federations
    # Create test objects.
    client_result = ::Google::Cloud::Metastore::V1::ListFederationsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_federations_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Metastore::V1::DataprocMetastoreFederation::Rest::ServiceStub.stub :transcode_list_federations_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_federations_client_stub do
        # Create client
        client = ::Google::Cloud::Metastore::V1::DataprocMetastoreFederation::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_federations({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_federations parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_federations ::Google::Cloud::Metastore::V1::ListFederationsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_federations({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_federations(::Google::Cloud::Metastore::V1::ListFederationsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_federations_client_stub.call_count
      end
    end
  end

  def test_get_federation
    # Create test objects.
    client_result = ::Google::Cloud::Metastore::V1::Federation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_federation_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Metastore::V1::DataprocMetastoreFederation::Rest::ServiceStub.stub :transcode_get_federation_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_federation_client_stub do
        # Create client
        client = ::Google::Cloud::Metastore::V1::DataprocMetastoreFederation::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_federation({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_federation name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_federation ::Google::Cloud::Metastore::V1::GetFederationRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_federation({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_federation(::Google::Cloud::Metastore::V1::GetFederationRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_federation_client_stub.call_count
      end
    end
  end

  def test_create_federation
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    federation_id = "hello world"
    federation = {}
    request_id = "hello world"

    create_federation_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Metastore::V1::DataprocMetastoreFederation::Rest::ServiceStub.stub :transcode_create_federation_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_federation_client_stub do
        # Create client
        client = ::Google::Cloud::Metastore::V1::DataprocMetastoreFederation::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_federation({ parent: parent, federation_id: federation_id, federation: federation, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_federation parent: parent, federation_id: federation_id, federation: federation, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_federation ::Google::Cloud::Metastore::V1::CreateFederationRequest.new(parent: parent, federation_id: federation_id, federation: federation, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_federation({ parent: parent, federation_id: federation_id, federation: federation, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_federation(::Google::Cloud::Metastore::V1::CreateFederationRequest.new(parent: parent, federation_id: federation_id, federation: federation, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_federation_client_stub.call_count
      end
    end
  end

  def test_update_federation
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    update_mask = {}
    federation = {}
    request_id = "hello world"

    update_federation_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Metastore::V1::DataprocMetastoreFederation::Rest::ServiceStub.stub :transcode_update_federation_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_federation_client_stub do
        # Create client
        client = ::Google::Cloud::Metastore::V1::DataprocMetastoreFederation::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_federation({ update_mask: update_mask, federation: federation, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_federation update_mask: update_mask, federation: federation, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_federation ::Google::Cloud::Metastore::V1::UpdateFederationRequest.new(update_mask: update_mask, federation: federation, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_federation({ update_mask: update_mask, federation: federation, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_federation(::Google::Cloud::Metastore::V1::UpdateFederationRequest.new(update_mask: update_mask, federation: federation, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_federation_client_stub.call_count
      end
    end
  end

  def test_delete_federation
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    request_id = "hello world"

    delete_federation_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Metastore::V1::DataprocMetastoreFederation::Rest::ServiceStub.stub :transcode_delete_federation_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_federation_client_stub do
        # Create client
        client = ::Google::Cloud::Metastore::V1::DataprocMetastoreFederation::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_federation({ name: name, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_federation name: name, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_federation ::Google::Cloud::Metastore::V1::DeleteFederationRequest.new(name: name, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_federation({ name: name, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_federation(::Google::Cloud::Metastore::V1::DeleteFederationRequest.new(name: name, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_federation_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::Metastore::V1::DataprocMetastoreFederation::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Metastore::V1::DataprocMetastoreFederation::Rest::Client::Configuration, config
  end
end
