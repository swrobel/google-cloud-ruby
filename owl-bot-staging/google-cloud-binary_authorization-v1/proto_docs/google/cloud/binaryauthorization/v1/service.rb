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
  module Cloud
    module BinaryAuthorization
      module V1
        # Request message for [BinauthzManagementService.GetPolicy][].
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the {::Google::Cloud::BinaryAuthorization::V1::Policy policy} to retrieve,
        #     in the format `projects/*/policy`.
        class GetPolicyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [BinauthzManagementService.UpdatePolicy][].
        # @!attribute [rw] policy
        #   @return [::Google::Cloud::BinaryAuthorization::V1::Policy]
        #     Required. A new or updated {::Google::Cloud::BinaryAuthorization::V1::Policy policy} value. The service will
        #     overwrite the {::Google::Cloud::BinaryAuthorization::V1::Policy#name policy name} field with the resource name in
        #     the request URL, in the format `projects/*/policy`.
        class UpdatePolicyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [BinauthzManagementService.CreateAttestor][].
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent of this {::Google::Cloud::BinaryAuthorization::V1::Attestor attestor}.
        # @!attribute [rw] attestor_id
        #   @return [::String]
        #     Required. The {::Google::Cloud::BinaryAuthorization::V1::Attestor attestors} ID.
        # @!attribute [rw] attestor
        #   @return [::Google::Cloud::BinaryAuthorization::V1::Attestor]
        #     Required. The initial {::Google::Cloud::BinaryAuthorization::V1::Attestor attestor} value. The service will
        #     overwrite the {::Google::Cloud::BinaryAuthorization::V1::Attestor#name attestor name} field with the resource name,
        #     in the format `projects/*/attestors/*`.
        class CreateAttestorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [BinauthzManagementService.GetAttestor][].
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the {::Google::Cloud::BinaryAuthorization::V1::Attestor attestor} to retrieve, in the format
        #     `projects/*/attestors/*`.
        class GetAttestorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [BinauthzManagementService.UpdateAttestor][].
        # @!attribute [rw] attestor
        #   @return [::Google::Cloud::BinaryAuthorization::V1::Attestor]
        #     Required. The updated {::Google::Cloud::BinaryAuthorization::V1::Attestor attestor} value. The service will
        #     overwrite the {::Google::Cloud::BinaryAuthorization::V1::Attestor#name attestor name} field with the resource name
        #     in the request URL, in the format `projects/*/attestors/*`.
        class UpdateAttestorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [BinauthzManagementService.ListAttestors][].
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the project associated with the
        #     {::Google::Cloud::BinaryAuthorization::V1::Attestor attestors}, in the format `projects/*`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Requested page size. The server may return fewer results than requested. If
        #     unspecified, the server will pick an appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A token identifying a page of results the server should return. Typically,
        #     this is the value of {::Google::Cloud::BinaryAuthorization::V1::ListAttestorsResponse#next_page_token ListAttestorsResponse.next_page_token} returned
        #     from the previous call to the `ListAttestors` method.
        class ListAttestorsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for [BinauthzManagementService.ListAttestors][].
        # @!attribute [rw] attestors
        #   @return [::Array<::Google::Cloud::BinaryAuthorization::V1::Attestor>]
        #     The list of {::Google::Cloud::BinaryAuthorization::V1::Attestor attestors}.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve the next page of results. Pass this value in the
        #     {::Google::Cloud::BinaryAuthorization::V1::ListAttestorsRequest#page_token ListAttestorsRequest.page_token} field in the subsequent call to the
        #     `ListAttestors` method to retrieve the next page of results.
        class ListAttestorsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [BinauthzManagementService.DeleteAttestor][].
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the {::Google::Cloud::BinaryAuthorization::V1::Attestor attestors} to delete, in the format
        #     `projects/*/attestors/*`.
        class DeleteAttestorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to read the current system policy.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name, in the format `locations/*/policy`.
        #     Note that the system policy is not associated with a project.
        class GetSystemPolicyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::BinaryAuthorization::V1::ValidationHelper::Client#validate_attestation_occurrence ValidationHelperV1.ValidateAttestationOccurrence}.
        # @!attribute [rw] attestor
        #   @return [::String]
        #     Required. The resource name of the {::Google::Cloud::BinaryAuthorization::V1::Attestor Attestor} of the
        #     [occurrence][grafeas.v1.Occurrence], in the format
        #     `projects/*/attestors/*`.
        # @!attribute [rw] attestation
        #   @return [::Grafeas::V1::AttestationOccurrence]
        #     Required. An {::Grafeas::V1::AttestationOccurrence AttestationOccurrence} to
        #     be checked that it can be verified by the Attestor. It does not have to be
        #     an existing entity in Container Analysis. It must otherwise be a valid
        #     AttestationOccurrence.
        # @!attribute [rw] occurrence_note
        #   @return [::String]
        #     Required. The resource name of the [Note][grafeas.v1.Note] to which the
        #     containing [Occurrence][grafeas.v1.Occurrence] is associated.
        # @!attribute [rw] occurrence_resource_uri
        #   @return [::String]
        #     Required. The URI of the artifact (e.g. container image) that is the
        #     subject of the containing [Occurrence][grafeas.v1.Occurrence].
        class ValidateAttestationOccurrenceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::BinaryAuthorization::V1::ValidationHelper::Client#validate_attestation_occurrence ValidationHelperV1.ValidateAttestationOccurrence}.
        # @!attribute [rw] result
        #   @return [::Google::Cloud::BinaryAuthorization::V1::ValidateAttestationOccurrenceResponse::Result]
        #     The result of the Attestation validation.
        # @!attribute [rw] denial_reason
        #   @return [::String]
        #     The reason for denial if the Attestation couldn't be validated.
        class ValidateAttestationOccurrenceResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The enum returned in the "result" field.
          module Result

            # Unspecified.
            RESULT_UNSPECIFIED = 0

            # The Attestation was able to verified by the Attestor.
            VERIFIED = 1

            # The Attestation was not able to verified by the Attestor.
            ATTESTATION_NOT_VERIFIABLE = 2
          end
        end
      end
    end
  end
end

