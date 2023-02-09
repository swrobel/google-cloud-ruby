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
  module Iam
    module V1
      # Encapsulates settings provided to GetIamPolicy.
      # @!attribute [rw] requested_policy_version
      #   @return [::Integer]
      #     Optional. The maximum policy version that will be used to format the
      #     policy.
      #
      #     Valid values are 0, 1, and 3. Requests specifying an invalid value will be
      #     rejected.
      #
      #     Requests for policies with any conditional role bindings must specify
      #     version 3. Policies with no conditional role bindings may specify any valid
      #     value or leave the field unset.
      #
      #     The policy in the response might use the policy version that you specified,
      #     or it might use a lower policy version. For example, if you specify version
      #     3, but the policy has no conditional role bindings, the response uses
      #     version 1.
      #
      #     To learn which resources support conditions in their IAM policies, see the
      #     [IAM
      #     documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
      class GetPolicyOptions
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end
    end
  end
end

