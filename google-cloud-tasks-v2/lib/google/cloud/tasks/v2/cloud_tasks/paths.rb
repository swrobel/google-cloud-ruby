# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module Tasks
      module V2
        module CloudTasks
          # Path helper methods for the CloudTasks API.
          module Paths
            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            ##
            # Create a fully-qualified Queue resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/queues/{queue}`
            #
            # @param project [String]
            # @param location [String]
            # @param queue [String]
            #
            # @return [::String]
            def queue_path project:, location:, queue:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/queues/#{queue}"
            end

            ##
            # Create a fully-qualified Task resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/queues/{queue}/tasks/{task}`
            #
            # @param project [String]
            # @param location [String]
            # @param queue [String]
            # @param task [String]
            #
            # @return [::String]
            def task_path project:, location:, queue:, task:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "queue cannot contain /" if queue.to_s.include? "/"

              "projects/#{project}/locations/#{location}/queues/#{queue}/tasks/#{task}"
            end

            extend self
          end
        end
      end
    end
  end
end

