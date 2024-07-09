# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/connection.proto

require 'google/protobuf'


descriptor_data = "\n/google/cloud/securitycenter/v1/connection.proto\x12\x1egoogle.cloud.securitycenter.v1\"\x81\x02\n\nConnection\x12\x16\n\x0e\x64\x65stination_ip\x18\x01 \x01(\t\x12\x18\n\x10\x64\x65stination_port\x18\x02 \x01(\x05\x12\x11\n\tsource_ip\x18\x03 \x01(\t\x12\x13\n\x0bsource_port\x18\x04 \x01(\x05\x12\x45\n\x08protocol\x18\x05 \x01(\x0e\x32\x33.google.cloud.securitycenter.v1.Connection.Protocol\"R\n\x08Protocol\x12\x18\n\x14PROTOCOL_UNSPECIFIED\x10\x00\x12\x08\n\x04ICMP\x10\x01\x12\x07\n\x03TCP\x10\x06\x12\x07\n\x03UDP\x10\x11\x12\x07\n\x03GRE\x10/\x12\x07\n\x03\x45SP\x10\x32\x42\xe9\x01\n\"com.google.cloud.securitycenter.v1B\x0f\x43onnectionProtoP\x01ZJcloud.google.com/go/securitycenter/apiv1/securitycenterpb;securitycenterpb\xaa\x02\x1eGoogle.Cloud.SecurityCenter.V1\xca\x02\x1eGoogle\\Cloud\\SecurityCenter\\V1\xea\x02!Google::Cloud::SecurityCenter::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module SecurityCenter
      module V1
        Connection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Connection").msgclass
        Connection::Protocol = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Connection.Protocol").enummodule
      end
    end
  end
end
