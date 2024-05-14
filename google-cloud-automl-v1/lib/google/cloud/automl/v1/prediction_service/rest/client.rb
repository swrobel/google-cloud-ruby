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
require "google/cloud/automl/v1/prediction_service_pb"
require "google/cloud/automl/v1/prediction_service/rest/service_stub"

module Google
  module Cloud
    module AutoML
      module V1
        module PredictionService
          module Rest
            ##
            # REST client for the PredictionService service.
            #
            # AutoML Prediction API.
            #
            # On any input that is documented to expect a string parameter in
            # snake_case or dash-case, either of those cases is accepted.
            #
            class Client
              # @private
              API_VERSION = ""

              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "automl.$UNIVERSE_DOMAIN$"

              include Paths

              # @private
              attr_reader :prediction_service_stub

              ##
              # Configure the PredictionService Client class.
              #
              # See {::Google::Cloud::AutoML::V1::PredictionService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all PredictionService clients
              #   ::Google::Cloud::AutoML::V1::PredictionService::Rest::Client.configure do |config|
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
                  namespace = ["Google", "Cloud", "AutoML", "V1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.rpcs.predict.timeout = 60.0

                  default_config.rpcs.batch_predict.timeout = 60.0

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the PredictionService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::AutoML::V1::PredictionService::Rest::Client::Configuration}
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
              # The effective universe domain
              #
              # @return [String]
              #
              def universe_domain
                @prediction_service_stub.universe_domain
              end

              ##
              # Create a new PredictionService REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::AutoML::V1::PredictionService::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::AutoML::V1::PredictionService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the PredictionService client.
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
                enable_self_signed_jwt = @config.endpoint.nil? ||
                                         (@config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                         !@config.endpoint.split(".").first.include?("-"))
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @operations_client = ::Google::Cloud::AutoML::V1::PredictionService::Rest::Operations.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                  config.universe_domain = @config.universe_domain
                end

                @prediction_service_stub = ::Google::Cloud::AutoML::V1::PredictionService::Rest::ServiceStub.new(
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  credentials: credentials
                )
              end

              ##
              # Get the associated client for long-running operations.
              #
              # @return [::Google::Cloud::AutoML::V1::PredictionService::Rest::Operations]
              #
              attr_reader :operations_client

              # Service calls

              ##
              # Perform an online prediction. The prediction result is directly
              # returned in the response.
              # Available for following ML scenarios, and their expected request payloads:
              #
              # AutoML Vision Classification
              #
              # * An image in .JPEG, .GIF or .PNG format, image_bytes up to 30MB.
              #
              # AutoML Vision Object Detection
              #
              # * An image in .JPEG, .GIF or .PNG format, image_bytes up to 30MB.
              #
              # AutoML Natural Language Classification
              #
              # * A TextSnippet up to 60,000 characters, UTF-8 encoded or a document in
              # .PDF, .TIF or .TIFF format with size upto 2MB.
              #
              # AutoML Natural Language Entity Extraction
              #
              # * A TextSnippet up to 10,000 characters, UTF-8 NFC encoded or a document
              #  in .PDF, .TIF or .TIFF format with size upto 20MB.
              #
              # AutoML Natural Language Sentiment Analysis
              #
              # * A TextSnippet up to 60,000 characters, UTF-8 encoded or a document in
              # .PDF, .TIF or .TIFF format with size upto 2MB.
              #
              # AutoML Translation
              #
              # * A TextSnippet up to 25,000 characters, UTF-8 encoded.
              #
              # AutoML Tables
              #
              # * A row with column values matching
              #   the columns of the model, up to 5MB. Not available for FORECASTING
              #   `prediction_type`.
              #
              # @overload predict(request, options = nil)
              #   Pass arguments to `predict` via a request object, either of type
              #   {::Google::Cloud::AutoML::V1::PredictRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::AutoML::V1::PredictRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload predict(name: nil, payload: nil, params: nil)
              #   Pass arguments to `predict` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. Name of the model requested to serve the prediction.
              #   @param payload [::Google::Cloud::AutoML::V1::ExamplePayload, ::Hash]
              #     Required. Payload to perform a prediction on. The payload must match the
              #     problem type that the model was trained to solve.
              #   @param params [::Hash{::String => ::String}]
              #     Additional domain-specific parameters, any string must be up to 25000
              #     characters long.
              #
              #     AutoML Vision Classification
              #
              #     `score_threshold`
              #     : (float) A value from 0.0 to 1.0. When the model
              #       makes predictions for an image, it will only produce results that have
              #       at least this confidence score. The default is 0.5.
              #
              #     AutoML Vision Object Detection
              #
              #     `score_threshold`
              #     : (float) When Model detects objects on the image,
              #       it will only produce bounding boxes which have at least this
              #       confidence score. Value in 0 to 1 range, default is 0.5.
              #
              #     `max_bounding_box_count`
              #     : (int64) The maximum number of bounding
              #       boxes returned. The default is 100. The
              #       number of returned bounding boxes might be limited by the server.
              #
              #     AutoML Tables
              #
              #     `feature_importance`
              #     : (boolean) Whether
              #     [feature_importance][google.cloud.automl.v1.TablesModelColumnInfo.feature_importance]
              #       is populated in the returned list of
              #       [TablesAnnotation][google.cloud.automl.v1.TablesAnnotation]
              #       objects. The default is false.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AutoML::V1::PredictResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AutoML::V1::PredictResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/automl/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::AutoML::V1::PredictionService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::AutoML::V1::PredictRequest.new
              #
              #   # Call the predict method.
              #   result = client.predict request
              #
              #   # The returned object is of type Google::Cloud::AutoML::V1::PredictResponse.
              #   p result
              #
              def predict request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AutoML::V1::PredictRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.predict.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::AutoML::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.predict.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.predict.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @prediction_service_stub.predict request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Perform a batch prediction. Unlike the online {::Google::Cloud::AutoML::V1::PredictionService::Rest::Client#predict Predict}, batch
              # prediction result won't be immediately available in the response. Instead,
              # a long running operation object is returned. User can poll the operation
              # result via GetOperation
              # method. Once the operation is done, {::Google::Cloud::AutoML::V1::BatchPredictResult BatchPredictResult} is returned in
              # the {::Google::Longrunning::Operation#response response} field.
              # Available for following ML scenarios:
              #
              # * AutoML Vision Classification
              # * AutoML Vision Object Detection
              # * AutoML Video Intelligence Classification
              # * AutoML Video Intelligence Object Tracking * AutoML Natural Language Classification
              # * AutoML Natural Language Entity Extraction
              # * AutoML Natural Language Sentiment Analysis
              # * AutoML Tables
              #
              # @overload batch_predict(request, options = nil)
              #   Pass arguments to `batch_predict` via a request object, either of type
              #   {::Google::Cloud::AutoML::V1::BatchPredictRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::AutoML::V1::BatchPredictRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload batch_predict(name: nil, input_config: nil, output_config: nil, params: nil)
              #   Pass arguments to `batch_predict` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. Name of the model requested to serve the batch prediction.
              #   @param input_config [::Google::Cloud::AutoML::V1::BatchPredictInputConfig, ::Hash]
              #     Required. The input configuration for batch prediction.
              #   @param output_config [::Google::Cloud::AutoML::V1::BatchPredictOutputConfig, ::Hash]
              #     Required. The Configuration specifying where output predictions should
              #     be written.
              #   @param params [::Hash{::String => ::String}]
              #     Additional domain-specific parameters for the predictions, any string must
              #     be up to 25000 characters long.
              #
              #     AutoML Natural Language Classification
              #
              #     `score_threshold`
              #     : (float) A value from 0.0 to 1.0. When the model
              #       makes predictions for a text snippet, it will only produce results
              #       that have at least this confidence score. The default is 0.5.
              #
              #
              #     AutoML Vision Classification
              #
              #     `score_threshold`
              #     : (float) A value from 0.0 to 1.0. When the model
              #       makes predictions for an image, it will only produce results that
              #       have at least this confidence score. The default is 0.5.
              #
              #     AutoML Vision Object Detection
              #
              #     `score_threshold`
              #     : (float) When Model detects objects on the image,
              #       it will only produce bounding boxes which have at least this
              #       confidence score. Value in 0 to 1 range, default is 0.5.
              #
              #     `max_bounding_box_count`
              #     : (int64) The maximum number of bounding
              #       boxes returned per image. The default is 100, the
              #       number of bounding boxes returned might be limited by the server.
              #     AutoML Video Intelligence Classification
              #
              #     `score_threshold`
              #     : (float) A value from 0.0 to 1.0. When the model
              #       makes predictions for a video, it will only produce results that
              #       have at least this confidence score. The default is 0.5.
              #
              #     `segment_classification`
              #     : (boolean) Set to true to request
              #       segment-level classification. AutoML Video Intelligence returns
              #       labels and their confidence scores for the entire segment of the
              #       video that user specified in the request configuration.
              #       The default is true.
              #
              #     `shot_classification`
              #     : (boolean) Set to true to request shot-level
              #       classification. AutoML Video Intelligence determines the boundaries
              #       for each camera shot in the entire segment of the video that user
              #       specified in the request configuration. AutoML Video Intelligence
              #       then returns labels and their confidence scores for each detected
              #       shot, along with the start and end time of the shot.
              #       The default is false.
              #
              #       WARNING: Model evaluation is not done for this classification type,
              #       the quality of it depends on training data, but there are no metrics
              #       provided to describe that quality.
              #
              #     `1s_interval_classification`
              #     : (boolean) Set to true to request
              #       classification for a video at one-second intervals. AutoML Video
              #       Intelligence returns labels and their confidence scores for each
              #       second of the entire segment of the video that user specified in the
              #       request configuration. The default is false.
              #
              #       WARNING: Model evaluation is not done for this classification
              #       type, the quality of it depends on training data, but there are no
              #       metrics provided to describe that quality.
              #
              #     AutoML Video Intelligence Object Tracking
              #
              #     `score_threshold`
              #     : (float) When Model detects objects on video frames,
              #       it will only produce bounding boxes which have at least this
              #       confidence score. Value in 0 to 1 range, default is 0.5.
              #
              #     `max_bounding_box_count`
              #     : (int64) The maximum number of bounding
              #       boxes returned per image. The default is 100, the
              #       number of bounding boxes returned might be limited by the server.
              #
              #     `min_bounding_box_size`
              #     : (float) Only bounding boxes with shortest edge
              #       at least that long as a relative value of video frame size are
              #       returned. Value in 0 to 1 range. Default is 0.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/automl/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::AutoML::V1::PredictionService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::AutoML::V1::BatchPredictRequest.new
              #
              #   # Call the batch_predict method.
              #   result = client.batch_predict request
              #
              #   # The returned object is of type Gapic::Operation. You can use it to
              #   # check the status of an operation, cancel it, or wait for results.
              #   # Here is how to wait for a response.
              #   result.wait_until_done! timeout: 60
              #   if result.response?
              #     p result.response
              #   else
              #     puts "No response received."
              #   end
              #
              def batch_predict request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::AutoML::V1::BatchPredictRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.batch_predict.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::AutoML::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.batch_predict.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.batch_predict.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @prediction_service_stub.batch_predict request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the PredictionService REST API.
              #
              # This class represents the configuration for PredictionService REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::AutoML::V1::PredictionService::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # predict to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::AutoML::V1::PredictionService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.predict.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::AutoML::V1::PredictionService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.predict.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   A custom service endpoint, as a hostname or hostname:port. The default is
              #   nil, indicating to use the default endpoint in the current universe domain.
              #   @return [::String,nil]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
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
              # @!attribute [rw] universe_domain
              #   The universe domain within which to make requests. This determines the
              #   default endpoint URL. The default value of nil uses the environment
              #   universe (usually the default "googleapis.com" universe).
              #   @return [::String,nil]
              #
              class Configuration
                extend ::Gapic::Config

                # @private
                # The endpoint specific to the default "googleapis.com" universe. Deprecated.
                DEFAULT_ENDPOINT = "automl.googleapis.com"

                config_attr :endpoint,      nil, ::String, nil
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
                config_attr :universe_domain, nil, ::String, nil

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
                # Configuration RPC class for the PredictionService API.
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
                  # RPC-specific configuration for `predict`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :predict
                  ##
                  # RPC-specific configuration for `batch_predict`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :batch_predict

                  # @private
                  def initialize parent_rpcs = nil
                    predict_config = parent_rpcs.predict if parent_rpcs.respond_to? :predict
                    @predict = ::Gapic::Config::Method.new predict_config
                    batch_predict_config = parent_rpcs.batch_predict if parent_rpcs.respond_to? :batch_predict
                    @batch_predict = ::Gapic::Config::Method.new batch_predict_config

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
