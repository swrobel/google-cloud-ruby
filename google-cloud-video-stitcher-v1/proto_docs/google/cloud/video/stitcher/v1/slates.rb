# frozen_string_literal: true

# Copyright 2022 Google LLC
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
    module Video
      module Stitcher
        module V1
          # Slate object
          # @!attribute [r] name
          #   @return [::String]
          #     Output only. The name of the slate, in the form of
          #     `projects/{project_number}/locations/{location}/slates/{id}`.
          # @!attribute [rw] uri
          #   @return [::String]
          #     The URI to fetch the source content for the slate. This URI must return an
          #     MP4 video with at least one audio track.
          class Slate
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end

