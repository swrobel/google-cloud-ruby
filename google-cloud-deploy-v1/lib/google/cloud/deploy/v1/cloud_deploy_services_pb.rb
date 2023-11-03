# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/deploy/v1/cloud_deploy.proto for package 'google.cloud.deploy.v1'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/deploy/v1/cloud_deploy_pb'

module Google
  module Cloud
    module Deploy
      module V1
        module CloudDeploy
          # CloudDeploy service creates and manages Continuous Delivery operations
          # on Google Cloud Platform via Skaffold (https://skaffold.dev).
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.deploy.v1.CloudDeploy'

            # Lists DeliveryPipelines in a given project and location.
            rpc :ListDeliveryPipelines, ::Google::Cloud::Deploy::V1::ListDeliveryPipelinesRequest, ::Google::Cloud::Deploy::V1::ListDeliveryPipelinesResponse
            # Gets details of a single DeliveryPipeline.
            rpc :GetDeliveryPipeline, ::Google::Cloud::Deploy::V1::GetDeliveryPipelineRequest, ::Google::Cloud::Deploy::V1::DeliveryPipeline
            # Creates a new DeliveryPipeline in a given project and location.
            rpc :CreateDeliveryPipeline, ::Google::Cloud::Deploy::V1::CreateDeliveryPipelineRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single DeliveryPipeline.
            rpc :UpdateDeliveryPipeline, ::Google::Cloud::Deploy::V1::UpdateDeliveryPipelineRequest, ::Google::Longrunning::Operation
            # Deletes a single DeliveryPipeline.
            rpc :DeleteDeliveryPipeline, ::Google::Cloud::Deploy::V1::DeleteDeliveryPipelineRequest, ::Google::Longrunning::Operation
            # Lists Targets in a given project and location.
            rpc :ListTargets, ::Google::Cloud::Deploy::V1::ListTargetsRequest, ::Google::Cloud::Deploy::V1::ListTargetsResponse
            # Creates a `Rollout` to roll back the specified target.
            rpc :RollbackTarget, ::Google::Cloud::Deploy::V1::RollbackTargetRequest, ::Google::Cloud::Deploy::V1::RollbackTargetResponse
            # Gets details of a single Target.
            rpc :GetTarget, ::Google::Cloud::Deploy::V1::GetTargetRequest, ::Google::Cloud::Deploy::V1::Target
            # Creates a new Target in a given project and location.
            rpc :CreateTarget, ::Google::Cloud::Deploy::V1::CreateTargetRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single Target.
            rpc :UpdateTarget, ::Google::Cloud::Deploy::V1::UpdateTargetRequest, ::Google::Longrunning::Operation
            # Deletes a single Target.
            rpc :DeleteTarget, ::Google::Cloud::Deploy::V1::DeleteTargetRequest, ::Google::Longrunning::Operation
            # Lists Releases in a given project and location.
            rpc :ListReleases, ::Google::Cloud::Deploy::V1::ListReleasesRequest, ::Google::Cloud::Deploy::V1::ListReleasesResponse
            # Gets details of a single Release.
            rpc :GetRelease, ::Google::Cloud::Deploy::V1::GetReleaseRequest, ::Google::Cloud::Deploy::V1::Release
            # Creates a new Release in a given project and location.
            rpc :CreateRelease, ::Google::Cloud::Deploy::V1::CreateReleaseRequest, ::Google::Longrunning::Operation
            # Abandons a Release in the Delivery Pipeline.
            rpc :AbandonRelease, ::Google::Cloud::Deploy::V1::AbandonReleaseRequest, ::Google::Cloud::Deploy::V1::AbandonReleaseResponse
            # Approves a Rollout.
            rpc :ApproveRollout, ::Google::Cloud::Deploy::V1::ApproveRolloutRequest, ::Google::Cloud::Deploy::V1::ApproveRolloutResponse
            # Advances a Rollout in a given project and location.
            rpc :AdvanceRollout, ::Google::Cloud::Deploy::V1::AdvanceRolloutRequest, ::Google::Cloud::Deploy::V1::AdvanceRolloutResponse
            # Cancels a Rollout in a given project and location.
            rpc :CancelRollout, ::Google::Cloud::Deploy::V1::CancelRolloutRequest, ::Google::Cloud::Deploy::V1::CancelRolloutResponse
            # Lists Rollouts in a given project and location.
            rpc :ListRollouts, ::Google::Cloud::Deploy::V1::ListRolloutsRequest, ::Google::Cloud::Deploy::V1::ListRolloutsResponse
            # Gets details of a single Rollout.
            rpc :GetRollout, ::Google::Cloud::Deploy::V1::GetRolloutRequest, ::Google::Cloud::Deploy::V1::Rollout
            # Creates a new Rollout in a given project and location.
            rpc :CreateRollout, ::Google::Cloud::Deploy::V1::CreateRolloutRequest, ::Google::Longrunning::Operation
            # Ignores the specified Job in a Rollout.
            rpc :IgnoreJob, ::Google::Cloud::Deploy::V1::IgnoreJobRequest, ::Google::Cloud::Deploy::V1::IgnoreJobResponse
            # Retries the specified Job in a Rollout.
            rpc :RetryJob, ::Google::Cloud::Deploy::V1::RetryJobRequest, ::Google::Cloud::Deploy::V1::RetryJobResponse
            # Lists JobRuns in a given project and location.
            rpc :ListJobRuns, ::Google::Cloud::Deploy::V1::ListJobRunsRequest, ::Google::Cloud::Deploy::V1::ListJobRunsResponse
            # Gets details of a single JobRun.
            rpc :GetJobRun, ::Google::Cloud::Deploy::V1::GetJobRunRequest, ::Google::Cloud::Deploy::V1::JobRun
            # Terminates a Job Run in a given project and location.
            rpc :TerminateJobRun, ::Google::Cloud::Deploy::V1::TerminateJobRunRequest, ::Google::Cloud::Deploy::V1::TerminateJobRunResponse
            # Gets the configuration for a location.
            rpc :GetConfig, ::Google::Cloud::Deploy::V1::GetConfigRequest, ::Google::Cloud::Deploy::V1::Config
            # Creates a new Automation in a given project and location.
            rpc :CreateAutomation, ::Google::Cloud::Deploy::V1::CreateAutomationRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single Automation resource.
            rpc :UpdateAutomation, ::Google::Cloud::Deploy::V1::UpdateAutomationRequest, ::Google::Longrunning::Operation
            # Deletes a single Automation resource.
            rpc :DeleteAutomation, ::Google::Cloud::Deploy::V1::DeleteAutomationRequest, ::Google::Longrunning::Operation
            # Gets details of a single Automation.
            rpc :GetAutomation, ::Google::Cloud::Deploy::V1::GetAutomationRequest, ::Google::Cloud::Deploy::V1::Automation
            # Lists Automations in a given project and location.
            rpc :ListAutomations, ::Google::Cloud::Deploy::V1::ListAutomationsRequest, ::Google::Cloud::Deploy::V1::ListAutomationsResponse
            # Gets details of a single AutomationRun.
            rpc :GetAutomationRun, ::Google::Cloud::Deploy::V1::GetAutomationRunRequest, ::Google::Cloud::Deploy::V1::AutomationRun
            # Lists AutomationRuns in a given project and location.
            rpc :ListAutomationRuns, ::Google::Cloud::Deploy::V1::ListAutomationRunsRequest, ::Google::Cloud::Deploy::V1::ListAutomationRunsResponse
            # Cancels an AutomationRun. The `state` of the `AutomationRun` after
            # cancelling is `CANCELLED`. `CancelAutomationRun` can be called on
            # AutomationRun in the state `IN_PROGRESS` and `PENDING`; AutomationRun
            # in a different state returns an `FAILED_PRECONDITION` error.
            rpc :CancelAutomationRun, ::Google::Cloud::Deploy::V1::CancelAutomationRunRequest, ::Google::Cloud::Deploy::V1::CancelAutomationRunResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
