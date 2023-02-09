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
    module Spanner
      module Admin
        module Instance
          module V1
            # Encapsulates progress related information for a Cloud Spanner long
            # running instance operations.
            # @!attribute [rw] progress_percent
            #   @return [::Integer]
            #     Percent completion of the operation.
            #     Values are between 0 and 100 inclusive.
            # @!attribute [rw] start_time
            #   @return [::Google::Protobuf::Timestamp]
            #     Time the request was received.
            # @!attribute [rw] end_time
            #   @return [::Google::Protobuf::Timestamp]
            #     If set, the time at which this operation failed or was completed
            #     successfully.
            class OperationProgress
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end
      end
    end
  end
end

