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
require "google/cloud/optimization/v1/fleet_routing_pb"
require "google/cloud/optimization/v1/fleet_routing/rest/service_stub"

module Google
  module Cloud
    module Optimization
      module V1
        module FleetRouting
          module Rest
            ##
            # REST client for the FleetRouting service.
            #
            # A service for optimizing vehicle tours.
            #
            # Validity of certain types of fields:
            #
            #   * `google.protobuf.Timestamp`
            #     * Times are in Unix time: seconds since 1970-01-01T00:00:00+00:00.
            #     * seconds must be in [0, 253402300799],
            #       i.e. in [1970-01-01T00:00:00+00:00, 9999-12-31T23:59:59+00:00].
            #     * nanos must be unset or set to 0.
            #   * `google.protobuf.Duration`
            #     * seconds must be in [0, 253402300799],
            #       i.e. in [1970-01-01T00:00:00+00:00, 9999-12-31T23:59:59+00:00].
            #     * nanos must be unset or set to 0.
            #   * `google.type.LatLng`
            #     * latitude must be in [-90.0, 90.0].
            #     * longitude must be in [-180.0, 180.0].
            #     * at least one of latitude and longitude must be non-zero.
            #
            class Client
              # @private
              attr_reader :fleet_routing_stub

              ##
              # Configure the FleetRouting Client class.
              #
              # See {::Google::Cloud::Optimization::V1::FleetRouting::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all FleetRouting clients
              #   ::Google::Cloud::Optimization::V1::FleetRouting::Rest::Client.configure do |config|
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
                  namespace = ["Google", "Cloud", "Optimization", "V1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.rpcs.optimize_tours.timeout = 3600.0
                  default_config.rpcs.optimize_tours.retry_policy = {
                    initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14]
                  }

                  default_config.rpcs.batch_optimize_tours.timeout = 60.0
                  default_config.rpcs.batch_optimize_tours.retry_policy = {
                    initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14]
                  }

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the FleetRouting Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::Optimization::V1::FleetRouting::Rest::Client::Configuration}
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
              # Create a new FleetRouting REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::Optimization::V1::FleetRouting::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::Optimization::V1::FleetRouting::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the FleetRouting client.
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

                @operations_client = ::Google::Cloud::Optimization::V1::FleetRouting::Rest::Operations.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                end

                @fleet_routing_stub = ::Google::Cloud::Optimization::V1::FleetRouting::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
              end

              ##
              # Get the associated client for long-running operations.
              #
              # @return [::Google::Cloud::Optimization::V1::FleetRouting::Rest::Operations]
              #
              attr_reader :operations_client

              # Service calls

              ##
              # Sends an `OptimizeToursRequest` containing a `ShipmentModel` and returns an
              # `OptimizeToursResponse` containing `ShipmentRoute`s, which are a set of
              # routes to be performed by vehicles minimizing the overall cost.
              #
              # A `ShipmentModel` model consists mainly of `Shipment`s that need to be
              # carried out and `Vehicle`s that can be used to transport the `Shipment`s.
              # The `ShipmentRoute`s assign `Shipment`s to `Vehicle`s. More specifically,
              # they assign a series of `Visit`s to each vehicle, where a `Visit`
              # corresponds to a `VisitRequest`, which is a pickup or delivery for a
              # `Shipment`.
              #
              # The goal is to provide an assignment of `ShipmentRoute`s to `Vehicle`s that
              # minimizes the total cost where cost has many components defined in the
              # `ShipmentModel`.
              #
              # @overload optimize_tours(request, options = nil)
              #   Pass arguments to `optimize_tours` via a request object, either of type
              #   {::Google::Cloud::Optimization::V1::OptimizeToursRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Optimization::V1::OptimizeToursRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload optimize_tours(parent: nil, timeout: nil, model: nil, solving_mode: nil, max_validation_errors: nil, search_mode: nil, injected_first_solution_routes: nil, injected_solution_constraint: nil, refresh_details_routes: nil, interpret_injected_solutions_using_labels: nil, consider_road_traffic: nil, populate_polylines: nil, populate_transition_polylines: nil, allow_large_deadline_despite_interruption_risk: nil, use_geodesic_distances: nil, geodesic_meters_per_second: nil, label: nil, populate_travel_step_polylines: nil)
              #   Pass arguments to `optimize_tours` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. Target project and location to make a call.
              #
              #     Format: `projects/{project-id}/locations/{location-id}`.
              #
              #     If no location is specified, a region will be chosen automatically.
              #   @param timeout [::Google::Protobuf::Duration, ::Hash]
              #     If this timeout is set, the server returns a response before the timeout
              #     period has elapsed or the server deadline for synchronous requests is
              #     reached, whichever is sooner.
              #
              #     For asynchronous requests, the server will generate a solution (if
              #     possible) before the timeout has elapsed.
              #   @param model [::Google::Cloud::Optimization::V1::ShipmentModel, ::Hash]
              #     Shipment model to solve.
              #   @param solving_mode [::Google::Cloud::Optimization::V1::OptimizeToursRequest::SolvingMode]
              #     By default, the solving mode is `DEFAULT_SOLVE` (0).
              #   @param max_validation_errors [::Integer]
              #     Truncates the number of validation errors returned. These errors are
              #     typically attached to an INVALID_ARGUMENT error payload as a BadRequest
              #     error detail (https://cloud.google.com/apis/design/errors#error_details),
              #     unless solving_mode=VALIDATE_ONLY: see the
              #     {::Google::Cloud::Optimization::V1::OptimizeToursResponse#validation_errors OptimizeToursResponse.validation_errors}
              #     field.
              #     This defaults to 100 and is capped at 10,000.
              #   @param search_mode [::Google::Cloud::Optimization::V1::OptimizeToursRequest::SearchMode]
              #     Search mode used to solve the request.
              #   @param injected_first_solution_routes [::Array<::Google::Cloud::Optimization::V1::ShipmentRoute, ::Hash>]
              #     Guide the optimization algorithm in finding a first solution that is
              #     similar to a previous solution.
              #
              #     The model is constrained when the first solution is built.
              #     Any shipments not performed on a route are implicitly skipped in the first
              #     solution, but they may be performed in successive solutions.
              #
              #     The solution must satisfy some basic validity assumptions:
              #
              #       * for all routes, `vehicle_index` must be in range and not be duplicated.
              #       * for all visits, `shipment_index` and `visit_request_index` must be
              #         in range.
              #       * a shipment may only be referenced on one route.
              #       * the pickup of a pickup-delivery shipment must be performed before
              #         the delivery.
              #       * no more than one pickup alternative or delivery alternative of
              #         a shipment may be performed.
              #       * for all routes, times are increasing (i.e., `vehicle_start_time
              #         <= visits[0].start_time <= visits[1].start_time ...
              #         <= vehicle_end_time`).
              #       * a shipment may only be performed on a vehicle that is allowed. A
              #         vehicle is allowed if
              #         {::Google::Cloud::Optimization::V1::Shipment#allowed_vehicle_indices Shipment.allowed_vehicle_indices}
              #         is empty or its `vehicle_index` is included in
              #         {::Google::Cloud::Optimization::V1::Shipment#allowed_vehicle_indices Shipment.allowed_vehicle_indices}.
              #
              #     If the injected solution is not feasible, a validation error is not
              #     necessarily returned and an error indicating infeasibility may be returned
              #     instead.
              #   @param injected_solution_constraint [::Google::Cloud::Optimization::V1::InjectedSolutionConstraint, ::Hash]
              #     Constrain the optimization algorithm to find a final solution that is
              #     similar to a previous solution. For example, this may be used to freeze
              #     portions of routes which have already been completed or which are to be
              #     completed but must not be modified.
              #
              #     If the injected solution is not feasible, a validation error is not
              #     necessarily returned and an error indicating infeasibility may be returned
              #     instead.
              #   @param refresh_details_routes [::Array<::Google::Cloud::Optimization::V1::ShipmentRoute, ::Hash>]
              #     If non-empty, the given routes will be refreshed, without modifying their
              #     underlying sequence of visits or travel times: only other details will be
              #     updated. This does not solve the model.
              #
              #     As of 2020/11, this only populates the polylines of non-empty routes and
              #     requires that `populate_polylines` is true.
              #
              #     The `route_polyline` fields of the passed-in routes may be inconsistent
              #     with route `transitions`.
              #
              #     This field must not be used together with `injected_first_solution_routes`
              #     or `injected_solution_constraint`.
              #
              #     `Shipment.ignore` and `Vehicle.ignore` have no effect on the behavior.
              #     Polylines are still populated between all visits in all non-empty routes
              #     regardless of whether the related shipments or vehicles are ignored.
              #   @param interpret_injected_solutions_using_labels [::Boolean]
              #     If true:
              #
              #       * uses
              #       {::Google::Cloud::Optimization::V1::ShipmentRoute#vehicle_label ShipmentRoute.vehicle_label}
              #       instead of `vehicle_index` to
              #         match routes in an injected solution with vehicles in the request;
              #         reuses the mapping of original
              #         {::Google::Cloud::Optimization::V1::ShipmentRoute#vehicle_index ShipmentRoute.vehicle_index}
              #         to new
              #         {::Google::Cloud::Optimization::V1::ShipmentRoute#vehicle_index ShipmentRoute.vehicle_index}
              #         to update
              #         {::Google::Cloud::Optimization::V1::InjectedSolutionConstraint::ConstraintRelaxation#vehicle_indices ConstraintRelaxation.vehicle_indices}
              #         if non-empty, but the mapping must be unambiguous (i.e., multiple
              #         `ShipmentRoute`s must not share the same original `vehicle_index`).
              #       * uses
              #       {::Google::Cloud::Optimization::V1::ShipmentRoute::Visit#shipment_label ShipmentRoute.Visit.shipment_label}
              #       instead of `shipment_index`
              #         to match visits in an injected solution with shipments in the request;
              #       * uses
              #       {::Google::Cloud::Optimization::V1::SkippedShipment#label SkippedShipment.label}
              #       instead of
              #       {::Google::Cloud::Optimization::V1::SkippedShipment#index SkippedShipment.index}
              #       to
              #         match skipped shipments in the injected solution with request
              #         shipments.
              #
              #     This interpretation applies to the `injected_first_solution_routes`,
              #     `injected_solution_constraint`, and `refresh_details_routes` fields.
              #     It can be used when shipment or vehicle indices in the request have
              #     changed since the solution was created, perhaps because shipments or
              #     vehicles have been removed from or added to the request.
              #
              #     If true, labels in the following categories must appear at most once in
              #     their category:
              #
              #       * {::Google::Cloud::Optimization::V1::Vehicle#label Vehicle.label} in the
              #       request;
              #       * {::Google::Cloud::Optimization::V1::Shipment#label Shipment.label} in the
              #       request;
              #       * {::Google::Cloud::Optimization::V1::ShipmentRoute#vehicle_label ShipmentRoute.vehicle_label} in the injected solution;
              #       * {::Google::Cloud::Optimization::V1::SkippedShipment#label SkippedShipment.label} and {::Google::Cloud::Optimization::V1::ShipmentRoute::Visit#shipment_label ShipmentRoute.Visit.shipment_label} in
              #         the injected solution (except pickup/delivery visit pairs, whose
              #         `shipment_label` must appear twice).
              #
              #     If a `vehicle_label` in the injected solution does not correspond to a
              #     request vehicle, the corresponding route is removed from the solution
              #     along with its visits. If a `shipment_label` in the injected solution does
              #     not correspond to a request shipment, the corresponding visit is removed
              #     from the solution. If a
              #     {::Google::Cloud::Optimization::V1::SkippedShipment#label SkippedShipment.label}
              #     in the injected solution does not correspond to a request shipment, the
              #     `SkippedShipment` is removed from the solution.
              #
              #     Removing route visits or entire routes from an injected solution may
              #     have an effect on the implied constraints, which may lead to change in
              #     solution, validation errors, or infeasibility.
              #
              #     NOTE: The caller must ensure that each
              #     {::Google::Cloud::Optimization::V1::Vehicle#label Vehicle.label} (resp.
              #     {::Google::Cloud::Optimization::V1::Shipment#label Shipment.label}) uniquely
              #     identifies a vehicle (resp. shipment) entity used across the two relevant
              #     requests: the past request that produced the `OptimizeToursResponse` used
              #     in the injected solution and the current request that includes the injected
              #     solution. The uniqueness checks described above are not enough to guarantee
              #     this requirement.
              #   @param consider_road_traffic [::Boolean]
              #     Consider traffic estimation in calculating `ShipmentRoute` fields
              #     {::Google::Cloud::Optimization::V1::ShipmentRoute::Transition#travel_duration Transition.travel_duration},
              #     {::Google::Cloud::Optimization::V1::ShipmentRoute::Visit#start_time Visit.start_time},
              #     and `vehicle_end_time`; in setting the
              #     {::Google::Cloud::Optimization::V1::ShipmentRoute#has_traffic_infeasibilities ShipmentRoute.has_traffic_infeasibilities}
              #     field, and in calculating the
              #     {::Google::Cloud::Optimization::V1::OptimizeToursResponse#total_cost OptimizeToursResponse.total_cost}
              #     field.
              #   @param populate_polylines [::Boolean]
              #     If true, polylines will be populated in response `ShipmentRoute`s.
              #   @param populate_transition_polylines [::Boolean]
              #     If true, polylines will be populated in response
              #     {::Google::Cloud::Optimization::V1::ShipmentRoute#transitions ShipmentRoute.transitions}.
              #     Note that in this case, the polylines will also be populated in the
              #     deprecated `travel_steps`.
              #   @param allow_large_deadline_despite_interruption_risk [::Boolean]
              #     If this is set, then the request can have a deadline
              #     (see https://grpc.io/blog/deadlines) of up to 60 minutes.
              #     Otherwise, the maximum deadline is only 30 minutes.
              #     Note that long-lived requests have a significantly larger (but still small)
              #     risk of interruption.
              #   @param use_geodesic_distances [::Boolean]
              #     If true, travel distances will be computed using geodesic distances instead
              #     of Google Maps distances, and travel times will be computed using geodesic
              #     distances with a speed defined by `geodesic_meters_per_second`.
              #   @param geodesic_meters_per_second [::Float]
              #     When `use_geodesic_distances` is true, this field must be set and defines
              #     the speed applied to compute travel times. Its value must be at least 1.0
              #     meters/seconds.
              #   @param label [::String]
              #     Label that may be used to identify this request, reported back in the
              #     {::Google::Cloud::Optimization::V1::OptimizeToursResponse#request_label OptimizeToursResponse.request_label}.
              #   @param populate_travel_step_polylines [::Boolean]
              #     Deprecated: Use
              #     {::Google::Cloud::Optimization::V1::OptimizeToursRequest#populate_transition_polylines OptimizeToursRequest.populate_transition_polylines}
              #     instead. If true, polylines will be populated in response
              #     {::Google::Cloud::Optimization::V1::ShipmentRoute#transitions ShipmentRoute.transitions}.
              #     Note that in this case, the polylines will also be populated in the
              #     deprecated `travel_steps`.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Optimization::V1::OptimizeToursResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Optimization::V1::OptimizeToursResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def optimize_tours request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Optimization::V1::OptimizeToursRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.optimize_tours.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Optimization::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.optimize_tours.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.optimize_tours.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @fleet_routing_stub.optimize_tours request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Optimizes vehicle tours for one or more `OptimizeToursRequest`
              # messages as a batch.
              #
              # This method is a Long Running Operation (LRO). The inputs for optimization
              # (`OptimizeToursRequest` messages) and outputs (`OptimizeToursResponse`
              # messages) are read/written from/to Cloud Storage in user-specified
              # format. Like the `OptimizeTours` method, each `OptimizeToursRequest`
              # contains a `ShipmentModel` and returns an `OptimizeToursResponse`
              # containing `ShipmentRoute`s, which are a set of routes to be performed by
              # vehicles minimizing the overall cost.
              #
              # @overload batch_optimize_tours(request, options = nil)
              #   Pass arguments to `batch_optimize_tours` via a request object, either of type
              #   {::Google::Cloud::Optimization::V1::BatchOptimizeToursRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Optimization::V1::BatchOptimizeToursRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload batch_optimize_tours(parent: nil, model_configs: nil)
              #   Pass arguments to `batch_optimize_tours` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. Target project and location to make a call.
              #
              #     Format: `projects/{project-id}/locations/{location-id}`.
              #
              #     If no location is specified, a region will be chosen automatically.
              #   @param model_configs [::Array<::Google::Cloud::Optimization::V1::BatchOptimizeToursRequest::AsyncModelConfig, ::Hash>]
              #     Required. Input/Output information each purchase model, such as file paths
              #     and data formats.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def batch_optimize_tours request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Optimization::V1::BatchOptimizeToursRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.batch_optimize_tours.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Optimization::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.batch_optimize_tours.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.batch_optimize_tours.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @fleet_routing_stub.batch_optimize_tours request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the FleetRouting REST API.
              #
              # This class represents the configuration for FleetRouting REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::Optimization::V1::FleetRouting::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # optimize_tours to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::Optimization::V1::FleetRouting::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.optimize_tours.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::Optimization::V1::FleetRouting::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.optimize_tours.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"cloudoptimization.googleapis.com"`.
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

                config_attr :endpoint,      "cloudoptimization.googleapis.com", ::String
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
                # Configuration RPC class for the FleetRouting API.
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
                  # RPC-specific configuration for `optimize_tours`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :optimize_tours
                  ##
                  # RPC-specific configuration for `batch_optimize_tours`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :batch_optimize_tours

                  # @private
                  def initialize parent_rpcs = nil
                    optimize_tours_config = parent_rpcs.optimize_tours if parent_rpcs.respond_to? :optimize_tours
                    @optimize_tours = ::Gapic::Config::Method.new optimize_tours_config
                    batch_optimize_tours_config = parent_rpcs.batch_optimize_tours if parent_rpcs.respond_to? :batch_optimize_tours
                    @batch_optimize_tours = ::Gapic::Config::Method.new batch_optimize_tours_config

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
