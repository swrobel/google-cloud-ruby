# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/speech/v1p1beta1/cloud_speech_adaptation.proto for package 'google.cloud.speech.v1p1beta1'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/speech/v1p1beta1/cloud_speech_adaptation_pb'

module Google
  module Cloud
    module Speech
      module V1p1beta1
        module Adaptation
          # Service that implements Google Cloud Speech Adaptation API.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.speech.v1p1beta1.Adaptation'

            # Create a set of phrase hints. Each item in the set can be a single word or
            # a multi-word phrase. The items in the PhraseSet are favored by the
            # recognition model when you send a call that includes the PhraseSet.
            rpc :CreatePhraseSet, ::Google::Cloud::Speech::V1p1beta1::CreatePhraseSetRequest, ::Google::Cloud::Speech::V1p1beta1::PhraseSet
            # Get a phrase set.
            rpc :GetPhraseSet, ::Google::Cloud::Speech::V1p1beta1::GetPhraseSetRequest, ::Google::Cloud::Speech::V1p1beta1::PhraseSet
            # List phrase sets.
            rpc :ListPhraseSet, ::Google::Cloud::Speech::V1p1beta1::ListPhraseSetRequest, ::Google::Cloud::Speech::V1p1beta1::ListPhraseSetResponse
            # Update a phrase set.
            rpc :UpdatePhraseSet, ::Google::Cloud::Speech::V1p1beta1::UpdatePhraseSetRequest, ::Google::Cloud::Speech::V1p1beta1::PhraseSet
            # Delete a phrase set.
            rpc :DeletePhraseSet, ::Google::Cloud::Speech::V1p1beta1::DeletePhraseSetRequest, ::Google::Protobuf::Empty
            # Create a custom class.
            rpc :CreateCustomClass, ::Google::Cloud::Speech::V1p1beta1::CreateCustomClassRequest, ::Google::Cloud::Speech::V1p1beta1::CustomClass
            # Get a custom class.
            rpc :GetCustomClass, ::Google::Cloud::Speech::V1p1beta1::GetCustomClassRequest, ::Google::Cloud::Speech::V1p1beta1::CustomClass
            # List custom classes.
            rpc :ListCustomClasses, ::Google::Cloud::Speech::V1p1beta1::ListCustomClassesRequest, ::Google::Cloud::Speech::V1p1beta1::ListCustomClassesResponse
            # Update a custom class.
            rpc :UpdateCustomClass, ::Google::Cloud::Speech::V1p1beta1::UpdateCustomClassRequest, ::Google::Cloud::Speech::V1p1beta1::CustomClass
            # Delete a custom class.
            rpc :DeleteCustomClass, ::Google::Cloud::Speech::V1p1beta1::DeleteCustomClassRequest, ::Google::Protobuf::Empty
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
