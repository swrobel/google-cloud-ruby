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

require "google/cloud/errors"
require "google/cloud/ids/v1/ids_pb"
require "google/cloud/ids/v1/ids/rest/service_stub"

module Google
  module Cloud
    module IDS
      module V1
        module IDS
          module Rest
            ##
            # REST client for the IDS service.
            #
            # The IDS Service
            #
            class Client
              include Paths

              # @private
              attr_reader :ids_stub

              ##
              # Configure the IDS Client class.
              #
              # See {::Google::Cloud::IDS::V1::IDS::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all IDS clients
              #   ::Google::Cloud::IDS::V1::IDS::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def self.configure
                @configure ||= begin
                  namespace = ["Google", "Cloud", "IDS", "V1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.rpcs.list_endpoints.timeout = 60.0
                  default_config.rpcs.list_endpoints.retry_policy = {
                    initial_delay: 0.25, max_delay: 32.0, multiplier: 1.3, retry_codes: [14]
                  }

                  default_config.rpcs.get_endpoint.timeout = 60.0
                  default_config.rpcs.get_endpoint.retry_policy = {
                    initial_delay: 0.25, max_delay: 32.0, multiplier: 1.3, retry_codes: [14]
                  }

                  default_config.rpcs.create_endpoint.timeout = 3600.0

                  default_config.rpcs.delete_endpoint.timeout = 3600.0

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the IDS Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::IDS::V1::IDS::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def configure
                yield @config if block_given?
                @config
              end

              ##
              # Create a new IDS REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::IDS::V1::IDS::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::IDS::V1::IDS::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the IDS client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                         !@config.endpoint.split(".").first.include?("-")
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @operations_client = ::Google::Cloud::IDS::V1::IDS::Rest::Operations.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                end

                @ids_stub = ::Google::Cloud::IDS::V1::IDS::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
              end

              ##
              # Get the associated client for long-running operations.
              #
              # @return [::Google::Cloud::IDS::V1::IDS::Rest::Operations]
              #
              attr_reader :operations_client

              # Service calls

              ##
              # Lists Endpoints in a given project and location.
              #
              # @overload list_endpoints(request, options = nil)
              #   Pass arguments to `list_endpoints` via a request object, either of type
              #   {::Google::Cloud::IDS::V1::ListEndpointsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::IDS::V1::ListEndpointsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload list_endpoints(parent: nil, page_size: nil, page_token: nil, filter: nil, order_by: nil)
              #   Pass arguments to `list_endpoints` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The parent, which owns this collection of endpoints.
              #   @param page_size [::Integer]
              #     Optional. The maximum number of endpoints to return. The service may return fewer
              #     than this value.
              #   @param page_token [::String]
              #     Optional. A page token, received from a previous `ListEndpoints` call.
              #     Provide this to retrieve the subsequent page.
              #
              #     When paginating, all other parameters provided to `ListEndpoints` must
              #     match the call that provided the page token.
              #   @param filter [::String]
              #     Optional. The filter expression, following the syntax outlined in
              #     https://google.aip.dev/160.
              #   @param order_by [::String]
              #     Optional. One or more fields to compare and use to sort the output.
              #     See https://google.aip.dev/132#ordering.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::IDS::V1::ListEndpointsResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::IDS::V1::ListEndpointsResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def list_endpoints request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::IDS::V1::ListEndpointsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.list_endpoints.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::IDS::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.list_endpoints.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.list_endpoints.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @ids_stub.list_endpoints request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Gets details of a single Endpoint.
              #
              # @overload get_endpoint(request, options = nil)
              #   Pass arguments to `get_endpoint` via a request object, either of type
              #   {::Google::Cloud::IDS::V1::GetEndpointRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::IDS::V1::GetEndpointRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload get_endpoint(name: nil)
              #   Pass arguments to `get_endpoint` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The name of the endpoint to retrieve.
              #     Format: `projects/{project}/locations/{location}/endpoints/{endpoint}`
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::IDS::V1::Endpoint]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::IDS::V1::Endpoint]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def get_endpoint request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::IDS::V1::GetEndpointRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.get_endpoint.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::IDS::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.get_endpoint.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.get_endpoint.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @ids_stub.get_endpoint request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Creates a new Endpoint in a given project and location.
              #
              # @overload create_endpoint(request, options = nil)
              #   Pass arguments to `create_endpoint` via a request object, either of type
              #   {::Google::Cloud::IDS::V1::CreateEndpointRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::IDS::V1::CreateEndpointRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload create_endpoint(parent: nil, endpoint_id: nil, endpoint: nil, request_id: nil)
              #   Pass arguments to `create_endpoint` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The endpoint's parent.
              #   @param endpoint_id [::String]
              #     Required. The endpoint identifier. This will be part of the endpoint's
              #     resource name.
              #     This value must start with a lowercase letter followed by up to 62
              #     lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
              #     Values that do not match this pattern will trigger an INVALID_ARGUMENT
              #     error.
              #   @param endpoint [::Google::Cloud::IDS::V1::Endpoint, ::Hash]
              #     Required. The endpoint to create.
              #   @param request_id [::String]
              #     An optional request ID to identify requests. Specify a unique request ID
              #     so that if you must retry your request, the server will know to ignore
              #     the request if it has already been completed. The server will guarantee
              #     that for at least 60 minutes since the first request.
              #
              #     For example, consider a situation where you make an initial request and t
              #     he request times out. If you make the request again with the same request
              #     ID, the server can check if original operation with the same request ID
              #     was received, and if so, will ignore the second request. This prevents
              #     clients from accidentally creating duplicate commitments.
              #
              #     The request ID must be a valid UUID with the exception that zero UUID is
              #     not supported (00000000-0000-0000-0000-000000000000).
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def create_endpoint request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::IDS::V1::CreateEndpointRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.create_endpoint.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::IDS::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.create_endpoint.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.create_endpoint.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @ids_stub.create_endpoint request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Deletes a single Endpoint.
              #
              # @overload delete_endpoint(request, options = nil)
              #   Pass arguments to `delete_endpoint` via a request object, either of type
              #   {::Google::Cloud::IDS::V1::DeleteEndpointRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::IDS::V1::DeleteEndpointRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload delete_endpoint(name: nil, request_id: nil)
              #   Pass arguments to `delete_endpoint` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The name of the endpoint to delete.
              #   @param request_id [::String]
              #     An optional request ID to identify requests. Specify a unique request ID
              #     so that if you must retry your request, the server will know to ignore
              #     the request if it has already been completed. The server will guarantee
              #     that for at least 60 minutes after the first request.
              #
              #     For example, consider a situation where you make an initial request and t
              #     he request times out. If you make the request again with the same request
              #     ID, the server can check if original operation with the same request ID
              #     was received, and if so, will ignore the second request. This prevents
              #     clients from accidentally creating duplicate commitments.
              #
              #     The request ID must be a valid UUID with the exception that zero UUID is
              #     not supported (00000000-0000-0000-0000-000000000000).
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def delete_endpoint request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::IDS::V1::DeleteEndpointRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.delete_endpoint.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::IDS::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.delete_endpoint.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.delete_endpoint.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @ids_stub.delete_endpoint request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the IDS REST API.
              #
              # This class represents the configuration for IDS REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::IDS::V1::IDS::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # list_endpoints to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::IDS::V1::IDS::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.list_endpoints.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::IDS::V1::IDS::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.list_endpoints.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"ids.googleapis.com"`.
              #   @return [::String]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
              #    *  (`nil`) indicating no credentials
              #   @return [::Object]
              # @!attribute [rw] scope
              #   The OAuth scopes
              #   @return [::Array<::String>]
              # @!attribute [rw] lib_name
              #   The library name as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] lib_version
              #   The library version as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional headers to be sent with the call.
              #   @return [::Hash{::Symbol=>::String}]
              # @!attribute [rw] retry_policy
              #   The retry policy. The value is a hash with the following keys:
              #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #       trigger a retry.
              #   @return [::Hash]
              # @!attribute [rw] quota_project
              #   A separate project against which to charge quota.
              #   @return [::String]
              #
              class Configuration
                extend ::Gapic::Config

                config_attr :endpoint,      "ids.googleapis.com", ::String
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil

                # @private
                def initialize parent_config = nil
                  @parent_config = parent_config unless parent_config.nil?

                  yield self if block_given?
                end

                ##
                # Configurations for individual RPCs
                # @return [Rpcs]
                #
                def rpcs
                  @rpcs ||= begin
                    parent_rpcs = nil
                    parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                    Rpcs.new parent_rpcs
                  end
                end

                ##
                # Configuration RPC class for the IDS API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
                #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                #     include the following keys:
                #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #         trigger a retry.
                #
                class Rpcs
                  ##
                  # RPC-specific configuration for `list_endpoints`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :list_endpoints
                  ##
                  # RPC-specific configuration for `get_endpoint`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :get_endpoint
                  ##
                  # RPC-specific configuration for `create_endpoint`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :create_endpoint
                  ##
                  # RPC-specific configuration for `delete_endpoint`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :delete_endpoint

                  # @private
                  def initialize parent_rpcs = nil
                    list_endpoints_config = parent_rpcs.list_endpoints if parent_rpcs.respond_to? :list_endpoints
                    @list_endpoints = ::Gapic::Config::Method.new list_endpoints_config
                    get_endpoint_config = parent_rpcs.get_endpoint if parent_rpcs.respond_to? :get_endpoint
                    @get_endpoint = ::Gapic::Config::Method.new get_endpoint_config
                    create_endpoint_config = parent_rpcs.create_endpoint if parent_rpcs.respond_to? :create_endpoint
                    @create_endpoint = ::Gapic::Config::Method.new create_endpoint_config
                    delete_endpoint_config = parent_rpcs.delete_endpoint if parent_rpcs.respond_to? :delete_endpoint
                    @delete_endpoint = ::Gapic::Config::Method.new delete_endpoint_config

                    yield self if block_given?
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
