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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/text_to_speech/v1/version"

require "google/cloud/text_to_speech/v1/text_to_speech/credentials"
require "google/cloud/text_to_speech/v1/text_to_speech/paths"
require "google/cloud/text_to_speech/v1/text_to_speech/client"

module Google
  module Cloud
    module TextToSpeech
      module V1
        ##
        # Service that implements Google Cloud Text-to-Speech API.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/text_to_speech/v1/text_to_speech"
        #     client = ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Client.new
        #
        module TextToSpeech
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "text_to_speech", "helpers.rb"
require "google/cloud/text_to_speech/v1/text_to_speech/helpers" if ::File.file? helper_path

