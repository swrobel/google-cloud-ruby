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
    module Eventarc
      module V1
        module Eventarc
          # Path helper methods for the Eventarc API.
          module Paths
            ##
            # Create a fully-qualified Channel resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/channels/{channel}`
            #
            # @param project [String]
            # @param location [String]
            # @param channel [String]
            #
            # @return [::String]
            def channel_path project:, location:, channel:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/channels/#{channel}"
            end

            ##
            # Create a fully-qualified ChannelConnection resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/channelConnections/{channel_connection}`
            #
            # @param project [String]
            # @param location [String]
            # @param channel_connection [String]
            #
            # @return [::String]
            def channel_connection_path project:, location:, channel_connection:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/channelConnections/#{channel_connection}"
            end

            ##
            # Create a fully-qualified CloudFunction resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/functions/{function}`
            #
            # @param project [String]
            # @param location [String]
            # @param function [String]
            #
            # @return [::String]
            def cloud_function_path project:, location:, function:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/functions/#{function}"
            end

            ##
            # Create a fully-qualified CryptoKey resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`
            #
            # @param project [String]
            # @param location [String]
            # @param key_ring [String]
            # @param crypto_key [String]
            #
            # @return [::String]
            def crypto_key_path project:, location:, key_ring:, crypto_key:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "key_ring cannot contain /" if key_ring.to_s.include? "/"

              "projects/#{project}/locations/#{location}/keyRings/#{key_ring}/cryptoKeys/#{crypto_key}"
            end

            ##
            # Create a fully-qualified GoogleChannelConfig resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/googleChannelConfig`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def google_channel_config_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}/googleChannelConfig"
            end

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
            # Create a fully-qualified Provider resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/providers/{provider}`
            #
            # @param project [String]
            # @param location [String]
            # @param provider [String]
            #
            # @return [::String]
            def provider_path project:, location:, provider:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/providers/#{provider}"
            end



            ##
            # Create a fully-qualified ServiceAccount resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/serviceAccounts/{service_account}`
            #
            # @param project [String]
            # @param service_account [String]
            #
            # @return [::String]
            def service_account_path project:, service_account:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/serviceAccounts/#{service_account}"
            end

            ##
            # Create a fully-qualified Trigger resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/triggers/{trigger}`
            #
            # @param project [String]
            # @param location [String]
            # @param trigger [String]
            #
            # @return [::String]
            def trigger_path project:, location:, trigger:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/triggers/#{trigger}"
            end

            ##
            # Create a fully-qualified Workflow resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/workflows/{workflow}`
            #
            # @param project [String]
            # @param location [String]
            # @param workflow [String]
            #
            # @return [::String]
            def workflow_path project:, location:, workflow:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/workflows/#{workflow}"
            end

            extend self
          end
        end
      end
    end
  end
end

