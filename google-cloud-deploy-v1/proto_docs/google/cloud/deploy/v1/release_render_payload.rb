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
    module Deploy
      module V1
        # Payload proto for "clouddeploy.googleapis.com/release_render"
        # Platform Log event that describes the render status change.
        # @!attribute [rw] message
        #   @return [::String]
        #     Debug message for when a render transition occurs. Provides further
        #     details as rendering progresses through render states.
        # @!attribute [rw] release
        #   @return [::String]
        #     The name of the release.
        # @!attribute [rw] release_render_state
        #   @return [::Google::Cloud::Deploy::V1::Release::RenderState]
        #     The state of the release render.
        class ReleaseRenderEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
