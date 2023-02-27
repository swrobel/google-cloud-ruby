# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/metastore/v1beta/metastore.proto for package 'google.cloud.metastore.v1beta'
# Original file comments:
# Copyright 2022 Google LLC
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
require 'google/cloud/metastore/v1beta/metastore_pb'

module Google
  module Cloud
    module Metastore
      module V1beta
        module DataprocMetastore
          # Configures and manages metastore services.
          # Metastore services are fully managed, highly available, autoscaled,
          # autohealing, OSS-native deployments of technical metadata management
          # software. Each metastore service exposes a network endpoint through which
          # metadata queries are served. Metadata queries can originate from a variety
          # of sources, including Apache Hive, Apache Presto, and Apache Spark.
          #
          # The Dataproc Metastore API defines the following resource model:
          #
          # * The service works with a collection of Google Cloud projects, named:
          # `/projects/*`
          # * Each project has a collection of available locations, named: `/locations/*`
          #   (a location must refer to a Google Cloud `region`)
          # * Each location has a collection of services, named: `/services/*`
          # * Dataproc Metastore services are resources with names of the form:
          #
          #   `/projects/{project_number}/locations/{location_id}/services/{service_id}`.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.metastore.v1beta.DataprocMetastore'

            # Lists services in a project and location.
            rpc :ListServices, ::Google::Cloud::Metastore::V1beta::ListServicesRequest, ::Google::Cloud::Metastore::V1beta::ListServicesResponse
            # Gets the details of a single service.
            rpc :GetService, ::Google::Cloud::Metastore::V1beta::GetServiceRequest, ::Google::Cloud::Metastore::V1beta::Service
            # Creates a metastore service in a project and location.
            rpc :CreateService, ::Google::Cloud::Metastore::V1beta::CreateServiceRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single service.
            rpc :UpdateService, ::Google::Cloud::Metastore::V1beta::UpdateServiceRequest, ::Google::Longrunning::Operation
            # Deletes a single service.
            rpc :DeleteService, ::Google::Cloud::Metastore::V1beta::DeleteServiceRequest, ::Google::Longrunning::Operation
            # Lists imports in a service.
            rpc :ListMetadataImports, ::Google::Cloud::Metastore::V1beta::ListMetadataImportsRequest, ::Google::Cloud::Metastore::V1beta::ListMetadataImportsResponse
            # Gets details of a single import.
            rpc :GetMetadataImport, ::Google::Cloud::Metastore::V1beta::GetMetadataImportRequest, ::Google::Cloud::Metastore::V1beta::MetadataImport
            # Creates a new MetadataImport in a given project and location.
            rpc :CreateMetadataImport, ::Google::Cloud::Metastore::V1beta::CreateMetadataImportRequest, ::Google::Longrunning::Operation
            # Updates a single import.
            # Only the description field of MetadataImport is supported to be updated.
            rpc :UpdateMetadataImport, ::Google::Cloud::Metastore::V1beta::UpdateMetadataImportRequest, ::Google::Longrunning::Operation
            # Exports metadata from a service.
            rpc :ExportMetadata, ::Google::Cloud::Metastore::V1beta::ExportMetadataRequest, ::Google::Longrunning::Operation
            # Restores a service from a backup.
            rpc :RestoreService, ::Google::Cloud::Metastore::V1beta::RestoreServiceRequest, ::Google::Longrunning::Operation
            # Lists backups in a service.
            rpc :ListBackups, ::Google::Cloud::Metastore::V1beta::ListBackupsRequest, ::Google::Cloud::Metastore::V1beta::ListBackupsResponse
            # Gets details of a single backup.
            rpc :GetBackup, ::Google::Cloud::Metastore::V1beta::GetBackupRequest, ::Google::Cloud::Metastore::V1beta::Backup
            # Creates a new backup in a given project and location.
            rpc :CreateBackup, ::Google::Cloud::Metastore::V1beta::CreateBackupRequest, ::Google::Longrunning::Operation
            # Deletes a single backup.
            rpc :DeleteBackup, ::Google::Cloud::Metastore::V1beta::DeleteBackupRequest, ::Google::Longrunning::Operation
            # Removes the attached IAM policies for a resource
            rpc :RemoveIamPolicy, ::Google::Cloud::Metastore::V1beta::RemoveIamPolicyRequest, ::Google::Cloud::Metastore::V1beta::RemoveIamPolicyResponse
            # Query DPMS metadata.
            rpc :QueryMetadata, ::Google::Cloud::Metastore::V1beta::QueryMetadataRequest, ::Google::Longrunning::Operation
            # Move a table to another database.
            rpc :MoveTableToDatabase, ::Google::Cloud::Metastore::V1beta::MoveTableToDatabaseRequest, ::Google::Longrunning::Operation
            # Alter metadata resource location. The metadata resource can be a database,
            # table, or partition. This functionality only updates the parent directory
            # for the respective metadata resource and does not transfer any existing
            # data to the new location.
            rpc :AlterMetadataResourceLocation, ::Google::Cloud::Metastore::V1beta::AlterMetadataResourceLocationRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
