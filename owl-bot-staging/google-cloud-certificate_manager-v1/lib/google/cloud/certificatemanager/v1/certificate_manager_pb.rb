# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/certificatemanager/v1/certificate_manager.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/certificatemanager/v1/certificate_issuance_config_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/certificatemanager/v1/certificate_manager.proto", :syntax => :proto3) do
    add_message "google.cloud.certificatemanager.v1.ListCertificatesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.certificatemanager.v1.ListCertificatesResponse" do
      repeated :certificates, :message, 1, "google.cloud.certificatemanager.v1.Certificate"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.certificatemanager.v1.GetCertificateRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.certificatemanager.v1.CreateCertificateRequest" do
      optional :parent, :string, 1
      optional :certificate_id, :string, 2
      optional :certificate, :message, 3, "google.cloud.certificatemanager.v1.Certificate"
    end
    add_message "google.cloud.certificatemanager.v1.UpdateCertificateRequest" do
      optional :certificate, :message, 1, "google.cloud.certificatemanager.v1.Certificate"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.certificatemanager.v1.DeleteCertificateRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.certificatemanager.v1.ListCertificateMapsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.certificatemanager.v1.ListCertificateMapsResponse" do
      repeated :certificate_maps, :message, 1, "google.cloud.certificatemanager.v1.CertificateMap"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.certificatemanager.v1.GetCertificateMapRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.certificatemanager.v1.CreateCertificateMapRequest" do
      optional :parent, :string, 1
      optional :certificate_map_id, :string, 2
      optional :certificate_map, :message, 3, "google.cloud.certificatemanager.v1.CertificateMap"
    end
    add_message "google.cloud.certificatemanager.v1.UpdateCertificateMapRequest" do
      optional :certificate_map, :message, 1, "google.cloud.certificatemanager.v1.CertificateMap"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.certificatemanager.v1.DeleteCertificateMapRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.certificatemanager.v1.ListCertificateMapEntriesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.certificatemanager.v1.ListCertificateMapEntriesResponse" do
      repeated :certificate_map_entries, :message, 1, "google.cloud.certificatemanager.v1.CertificateMapEntry"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.certificatemanager.v1.GetCertificateMapEntryRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.certificatemanager.v1.CreateCertificateMapEntryRequest" do
      optional :parent, :string, 1
      optional :certificate_map_entry_id, :string, 2
      optional :certificate_map_entry, :message, 3, "google.cloud.certificatemanager.v1.CertificateMapEntry"
    end
    add_message "google.cloud.certificatemanager.v1.UpdateCertificateMapEntryRequest" do
      optional :certificate_map_entry, :message, 1, "google.cloud.certificatemanager.v1.CertificateMapEntry"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.certificatemanager.v1.DeleteCertificateMapEntryRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.certificatemanager.v1.ListDnsAuthorizationsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.certificatemanager.v1.ListDnsAuthorizationsResponse" do
      repeated :dns_authorizations, :message, 1, "google.cloud.certificatemanager.v1.DnsAuthorization"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.certificatemanager.v1.GetDnsAuthorizationRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.certificatemanager.v1.CreateDnsAuthorizationRequest" do
      optional :parent, :string, 1
      optional :dns_authorization_id, :string, 2
      optional :dns_authorization, :message, 3, "google.cloud.certificatemanager.v1.DnsAuthorization"
    end
    add_message "google.cloud.certificatemanager.v1.UpdateDnsAuthorizationRequest" do
      optional :dns_authorization, :message, 1, "google.cloud.certificatemanager.v1.DnsAuthorization"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.certificatemanager.v1.DeleteDnsAuthorizationRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.certificatemanager.v1.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_message, :string, 5
      optional :requested_cancellation, :bool, 6
      optional :api_version, :string, 7
    end
    add_message "google.cloud.certificatemanager.v1.Certificate" do
      optional :name, :string, 1
      optional :description, :string, 8
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      map :labels, :string, :string, 4
      repeated :san_dnsnames, :string, 6
      optional :pem_certificate, :string, 9
      optional :expire_time, :message, 7, "google.protobuf.Timestamp"
      optional :scope, :enum, 12, "google.cloud.certificatemanager.v1.Certificate.Scope"
      oneof :type do
        optional :self_managed, :message, 5, "google.cloud.certificatemanager.v1.Certificate.SelfManagedCertificate"
        optional :managed, :message, 11, "google.cloud.certificatemanager.v1.Certificate.ManagedCertificate"
      end
    end
    add_message "google.cloud.certificatemanager.v1.Certificate.SelfManagedCertificate" do
      optional :pem_certificate, :string, 1
      optional :pem_private_key, :string, 2
    end
    add_message "google.cloud.certificatemanager.v1.Certificate.ManagedCertificate" do
      repeated :domains, :string, 1
      repeated :dns_authorizations, :string, 2
      optional :issuance_config, :string, 6
      optional :state, :enum, 4, "google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.State"
      optional :provisioning_issue, :message, 3, "google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.ProvisioningIssue"
      repeated :authorization_attempt_info, :message, 5, "google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.AuthorizationAttemptInfo"
    end
    add_message "google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.ProvisioningIssue" do
      optional :reason, :enum, 1, "google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.ProvisioningIssue.Reason"
      optional :details, :string, 2
    end
    add_enum "google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.ProvisioningIssue.Reason" do
      value :REASON_UNSPECIFIED, 0
      value :AUTHORIZATION_ISSUE, 1
      value :RATE_LIMITED, 2
    end
    add_message "google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.AuthorizationAttemptInfo" do
      optional :domain, :string, 1
      optional :state, :enum, 2, "google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.State"
      optional :failure_reason, :enum, 3, "google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.FailureReason"
      optional :details, :string, 4
    end
    add_enum "google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.State" do
      value :STATE_UNSPECIFIED, 0
      value :AUTHORIZING, 1
      value :AUTHORIZED, 6
      value :FAILED, 7
    end
    add_enum "google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.FailureReason" do
      value :FAILURE_REASON_UNSPECIFIED, 0
      value :CONFIG, 1
      value :CAA, 2
      value :RATE_LIMITED, 3
    end
    add_enum "google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.State" do
      value :STATE_UNSPECIFIED, 0
      value :PROVISIONING, 1
      value :FAILED, 2
      value :ACTIVE, 3
    end
    add_enum "google.cloud.certificatemanager.v1.Certificate.Scope" do
      value :DEFAULT, 0
      value :EDGE_CACHE, 1
    end
    add_message "google.cloud.certificatemanager.v1.CertificateMap" do
      optional :name, :string, 1
      optional :description, :string, 5
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 6, "google.protobuf.Timestamp"
      map :labels, :string, :string, 3
      repeated :gclb_targets, :message, 4, "google.cloud.certificatemanager.v1.CertificateMap.GclbTarget"
    end
    add_message "google.cloud.certificatemanager.v1.CertificateMap.GclbTarget" do
      repeated :ip_configs, :message, 2, "google.cloud.certificatemanager.v1.CertificateMap.GclbTarget.IpConfig"
      oneof :target_proxy do
        optional :target_https_proxy, :string, 1
        optional :target_ssl_proxy, :string, 3
      end
    end
    add_message "google.cloud.certificatemanager.v1.CertificateMap.GclbTarget.IpConfig" do
      optional :ip_address, :string, 1
      repeated :ports, :uint32, 3
    end
    add_message "google.cloud.certificatemanager.v1.CertificateMapEntry" do
      optional :name, :string, 1
      optional :description, :string, 9
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      map :labels, :string, :string, 4
      repeated :certificates, :string, 7
      optional :state, :enum, 8, "google.cloud.certificatemanager.v1.ServingState"
      oneof :match do
        optional :hostname, :string, 5
        optional :matcher, :enum, 10, "google.cloud.certificatemanager.v1.CertificateMapEntry.Matcher"
      end
    end
    add_enum "google.cloud.certificatemanager.v1.CertificateMapEntry.Matcher" do
      value :MATCHER_UNSPECIFIED, 0
      value :PRIMARY, 1
    end
    add_message "google.cloud.certificatemanager.v1.DnsAuthorization" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      map :labels, :string, :string, 4
      optional :description, :string, 5
      optional :domain, :string, 6
      optional :dns_resource_record, :message, 10, "google.cloud.certificatemanager.v1.DnsAuthorization.DnsResourceRecord"
    end
    add_message "google.cloud.certificatemanager.v1.DnsAuthorization.DnsResourceRecord" do
      optional :name, :string, 1
      optional :type, :string, 2
      optional :data, :string, 3
    end
    add_enum "google.cloud.certificatemanager.v1.ServingState" do
      value :SERVING_STATE_UNSPECIFIED, 0
      value :ACTIVE, 1
      value :PENDING, 2
    end
  end
