# frozen_string_literal: true

# Copyright 2024 Google LLC
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
  module Apps
    module Chat
      module V1
        # A user in Google Chat.
        # When returned as an output from a request, if your Chat app [authenticates as
        # a user](https://developers.google.com/chat/api/guides/auth/users), the output
        # for a `User` resource only populates the user's `name` and `type`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Resource name for a Google Chat {::Google::Apps::Chat::V1::User user}.
        #
        #     Format: `users/{user}`. `users/app` can be used as an alias for the calling
        #     app {::Google::Apps::Chat::V1::User::Type::BOT bot} user.
        #
        #     For {::Google::Apps::Chat::V1::User::Type::HUMAN human users}, `{user}` is the same
        #     user identifier as:
        #
        #     - the `id` for the
        #     [Person](https://developers.google.com/people/api/rest/v1/people) in the
        #     People API. For example, `users/123456789` in Chat API represents the same
        #     person as the `123456789` Person profile ID in People API.
        #
        #     - the `id` for a
        #     [user](https://developers.google.com/admin-sdk/directory/reference/rest/v1/users)
        #     in the Admin SDK Directory API.
        #
        #     - the user's email address can be used as an alias for `{user}` in API
        #     requests. For example, if the People API Person profile ID for
        #     `user@example.com` is `123456789`, you can use `users/user@example.com` as
        #     an alias to reference `users/123456789`. Only the canonical resource name
        #     (for example `users/123456789`) will be returned from the API.
        # @!attribute [r] display_name
        #   @return [::String]
        #     Output only. The user's display name.
        # @!attribute [rw] domain_id
        #   @return [::String]
        #     Unique identifier of the user's Google Workspace domain.
        # @!attribute [rw] type
        #   @return [::Google::Apps::Chat::V1::User::Type]
        #     User type.
        # @!attribute [r] is_anonymous
        #   @return [::Boolean]
        #     Output only. When `true`, the user is deleted or their profile is not
        #     visible.
        class User
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          module Type
            # Default value for the enum. DO NOT USE.
            TYPE_UNSPECIFIED = 0

            # Human user.
            HUMAN = 1

            # Chat app user.
            BOT = 2
          end
        end
      end
    end
  end
end
