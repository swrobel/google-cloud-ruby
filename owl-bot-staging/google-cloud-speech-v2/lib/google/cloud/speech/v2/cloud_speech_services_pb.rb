# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/speech/v2/cloud_speech.proto for package 'google.cloud.speech.v2'
# Original file comments:
# Copyright 2024 Google LLC
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
require 'google/cloud/speech/v2/cloud_speech_pb'

module Google
  module Cloud
    module Speech
      module V2
        module Speech
          # Enables speech transcription and resource management.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.speech.v2.Speech'

            # Creates a [Recognizer][google.cloud.speech.v2.Recognizer].
            rpc :CreateRecognizer, ::Google::Cloud::Speech::V2::CreateRecognizerRequest, ::Google::Longrunning::Operation
            # Lists Recognizers.
            rpc :ListRecognizers, ::Google::Cloud::Speech::V2::ListRecognizersRequest, ::Google::Cloud::Speech::V2::ListRecognizersResponse
            # Returns the requested
            # [Recognizer][google.cloud.speech.v2.Recognizer]. Fails with
            # [NOT_FOUND][google.rpc.Code.NOT_FOUND] if the requested Recognizer doesn't
            # exist.
            rpc :GetRecognizer, ::Google::Cloud::Speech::V2::GetRecognizerRequest, ::Google::Cloud::Speech::V2::Recognizer
            # Updates the [Recognizer][google.cloud.speech.v2.Recognizer].
            rpc :UpdateRecognizer, ::Google::Cloud::Speech::V2::UpdateRecognizerRequest, ::Google::Longrunning::Operation
            # Deletes the [Recognizer][google.cloud.speech.v2.Recognizer].
            rpc :DeleteRecognizer, ::Google::Cloud::Speech::V2::DeleteRecognizerRequest, ::Google::Longrunning::Operation
            # Undeletes the [Recognizer][google.cloud.speech.v2.Recognizer].
            rpc :UndeleteRecognizer, ::Google::Cloud::Speech::V2::UndeleteRecognizerRequest, ::Google::Longrunning::Operation
            # Performs synchronous Speech recognition: receive results after all audio
            # has been sent and processed.
            rpc :Recognize, ::Google::Cloud::Speech::V2::RecognizeRequest, ::Google::Cloud::Speech::V2::RecognizeResponse
            # Performs bidirectional streaming speech recognition: receive results while
            # sending audio. This method is only available via the gRPC API (not REST).
            rpc :StreamingRecognize, stream(::Google::Cloud::Speech::V2::StreamingRecognizeRequest), stream(::Google::Cloud::Speech::V2::StreamingRecognizeResponse)
            # Performs batch asynchronous speech recognition: send a request with N
            # audio files and receive a long running operation that can be polled to see
            # when the transcriptions are finished.
            rpc :BatchRecognize, ::Google::Cloud::Speech::V2::BatchRecognizeRequest, ::Google::Longrunning::Operation
            # Returns the requested [Config][google.cloud.speech.v2.Config].
            rpc :GetConfig, ::Google::Cloud::Speech::V2::GetConfigRequest, ::Google::Cloud::Speech::V2::Config
            # Updates the [Config][google.cloud.speech.v2.Config].
            rpc :UpdateConfig, ::Google::Cloud::Speech::V2::UpdateConfigRequest, ::Google::Cloud::Speech::V2::Config
            # Creates a [CustomClass][google.cloud.speech.v2.CustomClass].
            rpc :CreateCustomClass, ::Google::Cloud::Speech::V2::CreateCustomClassRequest, ::Google::Longrunning::Operation
            # Lists CustomClasses.
            rpc :ListCustomClasses, ::Google::Cloud::Speech::V2::ListCustomClassesRequest, ::Google::Cloud::Speech::V2::ListCustomClassesResponse
            # Returns the requested
            # [CustomClass][google.cloud.speech.v2.CustomClass].
            rpc :GetCustomClass, ::Google::Cloud::Speech::V2::GetCustomClassRequest, ::Google::Cloud::Speech::V2::CustomClass
            # Updates the [CustomClass][google.cloud.speech.v2.CustomClass].
            rpc :UpdateCustomClass, ::Google::Cloud::Speech::V2::UpdateCustomClassRequest, ::Google::Longrunning::Operation
            # Deletes the [CustomClass][google.cloud.speech.v2.CustomClass].
            rpc :DeleteCustomClass, ::Google::Cloud::Speech::V2::DeleteCustomClassRequest, ::Google::Longrunning::Operation
            # Undeletes the [CustomClass][google.cloud.speech.v2.CustomClass].
            rpc :UndeleteCustomClass, ::Google::Cloud::Speech::V2::UndeleteCustomClassRequest, ::Google::Longrunning::Operation
            # Creates a [PhraseSet][google.cloud.speech.v2.PhraseSet].
            rpc :CreatePhraseSet, ::Google::Cloud::Speech::V2::CreatePhraseSetRequest, ::Google::Longrunning::Operation
            # Lists PhraseSets.
            rpc :ListPhraseSets, ::Google::Cloud::Speech::V2::ListPhraseSetsRequest, ::Google::Cloud::Speech::V2::ListPhraseSetsResponse
            # Returns the requested
            # [PhraseSet][google.cloud.speech.v2.PhraseSet].
            rpc :GetPhraseSet, ::Google::Cloud::Speech::V2::GetPhraseSetRequest, ::Google::Cloud::Speech::V2::PhraseSet
            # Updates the [PhraseSet][google.cloud.speech.v2.PhraseSet].
            rpc :UpdatePhraseSet, ::Google::Cloud::Speech::V2::UpdatePhraseSetRequest, ::Google::Longrunning::Operation
            # Deletes the [PhraseSet][google.cloud.speech.v2.PhraseSet].
            rpc :DeletePhraseSet, ::Google::Cloud::Speech::V2::DeletePhraseSetRequest, ::Google::Longrunning::Operation
            # Undeletes the [PhraseSet][google.cloud.speech.v2.PhraseSet].
            rpc :UndeletePhraseSet, ::Google::Cloud::Speech::V2::UndeletePhraseSetRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
