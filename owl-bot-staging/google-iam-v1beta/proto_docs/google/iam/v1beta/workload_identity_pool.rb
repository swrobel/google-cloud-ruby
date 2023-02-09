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


module Google
  module Iam
    module V1beta
      # Represents a collection of external workload identities. You can define IAM
      # policies to grant these identities access to Google Cloud resources.
      # @!attribute [r] name
      #   @return [::String]
      #     Output only. The resource name of the pool.
      # @!attribute [rw] display_name
      #   @return [::String]
      #     A display name for the pool. Cannot exceed 32 characters.
      # @!attribute [rw] description
      #   @return [::String]
      #     A description of the pool. Cannot exceed 256 characters.
      # @!attribute [r] state
      #   @return [::Google::Iam::V1beta::WorkloadIdentityPool::State]
      #     Output only. The state of the pool.
      # @!attribute [rw] disabled
      #   @return [::Boolean]
      #     Whether the pool is disabled. You cannot use a disabled pool to exchange
      #     tokens, or use existing tokens to access resources. If
      #     the pool is re-enabled, existing tokens grant access again.
      class WorkloadIdentityPool
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods

        # The current state of the pool.
        module State

          # State unspecified.
          STATE_UNSPECIFIED = 0

          # The pool is active, and may be used in Google Cloud policies.
          ACTIVE = 1

          # The pool is soft-deleted. Soft-deleted pools are permanently deleted
          # after approximately 30 days. You can restore a soft-deleted pool using
          # {::Google::Iam::V1beta::WorkloadIdentityPools::Client#undelete_workload_identity_pool UndeleteWorkloadIdentityPool}.
          #
          # You cannot reuse the ID of a soft-deleted pool until it is permanently
          # deleted.
          #
          # While a pool is deleted, you cannot use it to exchange tokens, or use
          # existing tokens to access resources. If the pool is undeleted, existing
          # tokens grant access again.
          DELETED = 2
        end
      end

      # A configuration for an external identity provider.
      # @!attribute [r] name
      #   @return [::String]
      #     Output only. The resource name of the provider.
      # @!attribute [rw] display_name
      #   @return [::String]
      #     A display name for the provider. Cannot exceed 32 characters.
      # @!attribute [rw] description
      #   @return [::String]
      #     A description for the provider. Cannot exceed 256 characters.
      # @!attribute [r] state
      #   @return [::Google::Iam::V1beta::WorkloadIdentityPoolProvider::State]
      #     Output only. The state of the provider.
      # @!attribute [rw] disabled
      #   @return [::Boolean]
      #     Whether the provider is disabled. You cannot use a disabled provider to
      #     exchange tokens. However, existing tokens still grant access.
      # @!attribute [rw] attribute_mapping
      #   @return [::Google::Protobuf::Map{::String => ::String}]
      #     Maps attributes from authentication credentials issued by an external
      #     identity provider to Google Cloud attributes, such as `subject` and
      #     `segment`.
      #
      #     Each key must be a string specifying the Google Cloud IAM attribute to
      #     map to.
      #
      #     The following keys are supported:
      #
      #     * `google.subject`: The principal IAM is authenticating. You can reference
      #                         this value in IAM bindings. This is also the
      #                         subject that appears in Cloud Logging logs.
      #                         Cannot exceed 127 characters.
      #
      #     * `google.groups`: Groups the external identity belongs to. You can grant
      #                        groups access to resources using an IAM `principalSet`
      #                        binding; access applies to all members of the group.
      #
      #     You can also provide custom attributes by specifying
      #     `attribute.{custom_attribute}`, where `{custom_attribute}` is the name of
      #     the custom attribute to be mapped. You can define a maximum of 50 custom
      #     attributes. The maximum length of a mapped attribute key is
      #     100 characters, and the key may only contain the characters [a-z0-9_].
      #
      #     You can reference these attributes in IAM policies to define fine-grained
      #     access for a workload to Google Cloud resources. For example:
      #
      #     * `google.subject`:
      #     `principal://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/subject/{value}`
      #
      #     * `google.groups`:
      #     `principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/group/{value}`
      #
      #     * `attribute.{custom_attribute}`:
      #     `principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/attribute.{custom_attribute}/{value}`
      #
      #     Each value must be a [Common Expression Language]
      #     (https://opensource.google/projects/cel) function that maps an
      #     identity provider credential to the normalized attribute specified by the
      #     corresponding map key.
      #
      #     You can use the `assertion` keyword in the expression to access a JSON
      #     representation of the authentication credential issued by the provider.
      #
      #     The maximum length of an attribute mapping expression is 2048 characters.
      #     When evaluated, the total size of all mapped attributes must not exceed
      #     8KB.
      #
      #     For AWS providers, the following rules apply:
      #
      #     - If no attribute mapping is defined, the following default mapping
      #       applies:
      #
      #       ```
      #       {
      #         "google.subject":"assertion.arn",
      #         "attribute.aws_role":
      #             "assertion.arn.contains('assumed-role')"
      #             " ? assertion.arn.extract('\\{account_arn}assumed-role/')"
      #             "   + 'assumed-role/'"
      #             "   + assertion.arn.extract('assumed-role/\\{role_name}/')"
      #             " : assertion.arn",
      #       }
      #       ```
      #
      #     - If any custom attribute mappings are defined, they must include a mapping
      #       to the `google.subject` attribute.
      #
      #
      #     For OIDC providers, the following rules apply:
      #
      #     - Custom attribute mappings must be defined, and must include a mapping to
      #       the `google.subject` attribute. For example, the following maps the
      #       `sub` claim of the incoming credential to the `subject` attribute on
      #       a Google token.
      #
      #       ```
      #       \\{"google.subject": "assertion.sub"}
      #       ```
      # @!attribute [rw] attribute_condition
      #   @return [::String]
      #     [A Common Expression Language](https://opensource.google/projects/cel)
      #     expression, in plain text, to restrict what otherwise valid authentication
      #     credentials issued by the provider should not be accepted.
      #
      #     The expression must output a boolean representing whether to allow the
      #     federation.
      #
      #     The following keywords may be referenced in the expressions:
      #
      #     * `assertion`: JSON representing the authentication credential issued by
      #                    the provider.
      #     * `google`: The Google attributes mapped from the assertion in the
      #                 `attribute_mappings`.
      #     * `attribute`: The custom attributes mapped from the assertion in the
      #                    `attribute_mappings`.
      #
      #     The maximum length of the attribute condition expression is 4096
      #     characters. If unspecified, all valid authentication credential are
      #     accepted.
      #
      #     The following example shows how to only allow credentials with a mapped
      #     `google.groups` value of `admins`:
      #
      #     ```
      #     "'admins' in google.groups"
      #     ```
      # @!attribute [rw] aws
      #   @return [::Google::Iam::V1beta::WorkloadIdentityPoolProvider::Aws]
      #     An Amazon Web Services identity provider.
      # @!attribute [rw] oidc
      #   @return [::Google::Iam::V1beta::WorkloadIdentityPoolProvider::Oidc]
      #     An OpenId Connect 1.0 identity provider.
      class WorkloadIdentityPoolProvider
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods

        # Represents an Amazon Web Services identity provider.
        # @!attribute [rw] account_id
        #   @return [::String]
        #     Required. The AWS account ID.
        class Aws
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents an OpenId Connect 1.0 identity provider.
        # @!attribute [rw] issuer_uri
        #   @return [::String]
        #     Required. The OIDC issuer URL.
        # @!attribute [rw] allowed_audiences
        #   @return [::Array<::String>]
        #     Acceptable values for the `aud` field (audience) in the OIDC token. Token
        #     exchange requests are rejected if the token audience does not match one
        #     of the configured values. Each audience may be at most 256 characters. A
        #     maximum of 10 audiences may be configured.
        #
        #     If this list is empty, the OIDC token audience must be equal to
        #     the full canonical resource name of the WorkloadIdentityPoolProvider,
        #     with or without the HTTPS prefix. For example:
        #
        #     ```
        #     //iam.googleapis.com/projects/<project-number>/locations/<location>/workloadIdentityPools/<pool-id>/providers/<provider-id>
        #     https://iam.googleapis.com/projects/<project-number>/locations/<location>/workloadIdentityPools/<pool-id>/providers/<provider-id>
        #     ```
        class Oidc
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] key
        #   @return [::String]
        # @!attribute [rw] value
        #   @return [::String]
        class AttributeMappingEntry
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The current state of the provider.
        module State

          # State unspecified.
          STATE_UNSPECIFIED = 0

          # The provider is active, and may be used to validate authentication
          # credentials.
          ACTIVE = 1

          # The provider is soft-deleted. Soft-deleted providers are permanently
          # deleted after approximately 30 days. You can restore a soft-deleted
          # provider using
          # {::Google::Iam::V1beta::WorkloadIdentityPools::Client#undelete_workload_identity_pool_provider UndeleteWorkloadIdentityPoolProvider}.
          #
          # You cannot reuse the ID of a soft-deleted provider until it is
          # permanently deleted.
          DELETED = 2
        end
      end

      # Request message for ListWorkloadIdentityPools.
      # @!attribute [rw] parent
      #   @return [::String]
      #     Required. The parent resource to list pools for.
      # @!attribute [rw] page_size
      #   @return [::Integer]
      #     The maximum number of pools to return.
      #     If unspecified, at most 50 pools are returned.
      #     The maximum value is 1000; values above are 1000 truncated to 1000.
      # @!attribute [rw] page_token
      #   @return [::String]
      #     A page token, received from a previous `ListWorkloadIdentityPools`
      #     call. Provide this to retrieve the subsequent page.
      # @!attribute [rw] show_deleted
      #   @return [::Boolean]
      #     Whether to return soft-deleted pools.
      class ListWorkloadIdentityPoolsRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Response message for ListWorkloadIdentityPools.
      # @!attribute [rw] workload_identity_pools
      #   @return [::Array<::Google::Iam::V1beta::WorkloadIdentityPool>]
      #     A list of pools.
      # @!attribute [rw] next_page_token
      #   @return [::String]
      #     A token, which can be sent as `page_token` to retrieve the next page.
      #     If this field is omitted, there are no subsequent pages.
      class ListWorkloadIdentityPoolsResponse
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Request message for GetWorkloadIdentityPool.
      # @!attribute [rw] name
      #   @return [::String]
      #     Required. The name of the pool to retrieve.
      class GetWorkloadIdentityPoolRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Request message for CreateWorkloadIdentityPool.
      # @!attribute [rw] parent
      #   @return [::String]
      #     Required. The parent resource to create the pool in. The only supported
      #     location is `global`.
      # @!attribute [rw] workload_identity_pool
      #   @return [::Google::Iam::V1beta::WorkloadIdentityPool]
      #     Required. The pool to create.
      # @!attribute [rw] workload_identity_pool_id
      #   @return [::String]
      #     Required. The ID to use for the pool, which becomes the
      #     final component of the resource name. This value should be 4-32 characters,
      #     and may contain the characters [a-z0-9-]. The prefix `gcp-` is
      #     reserved for use by Google, and may not be specified.
      class CreateWorkloadIdentityPoolRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Request message for UpdateWorkloadIdentityPool.
      # @!attribute [rw] workload_identity_pool
      #   @return [::Google::Iam::V1beta::WorkloadIdentityPool]
      #     Required. The pool to update. The `name` field is used to identify the pool.
      # @!attribute [rw] update_mask
      #   @return [::Google::Protobuf::FieldMask]
      #     Required. The list of fields update.
      class UpdateWorkloadIdentityPoolRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Request message for DeleteWorkloadIdentityPool.
      # @!attribute [rw] name
      #   @return [::String]
      #     Required. The name of the pool to delete.
      class DeleteWorkloadIdentityPoolRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Request message for UndeleteWorkloadIdentityPool.
      # @!attribute [rw] name
      #   @return [::String]
      #     Required. The name of the pool to undelete.
      class UndeleteWorkloadIdentityPoolRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Request message for ListWorkloadIdentityPoolProviders.
      # @!attribute [rw] parent
      #   @return [::String]
      #     Required. The pool to list providers for.
      # @!attribute [rw] page_size
      #   @return [::Integer]
      #     The maximum number of providers to return.
      #     If unspecified, at most 50 providers are returned.
      #     The maximum value is 100; values above 100 are truncated to 100.
      # @!attribute [rw] page_token
      #   @return [::String]
      #     A page token, received from a previous
      #     `ListWorkloadIdentityPoolProviders` call. Provide this to retrieve the
      #     subsequent page.
      # @!attribute [rw] show_deleted
      #   @return [::Boolean]
      #     Whether to return soft-deleted providers.
      class ListWorkloadIdentityPoolProvidersRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Response message for ListWorkloadIdentityPoolProviders.
      # @!attribute [rw] workload_identity_pool_providers
      #   @return [::Array<::Google::Iam::V1beta::WorkloadIdentityPoolProvider>]
      #     A list of providers.
      # @!attribute [rw] next_page_token
      #   @return [::String]
      #     A token, which can be sent as `page_token` to retrieve the next page.
      #     If this field is omitted, there are no subsequent pages.
      class ListWorkloadIdentityPoolProvidersResponse
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Request message for GetWorkloadIdentityPoolProvider.
      # @!attribute [rw] name
      #   @return [::String]
      #     Required. The name of the provider to retrieve.
      class GetWorkloadIdentityPoolProviderRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Request message for CreateWorkloadIdentityPoolProvider.
      # @!attribute [rw] parent
      #   @return [::String]
      #     Required. The pool to create this provider in.
      # @!attribute [rw] workload_identity_pool_provider
      #   @return [::Google::Iam::V1beta::WorkloadIdentityPoolProvider]
      #     Required. The provider to create.
      # @!attribute [rw] workload_identity_pool_provider_id
      #   @return [::String]
      #     Required. The ID for the provider, which becomes the
      #     final component of the resource name. This value must be 4-32 characters,
      #     and may contain the characters [a-z0-9-]. The prefix `gcp-` is
      #     reserved for use by Google, and may not be specified.
      class CreateWorkloadIdentityPoolProviderRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Request message for UpdateWorkloadIdentityPoolProvider.
      # @!attribute [rw] workload_identity_pool_provider
      #   @return [::Google::Iam::V1beta::WorkloadIdentityPoolProvider]
      #     Required. The provider to update.
      # @!attribute [rw] update_mask
      #   @return [::Google::Protobuf::FieldMask]
      #     Required. The list of fields to update.
      class UpdateWorkloadIdentityPoolProviderRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Request message for DeleteWorkloadIdentityPoolProvider.
      # @!attribute [rw] name
      #   @return [::String]
      #     Required. The name of the provider to delete.
      class DeleteWorkloadIdentityPoolProviderRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Request message for UndeleteWorkloadIdentityPoolProvider.
      # @!attribute [rw] name
      #   @return [::String]
      #     Required. The name of the provider to undelete.
      class UndeleteWorkloadIdentityPoolProviderRequest
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Metadata for long-running WorkloadIdentityPool operations.
      class WorkloadIdentityPoolOperationMetadata
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Metadata for long-running WorkloadIdentityPoolProvider operations.
      class WorkloadIdentityPoolProviderOperationMetadata
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end
    end
  end
end

