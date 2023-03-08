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
require "google/cloud/iap/v1/service_pb"
require "google/cloud/iap/v1/identity_aware_proxy_o_auth_service/rest"


class ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::ClientTest < Minitest::Test
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

  def test_list_brands
    # Create test objects.
    client_result = ::Google::Cloud::Iap::V1::ListBrandsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"

    list_brands_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::ServiceStub.stub :transcode_list_brands_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_brands_client_stub do
        # Create client
        client = ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_brands({ parent: parent }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_brands parent: parent do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_brands ::Google::Cloud::Iap::V1::ListBrandsRequest.new(parent: parent) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_brands({ parent: parent }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_brands(::Google::Cloud::Iap::V1::ListBrandsRequest.new(parent: parent), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_brands_client_stub.call_count
      end
    end
  end

  def test_create_brand
    # Create test objects.
    client_result = ::Google::Cloud::Iap::V1::Brand.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    brand = {}

    create_brand_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::ServiceStub.stub :transcode_create_brand_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_brand_client_stub do
        # Create client
        client = ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_brand({ parent: parent, brand: brand }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_brand parent: parent, brand: brand do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_brand ::Google::Cloud::Iap::V1::CreateBrandRequest.new(parent: parent, brand: brand) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_brand({ parent: parent, brand: brand }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_brand(::Google::Cloud::Iap::V1::CreateBrandRequest.new(parent: parent, brand: brand), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_brand_client_stub.call_count
      end
    end
  end

  def test_get_brand
    # Create test objects.
    client_result = ::Google::Cloud::Iap::V1::Brand.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_brand_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::ServiceStub.stub :transcode_get_brand_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_brand_client_stub do
        # Create client
        client = ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_brand({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_brand name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_brand ::Google::Cloud::Iap::V1::GetBrandRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_brand({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_brand(::Google::Cloud::Iap::V1::GetBrandRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_brand_client_stub.call_count
      end
    end
  end

  def test_create_identity_aware_proxy_client
    # Create test objects.
    client_result = ::Google::Cloud::Iap::V1::IdentityAwareProxyClient.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    identity_aware_proxy_client = {}

    create_identity_aware_proxy_client_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::ServiceStub.stub :transcode_create_identity_aware_proxy_client_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_identity_aware_proxy_client_client_stub do
        # Create client
        client = ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_identity_aware_proxy_client({ parent: parent, identity_aware_proxy_client: identity_aware_proxy_client }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_identity_aware_proxy_client parent: parent, identity_aware_proxy_client: identity_aware_proxy_client do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_identity_aware_proxy_client ::Google::Cloud::Iap::V1::CreateIdentityAwareProxyClientRequest.new(parent: parent, identity_aware_proxy_client: identity_aware_proxy_client) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_identity_aware_proxy_client({ parent: parent, identity_aware_proxy_client: identity_aware_proxy_client }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_identity_aware_proxy_client(::Google::Cloud::Iap::V1::CreateIdentityAwareProxyClientRequest.new(parent: parent, identity_aware_proxy_client: identity_aware_proxy_client), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_identity_aware_proxy_client_client_stub.call_count
      end
    end
  end

  def test_list_identity_aware_proxy_clients
    # Create test objects.
    client_result = ::Google::Cloud::Iap::V1::ListIdentityAwareProxyClientsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_identity_aware_proxy_clients_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::ServiceStub.stub :transcode_list_identity_aware_proxy_clients_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_identity_aware_proxy_clients_client_stub do
        # Create client
        client = ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_identity_aware_proxy_clients({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_identity_aware_proxy_clients parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_identity_aware_proxy_clients ::Google::Cloud::Iap::V1::ListIdentityAwareProxyClientsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_identity_aware_proxy_clients({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_identity_aware_proxy_clients(::Google::Cloud::Iap::V1::ListIdentityAwareProxyClientsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_identity_aware_proxy_clients_client_stub.call_count
      end
    end
  end

  def test_get_identity_aware_proxy_client
    # Create test objects.
    client_result = ::Google::Cloud::Iap::V1::IdentityAwareProxyClient.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_identity_aware_proxy_client_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::ServiceStub.stub :transcode_get_identity_aware_proxy_client_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_identity_aware_proxy_client_client_stub do
        # Create client
        client = ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_identity_aware_proxy_client({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_identity_aware_proxy_client name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_identity_aware_proxy_client ::Google::Cloud::Iap::V1::GetIdentityAwareProxyClientRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_identity_aware_proxy_client({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_identity_aware_proxy_client(::Google::Cloud::Iap::V1::GetIdentityAwareProxyClientRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_identity_aware_proxy_client_client_stub.call_count
      end
    end
  end

  def test_reset_identity_aware_proxy_client_secret
    # Create test objects.
    client_result = ::Google::Cloud::Iap::V1::IdentityAwareProxyClient.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    reset_identity_aware_proxy_client_secret_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::ServiceStub.stub :transcode_reset_identity_aware_proxy_client_secret_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, reset_identity_aware_proxy_client_secret_client_stub do
        # Create client
        client = ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.reset_identity_aware_proxy_client_secret({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.reset_identity_aware_proxy_client_secret name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.reset_identity_aware_proxy_client_secret ::Google::Cloud::Iap::V1::ResetIdentityAwareProxyClientSecretRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.reset_identity_aware_proxy_client_secret({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.reset_identity_aware_proxy_client_secret(::Google::Cloud::Iap::V1::ResetIdentityAwareProxyClientSecretRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, reset_identity_aware_proxy_client_secret_client_stub.call_count
      end
    end
  end

  def test_delete_identity_aware_proxy_client
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_identity_aware_proxy_client_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::ServiceStub.stub :transcode_delete_identity_aware_proxy_client_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_identity_aware_proxy_client_client_stub do
        # Create client
        client = ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_identity_aware_proxy_client({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_identity_aware_proxy_client name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_identity_aware_proxy_client ::Google::Cloud::Iap::V1::DeleteIdentityAwareProxyClientRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_identity_aware_proxy_client({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_identity_aware_proxy_client(::Google::Cloud::Iap::V1::DeleteIdentityAwareProxyClientRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_identity_aware_proxy_client_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Iap::V1::IdentityAwareProxyOAuthService::Rest::Client::Configuration, config
  end
end
