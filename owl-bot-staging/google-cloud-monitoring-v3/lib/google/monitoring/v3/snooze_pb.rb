# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/v3/snooze.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/monitoring/v3/common_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/monitoring/v3/snooze.proto", :syntax => :proto3) do
    add_message "google.monitoring.v3.Snooze" do
      optional :name, :string, 1
      optional :criteria, :message, 3, "google.monitoring.v3.Snooze.Criteria"
      optional :interval, :message, 4, "google.monitoring.v3.TimeInterval"
      optional :display_name, :string, 5
    end
    add_message "google.monitoring.v3.Snooze.Criteria" do
      repeated :policies, :string, 1
    end
  end
end

module Google
  module Cloud
    module Monitoring
      module V3
        Snooze = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Snooze").msgclass
        Snooze::Criteria = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Snooze.Criteria").msgclass
      end
    end
  end
end
