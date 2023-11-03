# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/deploy/v1/release_render_payload.proto

require 'google/protobuf'

require 'google/cloud/deploy/v1/cloud_deploy_pb'


descriptor_data = "\n3google/cloud/deploy/v1/release_render_payload.proto\x12\x16google.cloud.deploy.v1\x1a)google/cloud/deploy/v1/cloud_deploy.proto\"\x81\x01\n\x12ReleaseRenderEvent\x12\x0f\n\x07message\x18\x01 \x01(\t\x12\x0f\n\x07release\x18\x02 \x01(\t\x12I\n\x14release_render_state\x18\x03 \x01(\x0e\x32+.google.cloud.deploy.v1.Release.RenderStateBm\n\x1a\x63om.google.cloud.deploy.v1B\x19ReleaseRenderPayloadProtoP\x01Z2cloud.google.com/go/deploy/apiv1/deploypb;deploypbb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
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
    module Deploy
      module V1
        ReleaseRenderEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.ReleaseRenderEvent").msgclass
      end
    end
  end
end
