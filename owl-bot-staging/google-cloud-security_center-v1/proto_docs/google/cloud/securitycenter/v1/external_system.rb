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
  module Cloud
    module SecurityCenter
      module V1
        # Representation of third party SIEM/SOAR fields within SCC.
        # @!attribute [rw] name
        #   @return [::String]
        #     Full resource name of the external system, for example:
        #     "organizations/1234/sources/5678/findings/123456/externalSystems/jira",
        #     "folders/1234/sources/5678/findings/123456/externalSystems/jira",
        #     "projects/1234/sources/5678/findings/123456/externalSystems/jira"
        # @!attribute [rw] assignees
        #   @return [::Array<::String>]
        #     References primary/secondary etc assignees in the external system.
        # @!attribute [rw] external_uid
        #   @return [::String]
        #     The identifier that's used to track the finding's corresponding case in the
        #     external system.
        # @!attribute [rw] status
        #   @return [::String]
        #     The most recent status of the finding's corresponding case, as reported by
        #     the external system.
        # @!attribute [rw] external_system_update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the case was last updated, as reported by the external
        #     system.
        # @!attribute [rw] case_uri
        #   @return [::String]
        #     The link to the finding's corresponding case in the external system.
        # @!attribute [rw] case_priority
        #   @return [::String]
        #     The priority of the finding's corresponding case in the external system.
        # @!attribute [rw] case_sla
        #   @return [::Google::Protobuf::Timestamp]
        #     The SLA of the finding's corresponding case in the external system.
        # @!attribute [rw] case_create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the case was created, as reported by the external system.
        # @!attribute [rw] case_close_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the case was closed, as reported by the external system.
        # @!attribute [rw] ticket_info
        #   @return [::Google::Cloud::SecurityCenter::V1::ExternalSystem::TicketInfo]
        #     Information about the ticket, if any, that is being used to track the
        #     resolution of the issue that is identified by this finding.
        class ExternalSystem
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Information about the ticket, if any, that is being used to track the
          # resolution of the issue that is identified by this finding.
          # @!attribute [rw] id
          #   @return [::String]
          #     The identifier of the ticket in the ticket system.
          # @!attribute [rw] assignee
          #   @return [::String]
          #     The assignee of the ticket in the ticket system.
          # @!attribute [rw] description
          #   @return [::String]
          #     The description of the ticket in the ticket system.
          # @!attribute [rw] uri
          #   @return [::String]
          #     The link to the ticket in the ticket system.
          # @!attribute [rw] status
          #   @return [::String]
          #     The latest status of the ticket, as reported by the ticket system.
          # @!attribute [rw] update_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time when the ticket was last updated, as reported by the ticket
          #     system.
          class TicketInfo
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