end

module Google
  module Cloud
    module CertificateManager
      module V1
        ListCertificatesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.ListCertificatesRequest").msgclass
        ListCertificatesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.ListCertificatesResponse").msgclass
        GetCertificateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.GetCertificateRequest").msgclass
        CreateCertificateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.CreateCertificateRequest").msgclass
        UpdateCertificateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.UpdateCertificateRequest").msgclass
        DeleteCertificateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.DeleteCertificateRequest").msgclass
        ListCertificateMapsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.ListCertificateMapsRequest").msgclass
        ListCertificateMapsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.ListCertificateMapsResponse").msgclass
        GetCertificateMapRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.GetCertificateMapRequest").msgclass
        CreateCertificateMapRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.CreateCertificateMapRequest").msgclass
        UpdateCertificateMapRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.UpdateCertificateMapRequest").msgclass
        DeleteCertificateMapRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.DeleteCertificateMapRequest").msgclass
        ListCertificateMapEntriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.ListCertificateMapEntriesRequest").msgclass
        ListCertificateMapEntriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.ListCertificateMapEntriesResponse").msgclass
        GetCertificateMapEntryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.GetCertificateMapEntryRequest").msgclass
        CreateCertificateMapEntryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.CreateCertificateMapEntryRequest").msgclass
        UpdateCertificateMapEntryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.UpdateCertificateMapEntryRequest").msgclass
        DeleteCertificateMapEntryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.DeleteCertificateMapEntryRequest").msgclass
        ListDnsAuthorizationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.ListDnsAuthorizationsRequest").msgclass
        ListDnsAuthorizationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.ListDnsAuthorizationsResponse").msgclass
        GetDnsAuthorizationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.GetDnsAuthorizationRequest").msgclass
        CreateDnsAuthorizationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.CreateDnsAuthorizationRequest").msgclass
        UpdateDnsAuthorizationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.UpdateDnsAuthorizationRequest").msgclass
        DeleteDnsAuthorizationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.DeleteDnsAuthorizationRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.OperationMetadata").msgclass
        Certificate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.Certificate").msgclass
        Certificate::SelfManagedCertificate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.Certificate.SelfManagedCertificate").msgclass
        Certificate::ManagedCertificate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.Certificate.ManagedCertificate").msgclass
        Certificate::ManagedCertificate::ProvisioningIssue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.ProvisioningIssue").msgclass
        Certificate::ManagedCertificate::ProvisioningIssue::Reason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.ProvisioningIssue.Reason").enummodule
        Certificate::ManagedCertificate::AuthorizationAttemptInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.AuthorizationAttemptInfo").msgclass
        Certificate::ManagedCertificate::AuthorizationAttemptInfo::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.State").enummodule
        Certificate::ManagedCertificate::AuthorizationAttemptInfo::FailureReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.AuthorizationAttemptInfo.FailureReason").enummodule
        Certificate::ManagedCertificate::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.Certificate.ManagedCertificate.State").enummodule
        Certificate::Scope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.Certificate.Scope").enummodule
        CertificateMap = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.CertificateMap").msgclass
        CertificateMap::GclbTarget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.CertificateMap.GclbTarget").msgclass
        CertificateMap::GclbTarget::IpConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.CertificateMap.GclbTarget.IpConfig").msgclass
        CertificateMapEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.CertificateMapEntry").msgclass
        CertificateMapEntry::Matcher = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.CertificateMapEntry.Matcher").enummodule
        DnsAuthorization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.DnsAuthorization").msgclass
        DnsAuthorization::DnsResourceRecord = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.DnsAuthorization.DnsResourceRecord").msgclass
        ServingState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.certificatemanager.v1.ServingState").enummodule
      end
    end
  end
end
