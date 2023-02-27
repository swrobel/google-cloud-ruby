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
    module OrgPolicy
      module V2
        module OrgPolicy
          # Path helper methods for the OrgPolicy API.
          module Paths
            ##
            # Create a fully-qualified Folder resource string.
            #
            # The resource will be in the following format:
            #
            # `folders/{folder}`
            #
            # @param folder [String]
            #
            # @return [::String]
            def folder_path folder:
              "folders/#{folder}"
            end

            ##
            # Create a fully-qualified Organization resource string.
            #
            # The resource will be in the following format:
            #
            # `organizations/{organization}`
            #
            # @param organization [String]
            #
            # @return [::String]
            def organization_path organization:
              "organizations/#{organization}"
            end

            ##
            # Create a fully-qualified Policy resource string.
            #
            # @overload policy_path(project:, policy:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/policies/{policy}`
            #
            #   @param project [String]
            #   @param policy [String]
            #
            # @overload policy_path(folder:, policy:)
            #   The resource will be in the following format:
            #
            #   `folders/{folder}/policies/{policy}`
            #
            #   @param folder [String]
            #   @param policy [String]
            #
            # @overload policy_path(organization:, policy:)
            #   The resource will be in the following format:
            #
            #   `organizations/{organization}/policies/{policy}`
            #
            #   @param organization [String]
            #   @param policy [String]
            #
            # @return [::String]
            def policy_path **args
              resources = {
                "policy:project" => (proc do |project:, policy:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/policies/#{policy}"
                end),
                "folder:policy" => (proc do |folder:, policy:|
                  raise ::ArgumentError, "folder cannot contain /" if folder.to_s.include? "/"

                  "folders/#{folder}/policies/#{policy}"
                end),
                "organization:policy" => (proc do |organization:, policy:|
                  raise ::ArgumentError, "organization cannot contain /" if organization.to_s.include? "/"

                  "organizations/#{organization}/policies/#{policy}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Project resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}`
            #
            # @param project [String]
            #
            # @return [::String]
            def project_path project:
              "projects/#{project}"
            end

            extend self
          end
        end
      end
    end
  end
end
