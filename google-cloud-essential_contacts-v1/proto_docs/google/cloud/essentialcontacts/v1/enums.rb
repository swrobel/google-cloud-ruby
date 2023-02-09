# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module EssentialContacts
      module V1
        # The notification categories that an essential contact can be subscribed to.
        # Each notification will be categorized by the sender into one of the following
        # categories. All contacts that are subscribed to that category will receive
        # the notification.
        module NotificationCategory

          # Notification category is unrecognized or unspecified.
          NOTIFICATION_CATEGORY_UNSPECIFIED = 0

          # All notifications related to the resource, including notifications
          # pertaining to categories added in the future.
          ALL = 2

          # Notifications related to imminent account suspension.
          SUSPENSION = 3

          # Notifications related to security/privacy incidents, notifications, and
          # vulnerabilities.
          SECURITY = 5

          # Notifications related to technical events and issues such as outages,
          # errors, or bugs.
          TECHNICAL = 6

          # Notifications related to billing and payments notifications, price updates,
          # errors, or credits.
          BILLING = 7

          # Notifications related to enforcement actions, regulatory compliance, or
          # government notices.
          LEGAL = 8

          # Notifications related to new versions, product terms updates, or
          # deprecations.
          PRODUCT_UPDATES = 9

          # Child category of TECHNICAL. If assigned, technical incident notifications
          # will go to these contacts instead of TECHNICAL.
          TECHNICAL_INCIDENTS = 10
        end

        # A contact's validation state indicates whether or not it is the correct
        # contact to be receiving notifications for a particular resource.
        module ValidationState

          # The validation state is unknown or unspecified.
          VALIDATION_STATE_UNSPECIFIED = 0

          # The contact is marked as valid. This is usually done manually by the
          # contact admin. All new contacts begin in the valid state.
          VALID = 1

          # The contact is considered invalid. This may become the state if the
          # contact's email is found to be unreachable.
          INVALID = 2
        end
      end
    end
  end
end

