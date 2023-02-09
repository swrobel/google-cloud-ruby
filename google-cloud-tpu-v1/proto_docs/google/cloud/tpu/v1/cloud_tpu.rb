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
    module Tpu
      module V1
        # Sets the scheduling options for this node.
        # @!attribute [rw] preemptible
        #   @return [::Boolean]
        #     Defines whether the node is preemptible.
        # @!attribute [rw] reserved
        #   @return [::Boolean]
        #     Whether the node is created under a reservation.
        class SchedulingConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A network endpoint over which a TPU worker can be reached.
        # @!attribute [rw] ip_address
        #   @return [::String]
        #     The IP address of this network endpoint.
        # @!attribute [rw] port
        #   @return [::Integer]
        #     The port of this network endpoint.
        class NetworkEndpoint
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A TPU instance.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Immutable. The name of the TPU
        # @!attribute [rw] description
        #   @return [::String]
        #     The user-supplied description of the TPU. Maximum of 512 characters.
        # @!attribute [rw] accelerator_type
        #   @return [::String]
        #     Required. The type of hardware accelerators associated with this node.
        # @!attribute [rw] ip_address
        #   @return [::String]
        #     Output only. DEPRECATED! Use network_endpoints instead.
        #     The network address for the TPU Node as visible to Compute Engine
        #     instances.
        # @!attribute [rw] port
        #   @return [::String]
        #     Output only. DEPRECATED! Use network_endpoints instead.
        #     The network port for the TPU Node as visible to Compute Engine instances.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Tpu::V1::Node::State]
        #     Output only. The current state for the TPU Node.
        # @!attribute [r] health_description
        #   @return [::String]
        #     Output only. If this field is populated, it contains a description of why
        #     the TPU Node is unhealthy.
        # @!attribute [rw] tensorflow_version
        #   @return [::String]
        #     Required. The version of Tensorflow running in the Node.
        # @!attribute [rw] network
        #   @return [::String]
        #     The name of a network they wish to peer the TPU node to. It must be a
        #     preexisting Compute Engine network inside of the project on which this API
        #     has been activated. If none is provided, "default" will be used.
        # @!attribute [rw] cidr_block
        #   @return [::String]
        #     The CIDR block that the TPU node will use when selecting an IP address.
        #     This CIDR block must be a /29 block; the Compute Engine networks API
        #     forbids a smaller block, and using a larger block would be wasteful (a
        #     node can only consume one IP address). Errors will occur if the CIDR block
        #     has already been used for a currently existing TPU node, the CIDR block
        #     conflicts with any subnetworks in the user's provided network, or the
        #     provided network is peered with another network that is using that CIDR
        #     block.
        # @!attribute [r] service_account
        #   @return [::String]
        #     Output only. The service account used to run the tensor flow services
        #     within the node. To share resources, including Google Cloud Storage data,
        #     with the Tensorflow job running in the Node, this account must have
        #     permissions to that data.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the node was created.
        # @!attribute [rw] scheduling_config
        #   @return [::Google::Cloud::Tpu::V1::SchedulingConfig]
        #     The scheduling options for this node.
        # @!attribute [r] network_endpoints
        #   @return [::Array<::Google::Cloud::Tpu::V1::NetworkEndpoint>]
        #     Output only. The network endpoints where TPU workers can be accessed and
        #     sent work. It is recommended that Tensorflow clients of the node reach out
        #     to the 0th entry in this map first.
        # @!attribute [rw] health
        #   @return [::Google::Cloud::Tpu::V1::Node::Health]
        #     The health status of the TPU node.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Resource labels to represent user-provided metadata.
        # @!attribute [rw] use_service_networking
        #   @return [::Boolean]
        #     Whether the VPC peering for the node is set up through Service Networking
        #     API. The VPC Peering should be set up before provisioning the node.
        #     If this field is set, cidr_block field should not be specified. If the
        #     network, that you want to peer the TPU Node to, is Shared VPC networks,
        #     the node must be created with this this field enabled.
        # @!attribute [r] api_version
        #   @return [::Google::Cloud::Tpu::V1::Node::ApiVersion]
        #     Output only. The API version that created this Node.
        # @!attribute [r] symptoms
        #   @return [::Array<::Google::Cloud::Tpu::V1::Symptom>]
        #     Output only. The Symptoms that have occurred to the TPU Node.
        class Node
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents the different states of a TPU node during its lifecycle.
          module State

            # TPU node state is not known/set.
            STATE_UNSPECIFIED = 0

            # TPU node is being created.
            CREATING = 1

            # TPU node has been created.
            READY = 2

            # TPU node is restarting.
            RESTARTING = 3

            # TPU node is undergoing reimaging.
            REIMAGING = 4

            # TPU node is being deleted.
            DELETING = 5

            # TPU node is being repaired and may be unusable. Details can be
            # found in the `help_description` field.
            REPAIRING = 6

            # TPU node is stopped.
            STOPPED = 8

            # TPU node is currently stopping.
            STOPPING = 9

            # TPU node is currently starting.
            STARTING = 10

            # TPU node has been preempted. Only applies to Preemptible TPU Nodes.
            PREEMPTED = 11

            # TPU node has been terminated due to maintenance or has reached the end of
            # its life cycle (for preemptible nodes).
            TERMINATED = 12

            # TPU node is currently hiding.
            HIDING = 13

            # TPU node has been hidden.
            HIDDEN = 14

            # TPU node is currently unhiding.
            UNHIDING = 15
          end

          # Health defines the status of a TPU node as reported by
          # Health Monitor.
          module Health

            # Health status is unknown: not initialized or failed to retrieve.
            HEALTH_UNSPECIFIED = 0

            # The resource is healthy.
            HEALTHY = 1

            # The resource is unhealthy.
            DEPRECATED_UNHEALTHY = 2

            # The resource is unresponsive.
            TIMEOUT = 3

            # The in-guest ML stack is unhealthy.
            UNHEALTHY_TENSORFLOW = 4

            # The node is under maintenance/priority boost caused rescheduling and
            # will resume running once rescheduled.
            UNHEALTHY_MAINTENANCE = 5
          end

          # TPU API Version.
          module ApiVersion

            # API version is unknown.
            API_VERSION_UNSPECIFIED = 0

            # TPU API V1Alpha1 version.
            V1_ALPHA1 = 1

            # TPU API V1 version.
            V1 = 2

            # TPU API V2Alpha1 version.
            V2_ALPHA1 = 3
          end
        end

        # Request for {::Google::Cloud::Tpu::V1::Tpu::Client#list_nodes ListNodes}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The next_page_token value returned from a previous List request, if any.
        class ListNodesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for {::Google::Cloud::Tpu::V1::Tpu::Client#list_nodes ListNodes}.
        # @!attribute [rw] nodes
        #   @return [::Array<::Google::Cloud::Tpu::V1::Node>]
        #     The listed nodes.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The next page token or empty if none.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListNodesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for {::Google::Cloud::Tpu::V1::Tpu::Client#get_node GetNode}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name.
        class GetNodeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for {::Google::Cloud::Tpu::V1::Tpu::Client#create_node CreateNode}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name.
        # @!attribute [rw] node_id
        #   @return [::String]
        #     The unqualified resource name.
        # @!attribute [rw] node
        #   @return [::Google::Cloud::Tpu::V1::Node]
        #     Required. The node.
        class CreateNodeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for {::Google::Cloud::Tpu::V1::Tpu::Client#delete_node DeleteNode}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name.
        class DeleteNodeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for {::Google::Cloud::Tpu::V1::Tpu::Client#reimage_node ReimageNode}.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name.
        # @!attribute [rw] tensorflow_version
        #   @return [::String]
        #     The version for reimage to create.
        class ReimageNodeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for {::Google::Cloud::Tpu::V1::Tpu::Client#stop_node StopNode}.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name.
        class StopNodeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for {::Google::Cloud::Tpu::V1::Tpu::Client#start_node StartNode}.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name.
        class StartNodeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A tensorflow version that a Node can be configured with.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name.
        # @!attribute [rw] version
        #   @return [::String]
        #     the tensorflow version.
        class TensorFlowVersion
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for
        # {::Google::Cloud::Tpu::V1::Tpu::Client#get_tensor_flow_version GetTensorFlowVersion}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name.
        class GetTensorFlowVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for
        # {::Google::Cloud::Tpu::V1::Tpu::Client#list_tensor_flow_versions ListTensorFlowVersions}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The next_page_token value returned from a previous List request, if any.
        # @!attribute [rw] filter
        #   @return [::String]
        #     List filter.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Sort results.
        class ListTensorFlowVersionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for
        # {::Google::Cloud::Tpu::V1::Tpu::Client#list_tensor_flow_versions ListTensorFlowVersions}.
        # @!attribute [rw] tensorflow_versions
        #   @return [::Array<::Google::Cloud::Tpu::V1::TensorFlowVersion>]
        #     The listed nodes.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The next page token or empty if none.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListTensorFlowVersionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A accelerator type that a Node can be configured with.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name.
        # @!attribute [rw] type
        #   @return [::String]
        #     the accelerator type.
        class AcceleratorType
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for {::Google::Cloud::Tpu::V1::Tpu::Client#get_accelerator_type GetAcceleratorType}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name.
        class GetAcceleratorTypeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for
        # {::Google::Cloud::Tpu::V1::Tpu::Client#list_accelerator_types ListAcceleratorTypes}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The next_page_token value returned from a previous List request, if any.
        # @!attribute [rw] filter
        #   @return [::String]
        #     List filter.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Sort results.
        class ListAcceleratorTypesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for
        # {::Google::Cloud::Tpu::V1::Tpu::Client#list_accelerator_types ListAcceleratorTypes}.
        # @!attribute [rw] accelerator_types
        #   @return [::Array<::Google::Cloud::Tpu::V1::AcceleratorType>]
        #     The listed nodes.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The next page token or empty if none.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListAcceleratorTypesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata describing an {::Google::Longrunning::Operation Operation}
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the operation was created.
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the operation finished running.
        # @!attribute [rw] target
        #   @return [::String]
        #     Target of the operation - for example
        #     projects/project-1/connectivityTests/test-1
        # @!attribute [rw] verb
        #   @return [::String]
        #     Name of the verb executed by the operation.
        # @!attribute [rw] status_detail
        #   @return [::String]
        #     Human-readable status of the operation, if any.
        # @!attribute [rw] cancel_requested
        #   @return [::Boolean]
        #     Specifies if cancellation was requested for the operation.
        # @!attribute [rw] api_version
        #   @return [::String]
        #     API version.
        class OperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A Symptom instance.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Timestamp when the Symptom is created.
        # @!attribute [rw] symptom_type
        #   @return [::Google::Cloud::Tpu::V1::Symptom::SymptomType]
        #     Type of the Symptom.
        # @!attribute [rw] details
        #   @return [::String]
        #     Detailed information of the current Symptom.
        # @!attribute [rw] worker_id
        #   @return [::String]
        #     A string used to uniquely distinguish a worker within a TPU node.
        class Symptom
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # SymptomType represents the different types of Symptoms that a TPU can be
          # at.
          module SymptomType

            # Unspecified symptom.
            SYMPTOM_TYPE_UNSPECIFIED = 0

            # TPU VM memory is low.
            LOW_MEMORY = 1

            # TPU runtime is out of memory.
            OUT_OF_MEMORY = 2

            # TPU runtime execution has timed out.
            EXECUTE_TIMED_OUT = 3

            # TPU runtime fails to construct a mesh that recognizes each TPU device's
            # neighbors.
            MESH_BUILD_FAIL = 4

            # TPU HBM is out of memory.
            HBM_OUT_OF_MEMORY = 5

            # Abusive behaviors have been identified on the current project.
            PROJECT_ABUSE = 6
          end
        end
      end
    end
  end
end

