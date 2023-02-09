# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/iam/credentials/v1/common.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/iam/credentials/v1/common.proto", :syntax => :proto3) do
    add_message "google.iam.credentials.v1.GenerateAccessTokenRequest" do
      optional :name, :string, 1
      repeated :delegates, :string, 2
      repeated :scope, :string, 4
      optional :lifetime, :message, 7, "google.protobuf.Duration"
    end
    add_message "google.iam.credentials.v1.GenerateAccessTokenResponse" do
      optional :access_token, :string, 1
      optional :expire_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "google.iam.credentials.v1.SignBlobRequest" do
      optional :name, :string, 1
      repeated :delegates, :string, 3
      optional :payload, :bytes, 5
    end
    add_message "google.iam.credentials.v1.SignBlobResponse" do
      optional :key_id, :string, 1
      optional :signed_blob, :bytes, 4
    end
    add_message "google.iam.credentials.v1.SignJwtRequest" do
      optional :name, :string, 1
      repeated :delegates, :string, 3
      optional :payload, :string, 5
    end
    add_message "google.iam.credentials.v1.SignJwtResponse" do
      optional :key_id, :string, 1
      optional :signed_jwt, :string, 2
    end
    add_message "google.iam.credentials.v1.GenerateIdTokenRequest" do
      optional :name, :string, 1
      repeated :delegates, :string, 2
      optional :audience, :string, 3
      optional :include_email, :bool, 4
    end
    add_message "google.iam.credentials.v1.GenerateIdTokenResponse" do
      optional :token, :string, 1
    end
  end
end

module Google
  module Iam
    module Credentials
      module V1
        GenerateAccessTokenRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.credentials.v1.GenerateAccessTokenRequest").msgclass
        GenerateAccessTokenResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.credentials.v1.GenerateAccessTokenResponse").msgclass
        SignBlobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.credentials.v1.SignBlobRequest").msgclass
        SignBlobResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.credentials.v1.SignBlobResponse").msgclass
        SignJwtRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.credentials.v1.SignJwtRequest").msgclass
        SignJwtResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.credentials.v1.SignJwtResponse").msgclass
        GenerateIdTokenRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.credentials.v1.GenerateIdTokenRequest").msgclass
        GenerateIdTokenResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.iam.credentials.v1.GenerateIdTokenResponse").msgclass
      end
    end
  end
end
