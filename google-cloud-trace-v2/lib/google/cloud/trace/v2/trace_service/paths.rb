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
    module Trace
      module V2
        module TraceService
          # Path helper methods for the TraceService API.
          module Paths
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

            ##
            # Create a fully-qualified Span resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/traces/{trace}/spans/{span}`
            #
            # @param project [String]
            # @param trace [String]
            # @param span [String]
            #
            # @return [::String]
            def span_path project:, trace:, span:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "trace cannot contain /" if trace.to_s.include? "/"

              "projects/#{project}/traces/#{trace}/spans/#{span}"
            end

            extend self
          end
        end
      end
    end
  end
end

