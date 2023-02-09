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
    module Eventarc
      module Publishing
        module V1
          # The request message for the PublishChannelConnectionEvents method.
          # @!attribute [rw] channel_connection
          #   @return [::String]
          #     The channel_connection that the events are published from. For example:
          #     `projects/{partner_project_id}/locations/{location}/channelConnections/{channel_connection_id}`.
          # @!attribute [rw] events
          #   @return [::Array<::Google::Protobuf::Any>]
          #     The CloudEvents v1.0 events to publish. No other types are allowed.
          #     If this field is set, then the `text_events` fields must not be set.
          # @!attribute [rw] text_events
          #   @return [::Array<::String>]
          #     The text representation of events to publish.
          #     CloudEvent v1.0 in JSON format is the only allowed type. Refer to
          #     https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/formats/json-format.md
          #     for specification.
          #     If this field is set, then the `events` fields must not be set.
          class PublishChannelConnectionEventsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for the PublishChannelConnectionEvents method.
          class PublishChannelConnectionEventsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for the PublishEvents method.
          # @!attribute [rw] channel
          #   @return [::String]
          #     The full name of the channel to publish to. For example:
          #     `projects/{project}/locations/{location}/channels/{channel-id}`.
          # @!attribute [rw] events
          #   @return [::Array<::Google::Protobuf::Any>]
          #     The CloudEvents v1.0 events to publish. No other types are allowed.
          #     If this field is set, then the `text_events` fields must not be set.
          # @!attribute [rw] text_events
          #   @return [::Array<::String>]
          #     The text representation of events to publish.
          #     CloudEvent v1.0 in JSON format is the only allowed type. Refer to
          #     https://github.com/cloudevents/spec/blob/v1.0.2/cloudevents/formats/json-format.md
          #     for specification.
          #     If this field is set, then the `events` fields must not be set.
          class PublishEventsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for the PublishEvents method.
          class PublishEventsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end

