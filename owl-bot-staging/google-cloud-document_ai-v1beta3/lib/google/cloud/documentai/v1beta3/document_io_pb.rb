# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/documentai/v1beta3/document_io.proto

require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/documentai/v1beta3/document_io.proto", :syntax => :proto3) do
    add_message "google.cloud.documentai.v1beta3.RawDocument" do
      optional :content, :bytes, 1
      optional :mime_type, :string, 2
    end
    add_message "google.cloud.documentai.v1beta3.GcsDocument" do
      optional :gcs_uri, :string, 1
      optional :mime_type, :string, 2
    end
    add_message "google.cloud.documentai.v1beta3.GcsDocuments" do
      repeated :documents, :message, 1, "google.cloud.documentai.v1beta3.GcsDocument"
    end
    add_message "google.cloud.documentai.v1beta3.GcsPrefix" do
      optional :gcs_uri_prefix, :string, 1
    end
    add_message "google.cloud.documentai.v1beta3.BatchDocumentsInputConfig" do
      oneof :source do
        optional :gcs_prefix, :message, 1, "google.cloud.documentai.v1beta3.GcsPrefix"
        optional :gcs_documents, :message, 2, "google.cloud.documentai.v1beta3.GcsDocuments"
      end
    end
    add_message "google.cloud.documentai.v1beta3.DocumentOutputConfig" do
      oneof :destination do
        optional :gcs_output_config, :message, 1, "google.cloud.documentai.v1beta3.DocumentOutputConfig.GcsOutputConfig"
      end
    end
    add_message "google.cloud.documentai.v1beta3.DocumentOutputConfig.GcsOutputConfig" do
      optional :gcs_uri, :string, 1
    end
  end
end

module Google
  module Cloud
    module DocumentAI
      module V1beta3
        RawDocument = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.RawDocument").msgclass
        GcsDocument = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.GcsDocument").msgclass
        GcsDocuments = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.GcsDocuments").msgclass
        GcsPrefix = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.GcsPrefix").msgclass
        BatchDocumentsInputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.BatchDocumentsInputConfig").msgclass
        DocumentOutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.DocumentOutputConfig").msgclass
        DocumentOutputConfig::GcsOutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.DocumentOutputConfig.GcsOutputConfig").msgclass
      end
    end
  end
end
