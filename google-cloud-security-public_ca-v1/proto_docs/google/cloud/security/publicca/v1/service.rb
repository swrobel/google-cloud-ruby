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
    module Security
      module PublicCA
        module V1
          # Creates a new
          # {::Google::Cloud::Security::PublicCA::V1::ExternalAccountKey ExternalAccountKey} in
          # a given project.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The parent resource where this external_account_key will be
          #     created. Format: projects/[project_id]/locations/[location]. At present
          #     only the "global" location is supported.
          # @!attribute [rw] external_account_key
          #   @return [::Google::Cloud::Security::PublicCA::V1::ExternalAccountKey]
          #     Required. The external account key to create. This field only exists to
          #     future-proof the API. At present, all fields in ExternalAccountKey are
          #     output only and all values are ignored. For the purpose of the
          #     CreateExternalAccountKeyRequest, set it to a default/empty value.
          class CreateExternalAccountKeyRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
