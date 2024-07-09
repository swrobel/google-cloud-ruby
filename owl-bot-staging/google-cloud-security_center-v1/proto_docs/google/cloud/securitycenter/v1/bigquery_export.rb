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
    module SecurityCenter
      module V1
        # Configures how to deliver Findings to BigQuery Instance.
        # @!attribute [rw] name
        #   @return [::String]
        #     The relative resource name of this export. See:
        #     https://cloud.google.com/apis/design/resource_names#relative_resource_name.
        #     Example format:
        #     "organizations/\\{organization_id}/bigQueryExports/\\{export_id}" Example
        #     format: "folders/\\{folder_id}/bigQueryExports/\\{export_id}" Example format:
        #     "projects/\\{project_id}/bigQueryExports/\\{export_id}"
        #     This field is provided in responses, and is ignored when provided in create
        #     requests.
        # @!attribute [rw] description
        #   @return [::String]
        #     The description of the export (max of 1024 characters).
        # @!attribute [rw] filter
        #   @return [::String]
        #     Expression that defines the filter to apply across create/update events
        #     of findings. The expression is a list of zero or more restrictions combined
        #     via logical operators `AND` and `OR`. Parentheses are supported, and `OR`
        #     has higher precedence than `AND`.
        #
        #     Restrictions have the form `<field> <operator> <value>` and may have a
        #     `-` character in front of them to indicate negation. The fields map to
        #     those defined in the corresponding resource.
        #
        #     The supported operators are:
        #
        #     * `=` for all value types.
        #     * `>`, `<`, `>=`, `<=` for integer values.
        #     * `:`, meaning substring matching, for strings.
        #
        #     The supported value types are:
        #
        #     * string literals in quotes.
        #     * integer literals without quotes.
        #     * boolean literals `true` and `false` without quotes.
        # @!attribute [rw] dataset
        #   @return [::String]
        #     The dataset to write findings' updates to. Its format is
        #     "projects/[project_id]/datasets/[bigquery_dataset_id]".
        #     BigQuery Dataset unique ID  must contain only letters (a-z, A-Z), numbers
        #     (0-9), or underscores (_).
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which the BigQuery export was created.
        #     This field is set by the server and will be ignored if provided on export
        #     on creation.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The most recent time at which the BigQuery export was updated.
        #     This field is set by the server and will be ignored if provided on export
        #     creation or update.
        # @!attribute [r] most_recent_editor
        #   @return [::String]
        #     Output only. Email address of the user who last edited the BigQuery export.
        #     This field is set by the server and will be ignored if provided on export
        #     creation or update.
        # @!attribute [r] principal
        #   @return [::String]
        #     Output only. The service account that needs permission to create table and
        #     upload data to the BigQuery dataset.
        class BigQueryExport
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
