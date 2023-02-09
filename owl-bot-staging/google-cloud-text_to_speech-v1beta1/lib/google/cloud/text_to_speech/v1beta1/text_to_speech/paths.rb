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
    module TextToSpeech
      module V1beta1
        module TextToSpeech
          # Path helper methods for the TextToSpeech API.
          module Paths
            ##
            # Create a fully-qualified Model resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/models/{model}`
            #
            # @param project [String]
            # @param location [String]
            # @param model [String]
            #
            # @return [::String]
            def model_path project:, location:, model:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/models/#{model}"
            end

            extend self
          end
        end
      end
    end
  end
end

