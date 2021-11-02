# frozen_string_literal: true

# Copyright 2021 Google LLC
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


module Google
  module Cloud
    module ServiceManagement
      module V1
        # Request message for `ListServices` method.
        # @!attribute [rw] producer_project_id
        #   @return [::String]
        #     Include services produced by the specified project.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The max number of items to include in the response list. Page size is 50
        #     if not specified. Maximum value is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Token identifying which result to start with; returned by a previous list
        #     call.
        # @!attribute [rw] consumer_id
        #   @return [::String]
        #     Include services consumed by the specified consumer.
        #
        #     The Google Service Management implementation accepts the following
        #     forms:
        #     - project:<project_id>
        class ListServicesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for `ListServices` method.
        # @!attribute [rw] services
        #   @return [::Array<::Google::Cloud::ServiceManagement::V1::ManagedService>]
        #     The returned services will only have the name field set.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token that can be passed to `ListServices` to resume a paginated query.
        class ListServicesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `GetService` method.
        # @!attribute [rw] service_name
        #   @return [::String]
        #     Required. The name of the service.  See the `ServiceManager` overview for naming
        #     requirements.  For example: `example.googleapis.com`.
        class GetServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for CreateService method.
        # @!attribute [rw] service
        #   @return [::Google::Cloud::ServiceManagement::V1::ManagedService]
        #     Required. Initial values for the service resource.
        class CreateServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for DeleteService method.
        # @!attribute [rw] service_name
        #   @return [::String]
        #     Required. The name of the service.  See the [overview](https://cloud.google.com/service-management/overview)
        #     for naming requirements.  For example: `example.googleapis.com`.
        class DeleteServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for UndeleteService method.
        # @!attribute [rw] service_name
        #   @return [::String]
        #     Required. The name of the service. See the [overview](https://cloud.google.com/service-management/overview)
        #     for naming requirements. For example: `example.googleapis.com`.
        class UndeleteServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for UndeleteService method.
        # @!attribute [rw] service
        #   @return [::Google::Cloud::ServiceManagement::V1::ManagedService]
        #     Revived service resource.
        class UndeleteServiceResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GetServiceConfig method.
        # @!attribute [rw] service_name
        #   @return [::String]
        #     Required. The name of the service.  See the [overview](https://cloud.google.com/service-management/overview)
        #     for naming requirements.  For example: `example.googleapis.com`.
        # @!attribute [rw] config_id
        #   @return [::String]
        #     Required. The id of the service configuration resource.
        #
        #     This field must be specified for the server to return all fields, including
        #     `SourceInfo`.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::ServiceManagement::V1::GetServiceConfigRequest::ConfigView]
        #     Specifies which parts of the Service Config should be returned in the
        #     response.
        class GetServiceConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          module ConfigView
            # Server response includes all fields except SourceInfo.
            BASIC = 0

            # Server response includes all fields including SourceInfo.
            # SourceFiles are of type 'google.api.servicemanagement.v1.ConfigFile'
            # and are only available for configs created using the
            # SubmitConfigSource method.
            FULL = 1
          end
        end

        # Request message for ListServiceConfigs method.
        # @!attribute [rw] service_name
        #   @return [::String]
        #     Required. The name of the service.  See the [overview](https://cloud.google.com/service-management/overview)
        #     for naming requirements.  For example: `example.googleapis.com`.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The token of the page to retrieve.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The max number of items to include in the response list. Page size is 50
        #     if not specified. Maximum value is 100.
        class ListServiceConfigsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for ListServiceConfigs method.
        # @!attribute [rw] service_configs
        #   @return [::Array<::Google::Api::Service>]
        #     The list of service configuration resources.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The token of the next page of results.
        class ListServiceConfigsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for CreateServiceConfig method.
        # @!attribute [rw] service_name
        #   @return [::String]
        #     Required. The name of the service.  See the [overview](https://cloud.google.com/service-management/overview)
        #     for naming requirements.  For example: `example.googleapis.com`.
        # @!attribute [rw] service_config
        #   @return [::Google::Api::Service]
        #     Required. The service configuration resource.
        class CreateServiceConfigRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for SubmitConfigSource method.
        # @!attribute [rw] service_name
        #   @return [::String]
        #     Required. The name of the service.  See the [overview](https://cloud.google.com/service-management/overview)
        #     for naming requirements.  For example: `example.googleapis.com`.
        # @!attribute [rw] config_source
        #   @return [::Google::Cloud::ServiceManagement::V1::ConfigSource]
        #     Required. The source configuration for the service.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Optional. If set, this will result in the generation of a
        #     `google.api.Service` configuration based on the `ConfigSource` provided,
        #     but the generated config and the sources will NOT be persisted.
        class SubmitConfigSourceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for SubmitConfigSource method.
        # @!attribute [rw] service_config
        #   @return [::Google::Api::Service]
        #     The generated service configuration.
        class SubmitConfigSourceResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for 'CreateServiceRollout'
        # @!attribute [rw] service_name
        #   @return [::String]
        #     Required. The name of the service.  See the [overview](https://cloud.google.com/service-management/overview)
        #     for naming requirements.  For example: `example.googleapis.com`.
        # @!attribute [rw] rollout
        #   @return [::Google::Cloud::ServiceManagement::V1::Rollout]
        #     Required. The rollout resource. The `service_name` field is output only.
        class CreateServiceRolloutRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for 'ListServiceRollouts'
        # @!attribute [rw] service_name
        #   @return [::String]
        #     Required. The name of the service.  See the [overview](https://cloud.google.com/service-management/overview)
        #     for naming requirements.  For example: `example.googleapis.com`.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The token of the page to retrieve.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The max number of items to include in the response list. Page size is 50
        #     if not specified. Maximum value is 100.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Required. Use `filter` to return subset of rollouts.
        #     The following filters are supported:
        #       -- To limit the results to only those in
        #          status (google.api.servicemanagement.v1.RolloutStatus) 'SUCCESS',
        #          use filter='status=SUCCESS'
        #       -- To limit the results to those in
        #          status (google.api.servicemanagement.v1.RolloutStatus) 'CANCELLED'
        #          or 'FAILED', use filter='status=CANCELLED OR status=FAILED'
        class ListServiceRolloutsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for ListServiceRollouts method.
        # @!attribute [rw] rollouts
        #   @return [::Array<::Google::Cloud::ServiceManagement::V1::Rollout>]
        #     The list of rollout resources.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The token of the next page of results.
        class ListServiceRolloutsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GetServiceRollout method.
        # @!attribute [rw] service_name
        #   @return [::String]
        #     Required. The name of the service.  See the [overview](https://cloud.google.com/service-management/overview)
        #     for naming requirements.  For example: `example.googleapis.com`.
        # @!attribute [rw] rollout_id
        #   @return [::String]
        #     Required. The id of the rollout resource.
        class GetServiceRolloutRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for EnableService method.
        # @!attribute [rw] service_name
        #   @return [::String]
        #     Required. Name of the service to enable. Specifying an unknown service name will
        #     cause the request to fail.
        # @!attribute [rw] consumer_id
        #   @return [::String]
        #     Required. The identity of consumer resource which service enablement will be
        #     applied to.
        #
        #     The Google Service Management implementation accepts the following
        #     forms:
        #     - "project:<project_id>"
        #
        #     Note: this is made compatible with
        #     google.api.servicecontrol.v1.Operation.consumer_id.
        class EnableServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Operation payload for EnableService method.
        class EnableServiceResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for DisableService method.
        # @!attribute [rw] service_name
        #   @return [::String]
        #     Required. Name of the service to disable. Specifying an unknown service name
        #     will cause the request to fail.
        # @!attribute [rw] consumer_id
        #   @return [::String]
        #     Required. The identity of consumer resource which service disablement will be
        #     applied to.
        #
        #     The Google Service Management implementation accepts the following
        #     forms:
        #     - "project:<project_id>"
        #
        #     Note: this is made compatible with
        #     google.api.servicecontrol.v1.Operation.consumer_id.
        class DisableServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Operation payload for DisableService method.
        class DisableServiceResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GenerateConfigReport method.
        # @!attribute [rw] new_config
        #   @return [::Google::Protobuf::Any]
        #     Required. Service configuration for which we want to generate the report.
        #     For this version of API, the supported types are
        #     {::Google::Cloud::ServiceManagement::V1::ConfigRef google.api.servicemanagement.v1.ConfigRef},
        #     {::Google::Cloud::ServiceManagement::V1::ConfigSource google.api.servicemanagement.v1.ConfigSource},
        #     and {::Google::Api::Service google.api.Service}
        # @!attribute [rw] old_config
        #   @return [::Google::Protobuf::Any]
        #     Optional. Service configuration against which the comparison will be done.
        #     For this version of API, the supported types are
        #     {::Google::Cloud::ServiceManagement::V1::ConfigRef google.api.servicemanagement.v1.ConfigRef},
        #     {::Google::Cloud::ServiceManagement::V1::ConfigSource google.api.servicemanagement.v1.ConfigSource},
        #     and {::Google::Api::Service google.api.Service}
        class GenerateConfigReportRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for GenerateConfigReport method.
        # @!attribute [rw] service_name
        #   @return [::String]
        #     Name of the service this report belongs to.
        # @!attribute [rw] id
        #   @return [::String]
        #     ID of the service configuration this report belongs to.
        # @!attribute [rw] change_reports
        #   @return [::Array<::Google::Cloud::ServiceManagement::V1::ChangeReport>]
        #     list of ChangeReport, each corresponding to comparison between two
        #     service configurations.
        # @!attribute [rw] diagnostics
        #   @return [::Array<::Google::Cloud::ServiceManagement::V1::Diagnostic>]
        #     Errors / Linter warnings associated with the service definition this
        #     report
        #     belongs to.
        class GenerateConfigReportResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
