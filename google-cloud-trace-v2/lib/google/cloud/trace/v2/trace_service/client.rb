# frozen_string_literal: true

# Copyright 2020 Google LLC
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
require "google/devtools/cloudtrace/v2/tracing_pb"

module Google
  module Cloud
    module Trace
      module V2
        module TraceService
          ##
          # Client for the TraceService service.
          #
          # Service for collecting and viewing traces and spans within a trace.
          #
          # A trace is a collection of spans corresponding to a single
          # operation or a set of operations in an application.
          #
          # A span is an individual timed event which forms a node of the trace tree.
          # A single trace can contain spans from multiple services.
          #
          class Client
            include Paths

            # @private
            attr_reader :trace_service_stub

            ##
            # Configure the TraceService Client class.
            #
            # See {::Google::Cloud::Trace::V2::TraceService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all TraceService clients
            #   ::Google::Cloud::Trace::V2::TraceService::Client.configure do |config|
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
                namespace = ["Google", "Cloud", "Trace", "V2"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                    default_config.rpcs.batch_write_spans.timeout = 120.0
                    default_config.rpcs.batch_write_spans.retry_policy ={
                initial_delay: 0.1, max_delay: 30.0, multiplier: 2, retry_codes: [14, 4]
                }

                    default_config.rpcs.create_span.timeout = 120.0
                    default_config.rpcs.create_span.retry_policy ={
                initial_delay: 0.1, max_delay: 1.0, multiplier: 1.2, retry_codes: [14, 4]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the TraceService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::Trace::V2::TraceService::Client::Configuration}
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
            # Create a new TraceService client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::Trace::V2::TraceService::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::Trace::V2::TraceService::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the TraceService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/devtools/cloudtrace/v2/tracing_services_pb"

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

              @trace_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::Trace::V2::TraceService::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            # Service calls

            ##
            # Batch writes new spans to new or existing traces. You cannot update
            # existing spans.
            #
            # @overload batch_write_spans(request, options = nil)
            #   Pass arguments to `batch_write_spans` via a request object, either of type
            #   {::Google::Cloud::Trace::V2::BatchWriteSpansRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Trace::V2::BatchWriteSpansRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload batch_write_spans(name: nil, spans: nil)
            #   Pass arguments to `batch_write_spans` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The name of the project where the spans belong. The format is
            #     `projects/[PROJECT_ID]`.
            #   @param spans [::Array<::Google::Cloud::Trace::V2::Span, ::Hash>]
            #     Required. A list of new spans. The span names must not match existing
            #     spans, otherwise the results are undefined.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Protobuf::Empty]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Protobuf::Empty]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/trace/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Trace::V2::TraceService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Trace::V2::BatchWriteSpansRequest.new
            #
            #   # Call the batch_write_spans method.
            #   result = client.batch_write_spans request
            #
            #   # The returned object is of type Google::Protobuf::Empty.
            #   p result
            #
            def batch_write_spans request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Trace::V2::BatchWriteSpansRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.batch_write_spans.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Trace::V2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.batch_write_spans.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.batch_write_spans.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @trace_service_stub.call_rpc :batch_write_spans, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Creates a new span.
            #
            # @overload create_span(request, options = nil)
            #   Pass arguments to `create_span` via a request object, either of type
            #   {::Google::Cloud::Trace::V2::Span} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Trace::V2::Span, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload create_span(name: nil, span_id: nil, parent_span_id: nil, display_name: nil, start_time: nil, end_time: nil, attributes: nil, stack_trace: nil, time_events: nil, links: nil, status: nil, same_process_as_parent_span: nil, child_span_count: nil, span_kind: nil)
            #   Pass arguments to `create_span` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The resource name of the span in the following format:
            #
            #      * `projects/[PROJECT_ID]/traces/[TRACE_ID]/spans/[SPAN_ID]`
            #
            #     `[TRACE_ID]` is a unique identifier for a trace within a project;
            #     it is a 32-character hexadecimal encoding of a 16-byte array. It should
            #     not be zero.
            #
            #     `[SPAN_ID]` is a unique identifier for a span within a trace; it
            #     is a 16-character hexadecimal encoding of an 8-byte array. It should not
            #     be zero.
            #     .
            #   @param span_id [::String]
            #     Required. The `[SPAN_ID]` portion of the span's resource name.
            #   @param parent_span_id [::String]
            #     The `[SPAN_ID]` of this span's parent span. If this is a root span,
            #     then this field must be empty.
            #   @param display_name [::Google::Cloud::Trace::V2::TruncatableString, ::Hash]
            #     Required. A description of the span's operation (up to 128 bytes).
            #     Cloud Trace displays the description in the
            #     Cloud console.
            #     For example, the display name can be a qualified method name or a file name
            #     and a line number where the operation is called. A best practice is to use
            #     the same display name within an application and at the same call point.
            #     This makes it easier to correlate spans in different traces.
            #   @param start_time [::Google::Protobuf::Timestamp, ::Hash]
            #     Required. The start time of the span. On the client side, this is the time
            #     kept by the local machine where the span execution starts. On the server
            #     side, this is the time when the server's application handler starts
            #     running.
            #   @param end_time [::Google::Protobuf::Timestamp, ::Hash]
            #     Required. The end time of the span. On the client side, this is the time
            #     kept by the local machine where the span execution ends. On the server
            #     side, this is the time when the server application handler stops running.
            #   @param attributes [::Google::Cloud::Trace::V2::Span::Attributes, ::Hash]
            #     A set of attributes on the span. You can have up to 32 attributes per
            #     span.
            #   @param stack_trace [::Google::Cloud::Trace::V2::StackTrace, ::Hash]
            #     Stack trace captured at the start of the span.
            #   @param time_events [::Google::Cloud::Trace::V2::Span::TimeEvents, ::Hash]
            #     A set of time events. You can have up to 32 annotations and 128 message
            #     events per span.
            #   @param links [::Google::Cloud::Trace::V2::Span::Links, ::Hash]
            #     Links associated with the span. You can have up to 128 links per Span.
            #   @param status [::Google::Rpc::Status, ::Hash]
            #     Optional. The final status for this span.
            #   @param same_process_as_parent_span [::Google::Protobuf::BoolValue, ::Hash]
            #     Optional. Set this parameter to indicate whether this span is in
            #     the same process as its parent. If you do not set this parameter,
            #     Trace is unable to take advantage of this helpful information.
            #   @param child_span_count [::Google::Protobuf::Int32Value, ::Hash]
            #     Optional. The number of child spans that were generated while this span
            #     was active. If set, allows implementation to detect missing child spans.
            #   @param span_kind [::Google::Cloud::Trace::V2::Span::SpanKind]
            #     Optional. Distinguishes between spans generated in a particular context.
            #     For example, two spans with the same name may be distinguished using
            #     `CLIENT` (caller) and `SERVER` (callee) to identify an RPC call.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Trace::V2::Span]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Trace::V2::Span]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/trace/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::Trace::V2::TraceService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::Trace::V2::Span.new
            #
            #   # Call the create_span method.
            #   result = client.create_span request
            #
            #   # The returned object is of type Google::Cloud::Trace::V2::Span.
            #   p result
            #
            def create_span request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Trace::V2::Span

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.create_span.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Trace::V2::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.create_span.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.create_span.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @trace_service_stub.call_rpc :create_span, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the TraceService API.
            #
            # This class represents the configuration for TraceService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::Trace::V2::TraceService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # batch_write_spans to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::Trace::V2::TraceService::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.batch_write_spans.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::Trace::V2::TraceService::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.batch_write_spans.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"cloudtrace.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
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
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
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

              config_attr :endpoint,      "cloudtrace.googleapis.com", ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  {"grpc.service_config_disable_resolution"=>1}, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
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
              # Configuration RPC class for the TraceService API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
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
                # RPC-specific configuration for `batch_write_spans`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :batch_write_spans
                ##
                # RPC-specific configuration for `create_span`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :create_span

                # @private
                def initialize parent_rpcs = nil
                  batch_write_spans_config = parent_rpcs.batch_write_spans if parent_rpcs.respond_to? :batch_write_spans
                  @batch_write_spans = ::Gapic::Config::Method.new batch_write_spans_config
                  create_span_config = parent_rpcs.create_span if parent_rpcs.respond_to? :create_span
                  @create_span = ::Gapic::Config::Method.new create_span_config

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

