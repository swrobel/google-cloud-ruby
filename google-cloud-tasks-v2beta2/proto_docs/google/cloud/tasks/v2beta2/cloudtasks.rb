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
      module V2beta2
        # Request message for {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#list_queues ListQueues}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The location name.
        #     For example: `projects/PROJECT_ID/locations/LOCATION_ID`
        # @!attribute [rw] filter
        #   @return [::String]
        #     `filter` can be used to specify a subset of queues. Any {::Google::Cloud::Tasks::V2beta2::Queue Queue}
        #     field can be used as a filter and several operators as supported.
        #     For example: `<=, <, >=, >, !=, =, :`. The filter syntax is the same as
        #     described in
        #     [Stackdriver's Advanced Logs
        #     Filters](https://cloud.google.com/logging/docs/view/advanced_filters).
        #
        #     Sample filter "app_engine_http_target: *".
        #
        #     Note that using filters might cause fewer queues than the
        #     requested_page size to be returned.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Requested page size.
        #
        #     The maximum page size is 9800. If unspecified, the page size will
        #     be the maximum. Fewer queues than requested might be returned,
        #     even if more queues exist; use the
        #     {::Google::Cloud::Tasks::V2beta2::ListQueuesResponse#next_page_token next_page_token} in the
        #     response to determine if more queues exist.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A token identifying the page of results to return.
        #
        #     To request the first page results, page_token must be empty. To
        #     request the next page of results, page_token must be the value of
        #     {::Google::Cloud::Tasks::V2beta2::ListQueuesResponse#next_page_token next_page_token} returned
        #     from the previous call to {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#list_queues ListQueues}
        #     method. It is an error to switch the value of the
        #     {::Google::Cloud::Tasks::V2beta2::ListQueuesRequest#filter filter} while iterating through pages.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Read mask is used for a more granular control over what the API returns.
        #     If the mask is not present all fields will be returned except
        #     [Queue.stats]. [Queue.stats] will be returned only if it was  explicitly
        #     specified in the mask.
        class ListQueuesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#list_queues ListQueues}.
        # @!attribute [rw] queues
        #   @return [::Array<::Google::Cloud::Tasks::V2beta2::Queue>]
        #     The list of queues.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        #
        #     To return the next page of results, call
        #     {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#list_queues ListQueues} with this value as the
        #     {::Google::Cloud::Tasks::V2beta2::ListQueuesRequest#page_token page_token}.
        #
        #     If the next_page_token is empty, there are no more results.
        #
        #     The page token is valid for only 2 hours.
        class ListQueuesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#get_queue GetQueue}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the queue. For example:
        #     `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Read mask is used for a more granular control over what the API returns.
        #     If the mask is not present all fields will be returned except
        #     [Queue.stats]. [Queue.stats] will be returned only if it was  explicitly
        #     specified in the mask.
        class GetQueueRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#create_queue CreateQueue}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The location name in which the queue will be created.
        #     For example: `projects/PROJECT_ID/locations/LOCATION_ID`
        #
        #     The list of allowed locations can be obtained by calling Cloud
        #     Tasks' implementation of
        #     [ListLocations][google.cloud.location.Locations.ListLocations].
        # @!attribute [rw] queue
        #   @return [::Google::Cloud::Tasks::V2beta2::Queue]
        #     Required. The queue to create.
        #
        #     [Queue's name][google.cloud.tasks.v2beta2.Queue.name] cannot be the same as an existing queue.
        class CreateQueueRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#update_queue UpdateQueue}.
        # @!attribute [rw] queue
        #   @return [::Google::Cloud::Tasks::V2beta2::Queue]
        #     Required. The queue to create or update.
        #
        #     The queue's {::Google::Cloud::Tasks::V2beta2::Queue#name name} must be specified.
        #
        #     Output only fields cannot be modified using UpdateQueue.
        #     Any value specified for an output only field will be ignored.
        #     The queue's {::Google::Cloud::Tasks::V2beta2::Queue#name name} cannot be changed.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     A mask used to specify which fields of the queue are being updated.
        #
        #     If empty, then all fields will be updated.
        class UpdateQueueRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#delete_queue DeleteQueue}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The queue name. For example:
        #     `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
        class DeleteQueueRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#purge_queue PurgeQueue}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The queue name. For example:
        #     `projects/PROJECT_ID/location/LOCATION_ID/queues/QUEUE_ID`
        class PurgeQueueRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#pause_queue PauseQueue}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The queue name. For example:
        #     `projects/PROJECT_ID/location/LOCATION_ID/queues/QUEUE_ID`
        class PauseQueueRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#resume_queue ResumeQueue}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The queue name. For example:
        #     `projects/PROJECT_ID/location/LOCATION_ID/queues/QUEUE_ID`
        class ResumeQueueRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for listing tasks using {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#list_tasks ListTasks}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The queue name. For example:
        #     `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
        # @!attribute [rw] response_view
        #   @return [::Google::Cloud::Tasks::V2beta2::Task::View]
        #     The response_view specifies which subset of the {::Google::Cloud::Tasks::V2beta2::Task Task} will be
        #     returned.
        #
        #     By default response_view is {::Google::Cloud::Tasks::V2beta2::Task::View::BASIC BASIC}; not all
        #     information is retrieved by default because some data, such as
        #     payloads, might be desirable to return only when needed because
        #     of its large size or because of the sensitivity of data that it
        #     contains.
        #
        #     Authorization for {::Google::Cloud::Tasks::V2beta2::Task::View::FULL FULL} requires
        #     `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
        #     permission on the {::Google::Cloud::Tasks::V2beta2::Task Task} resource.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum page size.
        #
        #     Fewer tasks than requested might be returned, even if more tasks exist; use
        #     {::Google::Cloud::Tasks::V2beta2::ListTasksResponse#next_page_token next_page_token} in the response to
        #     determine if more tasks exist.
        #
        #     The maximum page size is 1000. If unspecified, the page size will be the
        #     maximum.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A token identifying the page of results to return.
        #
        #     To request the first page results, page_token must be empty. To
        #     request the next page of results, page_token must be the value of
        #     {::Google::Cloud::Tasks::V2beta2::ListTasksResponse#next_page_token next_page_token} returned
        #     from the previous call to {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#list_tasks ListTasks}
        #     method.
        #
        #     The page token is valid for only 2 hours.
        class ListTasksRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for listing tasks using {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#list_tasks ListTasks}.
        # @!attribute [rw] tasks
        #   @return [::Array<::Google::Cloud::Tasks::V2beta2::Task>]
        #     The list of tasks.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        #
        #     To return the next page of results, call
        #     {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#list_tasks ListTasks} with this value as the
        #     {::Google::Cloud::Tasks::V2beta2::ListTasksRequest#page_token page_token}.
        #
        #     If the next_page_token is empty, there are no more results.
        class ListTasksResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for getting a task using {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#get_task GetTask}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The task name. For example:
        #     `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
        # @!attribute [rw] response_view
        #   @return [::Google::Cloud::Tasks::V2beta2::Task::View]
        #     The response_view specifies which subset of the {::Google::Cloud::Tasks::V2beta2::Task Task} will be
        #     returned.
        #
        #     By default response_view is {::Google::Cloud::Tasks::V2beta2::Task::View::BASIC BASIC}; not all
        #     information is retrieved by default because some data, such as
        #     payloads, might be desirable to return only when needed because
        #     of its large size or because of the sensitivity of data that it
        #     contains.
        #
        #     Authorization for {::Google::Cloud::Tasks::V2beta2::Task::View::FULL FULL} requires
        #     `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
        #     permission on the {::Google::Cloud::Tasks::V2beta2::Task Task} resource.
        class GetTaskRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#create_task CreateTask}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The queue name. For example:
        #     `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
        #
        #     The queue must already exist.
        # @!attribute [rw] task
        #   @return [::Google::Cloud::Tasks::V2beta2::Task]
        #     Required. The task to add.
        #
        #     Task names have the following format:
        #     `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`.
        #     The user can optionally specify a task {::Google::Cloud::Tasks::V2beta2::Task#name name}. If a
        #     name is not specified then the system will generate a random
        #     unique task id, which will be set in the task returned in the
        #     {::Google::Cloud::Tasks::V2beta2::Task#name response}.
        #
        #     If {::Google::Cloud::Tasks::V2beta2::Task#schedule_time schedule_time} is not set or is in the
        #     past then Cloud Tasks will set it to the current time.
        #
        #     Task De-duplication:
        #
        #     Explicitly specifying a task ID enables task de-duplication.  If
        #     a task's ID is identical to that of an existing task or a task
        #     that was deleted or completed recently then the call will fail
        #     with [ALREADY_EXISTS][google.rpc.Code.ALREADY_EXISTS].
        #     If the task's queue was created using Cloud Tasks, then another task with
        #     the same name can't be created for ~1hour after the original task was
        #     deleted or completed. If the task's queue was created using queue.yaml or
        #     queue.xml, then another task with the same name can't be created
        #     for ~9days after the original task was deleted or completed.
        #
        #     Because there is an extra lookup cost to identify duplicate task
        #     names, these {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#create_task CreateTask} calls have significantly
        #     increased latency. Using hashed strings for the task id or for
        #     the prefix of the task id is recommended. Choosing task ids that
        #     are sequential or have sequential prefixes, for example using a
        #     timestamp, causes an increase in latency and error rates in all
        #     task commands. The infrastructure relies on an approximately
        #     uniform distribution of task ids to store and serve tasks
        #     efficiently.
        # @!attribute [rw] response_view
        #   @return [::Google::Cloud::Tasks::V2beta2::Task::View]
        #     The response_view specifies which subset of the {::Google::Cloud::Tasks::V2beta2::Task Task} will be
        #     returned.
        #
        #     By default response_view is {::Google::Cloud::Tasks::V2beta2::Task::View::BASIC BASIC}; not all
        #     information is retrieved by default because some data, such as
        #     payloads, might be desirable to return only when needed because
        #     of its large size or because of the sensitivity of data that it
        #     contains.
        #
        #     Authorization for {::Google::Cloud::Tasks::V2beta2::Task::View::FULL FULL} requires
        #     `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
        #     permission on the {::Google::Cloud::Tasks::V2beta2::Task Task} resource.
        class CreateTaskRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for deleting a task using
        # {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#delete_task DeleteTask}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The task name. For example:
        #     `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
        class DeleteTaskRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for leasing tasks using {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#lease_tasks LeaseTasks}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The queue name. For example:
        #     `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID`
        # @!attribute [rw] max_tasks
        #   @return [::Integer]
        #     The maximum number of tasks to lease.
        #
        #     The system will make a best effort to return as close to as
        #     `max_tasks` as possible.
        #
        #     The largest that `max_tasks` can be is 1000.
        #
        #     The maximum total size of a {::Google::Cloud::Tasks::V2beta2::LeaseTasksResponse lease tasks response} is
        #     32 MB. If the sum of all task sizes requested reaches this limit,
        #     fewer tasks than requested are returned.
        # @!attribute [rw] lease_duration
        #   @return [::Google::Protobuf::Duration]
        #     Required. The duration of the lease.
        #
        #     Each task returned in the {::Google::Cloud::Tasks::V2beta2::LeaseTasksResponse response} will
        #     have its {::Google::Cloud::Tasks::V2beta2::Task#schedule_time schedule_time} set to the current
        #     time plus the `lease_duration`. The task is leased until its
        #     {::Google::Cloud::Tasks::V2beta2::Task#schedule_time schedule_time}; thus, the task will not be
        #     returned to another {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#lease_tasks LeaseTasks} call
        #     before its {::Google::Cloud::Tasks::V2beta2::Task#schedule_time schedule_time}.
        #
        #
        #     After the worker has successfully finished the work associated
        #     with the task, the worker must call via
        #     {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#acknowledge_task AcknowledgeTask} before the
        #     {::Google::Cloud::Tasks::V2beta2::Task#schedule_time schedule_time}. Otherwise the task will be
        #     returned to a later {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#lease_tasks LeaseTasks} call so
        #     that another worker can retry it.
        #
        #     The maximum lease duration is 1 week.
        #     `lease_duration` will be truncated to the nearest second.
        # @!attribute [rw] response_view
        #   @return [::Google::Cloud::Tasks::V2beta2::Task::View]
        #     The response_view specifies which subset of the {::Google::Cloud::Tasks::V2beta2::Task Task} will be
        #     returned.
        #
        #     By default response_view is {::Google::Cloud::Tasks::V2beta2::Task::View::BASIC BASIC}; not all
        #     information is retrieved by default because some data, such as
        #     payloads, might be desirable to return only when needed because
        #     of its large size or because of the sensitivity of data that it
        #     contains.
        #
        #     Authorization for {::Google::Cloud::Tasks::V2beta2::Task::View::FULL FULL} requires
        #     `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
        #     permission on the {::Google::Cloud::Tasks::V2beta2::Task Task} resource.
        # @!attribute [rw] filter
        #   @return [::String]
        #     `filter` can be used to specify a subset of tasks to lease.
        #
        #     When `filter` is set to `tag=<my-tag>` then the
        #     {::Google::Cloud::Tasks::V2beta2::LeaseTasksResponse response} will contain only tasks whose
        #     {::Google::Cloud::Tasks::V2beta2::PullMessage#tag tag} is equal to `<my-tag>`. `<my-tag>` must be
        #     less than 500 characters.
        #
        #     When `filter` is set to `tag_function=oldest_tag()`, only tasks which have
        #     the same tag as the task with the oldest
        #     {::Google::Cloud::Tasks::V2beta2::Task#schedule_time schedule_time} will be returned.
        #
        #     Grammar Syntax:
        #
        #     * `filter = "tag=" tag | "tag_function=" function`
        #
        #     * `tag = string`
        #
        #     * `function = "oldest_tag()"`
        #
        #     The `oldest_tag()` function returns tasks which have the same tag as the
        #     oldest task (ordered by schedule time).
        #
        #     SDK compatibility: Although the SDK allows tags to be either
        #     string or
        #     [bytes](https://cloud.google.com/appengine/docs/standard/java/javadoc/com/google/appengine/api/taskqueue/TaskOptions.html#tag-byte:A-),
        #     only UTF-8 encoded tags can be used in Cloud Tasks. Tag which
        #     aren't UTF-8 encoded can't be used in the
        #     {::Google::Cloud::Tasks::V2beta2::LeaseTasksRequest#filter filter} and the task's
        #     {::Google::Cloud::Tasks::V2beta2::PullMessage#tag tag} will be displayed as empty in Cloud Tasks.
        class LeaseTasksRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for leasing tasks using {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#lease_tasks LeaseTasks}.
        # @!attribute [rw] tasks
        #   @return [::Array<::Google::Cloud::Tasks::V2beta2::Task>]
        #     The leased tasks.
        class LeaseTasksResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for acknowledging a task using
        # {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#acknowledge_task AcknowledgeTask}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The task name. For example:
        #     `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
        # @!attribute [rw] schedule_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Required. The task's current schedule time, available in the
        #     {::Google::Cloud::Tasks::V2beta2::Task#schedule_time schedule_time} returned by
        #     {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#lease_tasks LeaseTasks} response or
        #     {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#renew_lease RenewLease} response. This restriction is
        #     to ensure that your worker currently holds the lease.
        class AcknowledgeTaskRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for renewing a lease using
        # {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#renew_lease RenewLease}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The task name. For example:
        #     `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
        # @!attribute [rw] schedule_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Required. The task's current schedule time, available in the
        #     {::Google::Cloud::Tasks::V2beta2::Task#schedule_time schedule_time} returned by
        #     {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#lease_tasks LeaseTasks} response or
        #     {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#renew_lease RenewLease} response. This restriction is
        #     to ensure that your worker currently holds the lease.
        # @!attribute [rw] lease_duration
        #   @return [::Google::Protobuf::Duration]
        #     Required. The desired new lease duration, starting from now.
        #
        #
        #     The maximum lease duration is 1 week.
        #     `lease_duration` will be truncated to the nearest second.
        # @!attribute [rw] response_view
        #   @return [::Google::Cloud::Tasks::V2beta2::Task::View]
        #     The response_view specifies which subset of the {::Google::Cloud::Tasks::V2beta2::Task Task} will be
        #     returned.
        #
        #     By default response_view is {::Google::Cloud::Tasks::V2beta2::Task::View::BASIC BASIC}; not all
        #     information is retrieved by default because some data, such as
        #     payloads, might be desirable to return only when needed because
        #     of its large size or because of the sensitivity of data that it
        #     contains.
        #
        #     Authorization for {::Google::Cloud::Tasks::V2beta2::Task::View::FULL FULL} requires
        #     `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
        #     permission on the {::Google::Cloud::Tasks::V2beta2::Task Task} resource.
        class RenewLeaseRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for canceling a lease using
        # {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#cancel_lease CancelLease}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The task name. For example:
        #     `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
        # @!attribute [rw] schedule_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Required. The task's current schedule time, available in the
        #     {::Google::Cloud::Tasks::V2beta2::Task#schedule_time schedule_time} returned by
        #     {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#lease_tasks LeaseTasks} response or
        #     {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#renew_lease RenewLease} response. This restriction is
        #     to ensure that your worker currently holds the lease.
        # @!attribute [rw] response_view
        #   @return [::Google::Cloud::Tasks::V2beta2::Task::View]
        #     The response_view specifies which subset of the {::Google::Cloud::Tasks::V2beta2::Task Task} will be
        #     returned.
        #
        #     By default response_view is {::Google::Cloud::Tasks::V2beta2::Task::View::BASIC BASIC}; not all
        #     information is retrieved by default because some data, such as
        #     payloads, might be desirable to return only when needed because
        #     of its large size or because of the sensitivity of data that it
        #     contains.
        #
        #     Authorization for {::Google::Cloud::Tasks::V2beta2::Task::View::FULL FULL} requires
        #     `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
        #     permission on the {::Google::Cloud::Tasks::V2beta2::Task Task} resource.
        class CancelLeaseRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for forcing a task to run now using
        # {::Google::Cloud::Tasks::V2beta2::CloudTasks::Client#run_task RunTask}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The task name. For example:
        #     `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
        # @!attribute [rw] response_view
        #   @return [::Google::Cloud::Tasks::V2beta2::Task::View]
        #     The response_view specifies which subset of the {::Google::Cloud::Tasks::V2beta2::Task Task} will be
        #     returned.
        #
        #     By default response_view is {::Google::Cloud::Tasks::V2beta2::Task::View::BASIC BASIC}; not all
        #     information is retrieved by default because some data, such as
        #     payloads, might be desirable to return only when needed because
        #     of its large size or because of the sensitivity of data that it
        #     contains.
        #
        #     Authorization for {::Google::Cloud::Tasks::V2beta2::Task::View::FULL FULL} requires
        #     `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
        #     permission on the {::Google::Cloud::Tasks::V2beta2::Task Task} resource.
        class RunTaskRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

