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
    module Talent
      module V4beta1
        # An event issued when an end user interacts with the application that
        # implements Cloud Talent Solution. Providing this information improves the
        # quality of results for the API clients, enabling the
        # service to perform optimally. The number of events sent must be consistent
        # with other calls, such as job searches, issued to the service by the client.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Strongly recommended for the best service experience.
        #
        #     A unique ID generated in the API responses. It can be found in
        #     {::Google::Cloud::Talent::V4beta1::ResponseMetadata#request_id ResponseMetadata.request_id}.
        # @!attribute [rw] event_id
        #   @return [::String]
        #     Required. A unique identifier, generated by the client application.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Required. The timestamp of the event.
        # @!attribute [rw] job_event
        #   @return [::Google::Cloud::Talent::V4beta1::JobEvent]
        #     An event issued when a job seeker interacts with the application that
        #     implements Cloud Talent Solution.
        # @!attribute [rw] event_notes
        #   @return [::String]
        #     Notes about the event provided by recruiters or other users, for example,
        #     feedback on why a profile was bookmarked.
        class ClientEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An event issued when a job seeker interacts with the application that
        # implements Cloud Talent Solution.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::Talent::V4beta1::JobEvent::JobEventType]
        #     Required. The type of the event (see
        #     {::Google::Cloud::Talent::V4beta1::JobEvent::JobEventType JobEventType}).
        # @!attribute [rw] jobs
        #   @return [::Array<::String>]
        #     Required. The [job name(s)][google.cloud.talent.v4beta1.Job.name]
        #     associated with this event. For example, if this is an
        #     {::Google::Cloud::Talent::V4beta1::JobEvent::JobEventType::IMPRESSION impression}
        #     event, this field contains the identifiers of all jobs shown to the job
        #     seeker. If this was a
        #     {::Google::Cloud::Talent::V4beta1::JobEvent::JobEventType::VIEW view} event, this
        #     field contains the identifier of the viewed job.
        #
        #     The format is
        #     "projects/\\{project_id}/tenants/\\{tenant_id}/jobs/\\{job_id}", for
        #     example, "projects/foo/tenants/bar/jobs/baz".
        # @!attribute [rw] profile
        #   @return [::String]
        #     The [profile name][google.cloud.talent.v4beta1.Profile.name] associated
        #     with this client event.
        #
        #     The format is
        #     "projects/\\{project_id}/tenants/\\{tenant_id}/profiles/\\{profile_id}",
        #     for example, "projects/foo/tenants/bar/profiles/baz".
        class JobEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # An enumeration of an event attributed to the behavior of the end user,
          # such as a job seeker.
          module JobEventType

            # The event is unspecified by other provided values.
            JOB_EVENT_TYPE_UNSPECIFIED = 0

            # The job seeker or other entity interacting with the service has
            # had a job rendered in their view, such as in a list of search results in
            # a compressed or clipped format. This event is typically associated with
            # the viewing of a jobs list on a single page by a job seeker.
            IMPRESSION = 1

            # The job seeker, or other entity interacting with the service, has
            # viewed the details of a job, including the full description. This
            # event doesn't apply to the viewing a snippet of a job appearing as a
            # part of the job search results. Viewing a snippet is associated with an
            # {::Google::Cloud::Talent::V4beta1::JobEvent::JobEventType::IMPRESSION impression}).
            VIEW = 2

            # The job seeker or other entity interacting with the service
            # performed an action to view a job and was redirected to a different
            # website for job.
            VIEW_REDIRECT = 3

            # The job seeker or other entity interacting with the service
            # began the process or demonstrated the intention of applying for a job.
            APPLICATION_START = 4

            # The job seeker or other entity interacting with the service
            # submitted an application for a job.
            APPLICATION_FINISH = 5

            # The job seeker or other entity interacting with the service
            # submitted an application for a job with a single click without
            # entering information. If a job seeker performs this action, send only
            # this event to the service. Do not also send
            # {::Google::Cloud::Talent::V4beta1::JobEvent::JobEventType::APPLICATION_START JobEventType.APPLICATION_START}
            # or
            # {::Google::Cloud::Talent::V4beta1::JobEvent::JobEventType::APPLICATION_FINISH JobEventType.APPLICATION_FINISH}
            # events.
            APPLICATION_QUICK_SUBMISSION = 6

            # The job seeker or other entity interacting with the service
            # performed an action to apply to a job and was redirected to a different
            # website to complete the application.
            APPLICATION_REDIRECT = 7

            # The job seeker or other entity interacting with the service began the
            # process or demonstrated the intention of applying for a job from the
            # search results page without viewing the details of the job posting.
            # If sending this event, JobEventType.VIEW event shouldn't be sent.
            APPLICATION_START_FROM_SEARCH = 8

            # The job seeker, or other entity interacting with the service, performs an
            # action with a single click from the search results page to apply to a job
            # (without viewing the details of the job posting), and is redirected
            # to a different website to complete the application. If a candidate
            # performs this action, send only this event to the service. Do not also
            # send
            # {::Google::Cloud::Talent::V4beta1::JobEvent::JobEventType::APPLICATION_START JobEventType.APPLICATION_START},
            # {::Google::Cloud::Talent::V4beta1::JobEvent::JobEventType::APPLICATION_FINISH JobEventType.APPLICATION_FINISH}
            # or
            # {::Google::Cloud::Talent::V4beta1::JobEvent::JobEventType::VIEW JobEventType.VIEW}
            # events.
            APPLICATION_REDIRECT_FROM_SEARCH = 9

            # This event should be used when a company submits an application
            # on behalf of a job seeker. This event is intended for use by staffing
            # agencies attempting to place candidates.
            APPLICATION_COMPANY_SUBMIT = 10

            # The job seeker or other entity interacting with the service demonstrated
            # an interest in a job by bookmarking or saving it.
            BOOKMARK = 11

            # The job seeker or other entity interacting with the service was
            # sent a notification, such as an email alert or device notification,
            # containing one or more jobs listings generated by the service.
            NOTIFICATION = 12

            # The job seeker or other entity interacting with the service was
            # employed by the hiring entity (employer). Send this event
            # only if the job seeker was hired through an application that was
            # initiated by a search conducted through the Cloud Talent Solution
            # service.
            HIRED = 13

            # A recruiter or staffing agency submitted an application on behalf of the
            # candidate after interacting with the service to identify a suitable job
            # posting.
            SENT_CV = 14

            # The entity interacting with the service (for example, the job seeker),
            # was granted an initial interview by the hiring entity (employer). This
            # event should only be sent if the job seeker was granted an interview as
            # part of an application that was initiated by a search conducted through /
            # recommendation provided by the Cloud Talent Solution service.
            INTERVIEW_GRANTED = 15
          end
        end
      end
    end
  end
end

