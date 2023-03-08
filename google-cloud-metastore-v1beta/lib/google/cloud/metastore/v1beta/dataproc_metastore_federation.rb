# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/metastore/v1beta/version"

require "google/cloud/metastore/v1beta/dataproc_metastore_federation/credentials"
require "google/cloud/metastore/v1beta/dataproc_metastore_federation/paths"
require "google/cloud/metastore/v1beta/dataproc_metastore_federation/operations"
require "google/cloud/metastore/v1beta/dataproc_metastore_federation/client"
require "google/cloud/metastore/v1beta/dataproc_metastore_federation/rest"

module Google
  module Cloud
    module Metastore
      module V1beta
        ##
        # Configures and manages metastore federation services.
        # Dataproc Metastore Federation Service allows federating a collection of
        # backend metastores like BigQuery, Dataplex Lakes, and other Dataproc
        # Metastores. The Federation Service exposes a gRPC URL through which metadata
        # from the backend metastores are served at query time.
        #
        # The Dataproc Metastore Federation API defines the following resource model:
        # * The service works with a collection of Google Cloud projects.
        # * Each project has a collection of available locations.
        # * Each location has a collection of federations.
        # * Dataproc Metastore Federations are resources with names of the
        # form:
        # `projects/{project_number}/locations/{location_id}/federations/{federation_id}`.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/metastore/v1beta/dataproc_metastore_federation"
        #     client = ::Google::Cloud::Metastore::V1beta::DataprocMetastoreFederation::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/metastore/v1beta/dataproc_metastore_federation/rest"
        #     client = ::Google::Cloud::Metastore::V1beta::DataprocMetastoreFederation::Rest::Client.new
        #
        module DataprocMetastoreFederation
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "dataproc_metastore_federation", "helpers.rb"
require "google/cloud/metastore/v1beta/dataproc_metastore_federation/helpers" if ::File.file? helper_path
