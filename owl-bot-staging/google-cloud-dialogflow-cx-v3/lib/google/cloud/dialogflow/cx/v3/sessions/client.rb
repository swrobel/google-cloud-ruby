# frozen_string_literal: true

# Copyright 2022 Google LLC
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
require "google/cloud/dialogflow/cx/v3/session_pb"

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          module Sessions
            ##
            # Client for the Sessions service.
            #
            # A session represents an interaction with a user. You retrieve user input
            # and pass it to the {::Google::Cloud::Dialogflow::CX::V3::Sessions::Client#detect_intent DetectIntent} method to determine
            # user intent and respond.
            #
            class Client
              include Paths

              # @private
              attr_reader :sessions_stub

              ##
              # Configure the Sessions Client class.
              #
              # See {::Google::Cloud::Dialogflow::CX::V3::Sessions::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all Sessions clients
              #   ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.configure do |config|
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
                  namespace = ["Google", "Cloud", "Dialogflow", "CX", "V3"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.timeout = 60.0
                  default_config.retry_policy = {
                    initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [14]
                  }

                  default_config.rpcs.detect_intent.timeout = 220.0
                  default_config.rpcs.detect_intent.retry_policy = {
                    initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [14]
                  }

                  default_config.rpcs.streaming_detect_intent.timeout = 220.0

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the Sessions Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::Dialogflow::CX::V3::Sessions::Client::Configuration}
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
              # Create a new Sessions client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Sessions client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # These require statements are intentionally placed here to initialize
                # the gRPC module only when it's required.
                # See https://github.com/googleapis/toolkit/issues/446
                require "gapic/grpc"
                require "google/cloud/dialogflow/cx/v3/session_services_pb"

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

                @sessions_stub = ::Gapic::ServiceStub.new(
                  ::Google::Cloud::Dialogflow::CX::V3::Sessions::Stub,
                  credentials:  credentials,
                  endpoint:     @config.endpoint,
                  channel_args: @config.channel_args,
                  interceptors: @config.interceptors
                )
              end

              # Service calls

              ##
              # Processes a natural language query and returns structured, actionable data
              # as a result. This method is not idempotent, because it may cause session
              # entity types to be updated, which in turn might affect results of future
              # queries.
              #
              # Note: Always use agent versions for production traffic.
              # See [Versions and
              # environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).
              #
              # @overload detect_intent(request, options = nil)
              #   Pass arguments to `detect_intent` via a request object, either of type
              #   {::Google::Cloud::Dialogflow::CX::V3::DetectIntentRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dialogflow::CX::V3::DetectIntentRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload detect_intent(session: nil, query_params: nil, query_input: nil, output_audio_config: nil)
              #   Pass arguments to `detect_intent` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param session [::String]
              #     Required. The name of the session this query is sent to.
              #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
              #     ID>/sessions/<Session ID>` or `projects/<Project ID>/locations/<Location
              #     ID>/agents/<Agent ID>/environments/<Environment ID>/sessions/<Session ID>`.
              #     If `Environment ID` is not specified, we assume default 'draft'
              #     environment.
              #     It's up to the API caller to choose an appropriate `Session ID`. It can be
              #     a random number or some type of session identifiers (preferably hashed).
              #     The length of the `Session ID` must not exceed 36 characters.
              #
              #     For more information, see the [sessions
              #     guide](https://cloud.google.com/dialogflow/cx/docs/concept/session).
              #
              #     Note: Always use agent versions for production traffic.
              #     See [Versions and
              #     environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).
              #   @param query_params [::Google::Cloud::Dialogflow::CX::V3::QueryParameters, ::Hash]
              #     The parameters of this query.
              #   @param query_input [::Google::Cloud::Dialogflow::CX::V3::QueryInput, ::Hash]
              #     Required. The input specification.
              #   @param output_audio_config [::Google::Cloud::Dialogflow::CX::V3::OutputAudioConfig, ::Hash]
              #     Instructs the speech synthesizer how to generate the output audio.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Google::Cloud::Dialogflow::CX::V3::DetectIntentResponse]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Google::Cloud::Dialogflow::CX::V3::DetectIntentResponse]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/cloud/dialogflow/cx/v3"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Dialogflow::CX::V3::DetectIntentRequest.new
              #
              #   # Call the detect_intent method.
              #   result = client.detect_intent request
              #
              #   # The returned object is of type Google::Cloud::Dialogflow::CX::V3::DetectIntentResponse.
              #   p result
              #
              def detect_intent request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dialogflow::CX::V3::DetectIntentRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.detect_intent.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dialogflow::CX::V3::VERSION
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                header_params = {}
                if request.session
                  header_params["session"] = request.session
                end

                request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
                metadata[:"x-goog-request-params"] ||= request_params_header

                options.apply_defaults timeout:      @config.rpcs.detect_intent.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.detect_intent.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @sessions_stub.call_rpc :detect_intent, request, options: options do |response, operation|
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Processes a natural language query in audio format in a streaming fashion
              # and returns structured, actionable data as a result. This method is only
              # available via the gRPC API (not REST).
              #
              # Note: Always use agent versions for production traffic.
              # See [Versions and
              # environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).
              #
              # @param request [::Gapic::StreamInput, ::Enumerable<::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentRequest, ::Hash>]
              #   An enumerable of {::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentRequest} instances.
              # @param options [::Gapic::CallOptions, ::Hash]
              #   Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Enumerable<::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentResponse>]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Enumerable<::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentResponse>]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/cloud/dialogflow/cx/v3"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new
              #
              #   # Create an input stream
              #   input = Gapic::StreamInput.new
              #
              #   # Call the streaming_detect_intent method to start streaming.
              #   output = client.streaming_detect_intent input
              #
              #   # Send requests on the stream. For each request, pass in keyword
              #   # arguments to set fields. Be sure to close the stream when done.
              #   input << Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentRequest.new
              #   input << Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentRequest.new
              #   input.close
              #
              #   # Handle streamed responses. These may be interleaved with inputs.
              #   # Each response is of type ::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentResponse.
              #   output.each do |response|
              #     p response
              #   end
              #
              def streaming_detect_intent request, options = nil
                unless request.is_a? ::Enumerable
                  raise ::ArgumentError, "request must be an Enumerable" unless request.respond_to? :to_enum
                  request = request.to_enum
                end

                request = request.lazy.map do |req|
                  ::Gapic::Protobuf.coerce req, to: ::Google::Cloud::Dialogflow::CX::V3::StreamingDetectIntentRequest
                end

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.streaming_detect_intent.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dialogflow::CX::V3::VERSION
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.streaming_detect_intent.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.streaming_detect_intent.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @sessions_stub.call_rpc :streaming_detect_intent, request, options: options do |response, operation|
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Returns preliminary intent match results, doesn't change the session
              # status.
              #
              # @overload match_intent(request, options = nil)
              #   Pass arguments to `match_intent` via a request object, either of type
              #   {::Google::Cloud::Dialogflow::CX::V3::MatchIntentRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dialogflow::CX::V3::MatchIntentRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload match_intent(session: nil, query_params: nil, query_input: nil)
              #   Pass arguments to `match_intent` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param session [::String]
              #     Required. The name of the session this query is sent to.
              #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
              #     ID>/sessions/<Session ID>` or `projects/<Project ID>/locations/<Location
              #     ID>/agents/<Agent ID>/environments/<Environment ID>/sessions/<Session ID>`.
              #     If `Environment ID` is not specified, we assume default 'draft'
              #     environment.
              #     It's up to the API caller to choose an appropriate `Session ID`. It can be
              #     a random number or some type of session identifiers (preferably hashed).
              #     The length of the `Session ID` must not exceed 36 characters.
              #
              #     For more information, see the [sessions
              #     guide](https://cloud.google.com/dialogflow/cx/docs/concept/session).
              #   @param query_params [::Google::Cloud::Dialogflow::CX::V3::QueryParameters, ::Hash]
              #     The parameters of this query.
              #   @param query_input [::Google::Cloud::Dialogflow::CX::V3::QueryInput, ::Hash]
              #     Required. The input specification.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Google::Cloud::Dialogflow::CX::V3::MatchIntentResponse]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Google::Cloud::Dialogflow::CX::V3::MatchIntentResponse]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/cloud/dialogflow/cx/v3"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Dialogflow::CX::V3::MatchIntentRequest.new
              #
              #   # Call the match_intent method.
              #   result = client.match_intent request
              #
              #   # The returned object is of type Google::Cloud::Dialogflow::CX::V3::MatchIntentResponse.
              #   p result
              #
              def match_intent request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dialogflow::CX::V3::MatchIntentRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.match_intent.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dialogflow::CX::V3::VERSION
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                header_params = {}
                if request.session
                  header_params["session"] = request.session
                end

                request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
                metadata[:"x-goog-request-params"] ||= request_params_header

                options.apply_defaults timeout:      @config.rpcs.match_intent.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.match_intent.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @sessions_stub.call_rpc :match_intent, request, options: options do |response, operation|
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Fulfills a matched intent returned by {::Google::Cloud::Dialogflow::CX::V3::Sessions::Client#match_intent MatchIntent}.
              # Must be called after {::Google::Cloud::Dialogflow::CX::V3::Sessions::Client#match_intent MatchIntent}, with input from
              # {::Google::Cloud::Dialogflow::CX::V3::MatchIntentResponse MatchIntentResponse}. Otherwise, the behavior is undefined.
              #
              # @overload fulfill_intent(request, options = nil)
              #   Pass arguments to `fulfill_intent` via a request object, either of type
              #   {::Google::Cloud::Dialogflow::CX::V3::FulfillIntentRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dialogflow::CX::V3::FulfillIntentRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload fulfill_intent(match_intent_request: nil, match: nil, output_audio_config: nil)
              #   Pass arguments to `fulfill_intent` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param match_intent_request [::Google::Cloud::Dialogflow::CX::V3::MatchIntentRequest, ::Hash]
              #     Must be same as the corresponding MatchIntent request, otherwise the
              #     behavior is undefined.
              #   @param match [::Google::Cloud::Dialogflow::CX::V3::Match, ::Hash]
              #     The matched intent/event to fulfill.
              #   @param output_audio_config [::Google::Cloud::Dialogflow::CX::V3::OutputAudioConfig, ::Hash]
              #     Instructs the speech synthesizer how to generate output audio.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Google::Cloud::Dialogflow::CX::V3::FulfillIntentResponse]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Google::Cloud::Dialogflow::CX::V3::FulfillIntentResponse]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/cloud/dialogflow/cx/v3"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Dialogflow::CX::V3::FulfillIntentRequest.new
              #
              #   # Call the fulfill_intent method.
              #   result = client.fulfill_intent request
              #
              #   # The returned object is of type Google::Cloud::Dialogflow::CX::V3::FulfillIntentResponse.
              #   p result
              #
              def fulfill_intent request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dialogflow::CX::V3::FulfillIntentRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.fulfill_intent.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dialogflow::CX::V3::VERSION
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                header_params = {}
                if request.match_intent_request&.session
                  header_params["match_intent_request.session"] = request.match_intent_request.session
                end

                request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
                metadata[:"x-goog-request-params"] ||= request_params_header

                options.apply_defaults timeout:      @config.rpcs.fulfill_intent.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.fulfill_intent.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @sessions_stub.call_rpc :fulfill_intent, request, options: options do |response, operation|
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the Sessions API.
              #
              # This class represents the configuration for Sessions,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::Dialogflow::CX::V3::Sessions::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # detect_intent to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.detect_intent.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::Dialogflow::CX::V3::Sessions::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.detect_intent.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"dialogflow.googleapis.com"`.
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

                config_attr :endpoint,      "dialogflow.googleapis.com", ::String
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
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
                # Configuration RPC class for the Sessions API.
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
                  # RPC-specific configuration for `detect_intent`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :detect_intent
                  ##
                  # RPC-specific configuration for `streaming_detect_intent`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :streaming_detect_intent
                  ##
                  # RPC-specific configuration for `match_intent`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :match_intent
                  ##
                  # RPC-specific configuration for `fulfill_intent`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :fulfill_intent

                  # @private
                  def initialize parent_rpcs = nil
                    detect_intent_config = parent_rpcs.detect_intent if parent_rpcs.respond_to? :detect_intent
                    @detect_intent = ::Gapic::Config::Method.new detect_intent_config
                    streaming_detect_intent_config = parent_rpcs.streaming_detect_intent if parent_rpcs.respond_to? :streaming_detect_intent
                    @streaming_detect_intent = ::Gapic::Config::Method.new streaming_detect_intent_config
                    match_intent_config = parent_rpcs.match_intent if parent_rpcs.respond_to? :match_intent
                    @match_intent = ::Gapic::Config::Method.new match_intent_config
                    fulfill_intent_config = parent_rpcs.fulfill_intent if parent_rpcs.respond_to? :fulfill_intent
                    @fulfill_intent = ::Gapic::Config::Method.new fulfill_intent_config

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
