# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/bigtable/admin/v2/types.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'


descriptor_data = "\n$google/bigtable/admin/v2/types.proto\x12\x18google.bigtable.admin.v2\x1a\x1fgoogle/api/field_behavior.proto\"\xc7\x08\n\x04Type\x12:\n\nbytes_type\x18\x01 \x01(\x0b\x32$.google.bigtable.admin.v2.Type.BytesH\x00\x12<\n\x0bstring_type\x18\x02 \x01(\x0b\x32%.google.bigtable.admin.v2.Type.StringH\x00\x12:\n\nint64_type\x18\x05 \x01(\x0b\x32$.google.bigtable.admin.v2.Type.Int64H\x00\x12\x42\n\x0e\x61ggregate_type\x18\x06 \x01(\x0b\x32(.google.bigtable.admin.v2.Type.AggregateH\x00\x1a\xa9\x01\n\x05\x42ytes\x12?\n\x08\x65ncoding\x18\x01 \x01(\x0b\x32-.google.bigtable.admin.v2.Type.Bytes.Encoding\x1a_\n\x08\x45ncoding\x12@\n\x03raw\x18\x01 \x01(\x0b\x32\x31.google.bigtable.admin.v2.Type.Bytes.Encoding.RawH\x00\x1a\x05\n\x03RawB\n\n\x08\x65ncoding\x1a\xb9\x01\n\x06String\x12@\n\x08\x65ncoding\x18\x01 \x01(\x0b\x32..google.bigtable.admin.v2.Type.String.Encoding\x1am\n\x08\x45ncoding\x12J\n\x08utf8_raw\x18\x01 \x01(\x0b\x32\x36.google.bigtable.admin.v2.Type.String.Encoding.Utf8RawH\x00\x1a\t\n\x07Utf8RawB\n\n\x08\x65ncoding\x1a\x87\x02\n\x05Int64\x12?\n\x08\x65ncoding\x18\x01 \x01(\x0b\x32-.google.bigtable.admin.v2.Type.Int64.Encoding\x1a\xbc\x01\n\x08\x45ncoding\x12X\n\x10\x62ig_endian_bytes\x18\x01 \x01(\x0b\x32<.google.bigtable.admin.v2.Type.Int64.Encoding.BigEndianBytesH\x00\x1aJ\n\x0e\x42igEndianBytes\x12\x38\n\nbytes_type\x18\x01 \x01(\x0b\x32$.google.bigtable.admin.v2.Type.BytesB\n\n\x08\x65ncoding\x1a\xca\x01\n\tAggregate\x12\x32\n\ninput_type\x18\x01 \x01(\x0b\x32\x1e.google.bigtable.admin.v2.Type\x12\x37\n\nstate_type\x18\x02 \x01(\x0b\x32\x1e.google.bigtable.admin.v2.TypeB\x03\xe0\x41\x03\x12;\n\x03sum\x18\x04 \x01(\x0b\x32,.google.bigtable.admin.v2.Type.Aggregate.SumH\x00\x1a\x05\n\x03SumB\x0c\n\naggregatorB\x06\n\x04kindB\xcd\x01\n\x1c\x63om.google.bigtable.admin.v2B\nTypesProtoP\x01Z8cloud.google.com/go/bigtable/admin/apiv2/adminpb;adminpb\xaa\x02\x1eGoogle.Cloud.Bigtable.Admin.V2\xca\x02\x1eGoogle\\Cloud\\Bigtable\\Admin\\V2\xea\x02\"Google::Cloud::Bigtable::Admin::V2b\x06proto3"

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
    module Bigtable
      module Admin
        module V2
          Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Type").msgclass
          Type::Bytes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Type.Bytes").msgclass
          Type::Bytes::Encoding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Type.Bytes.Encoding").msgclass
          Type::Bytes::Encoding::Raw = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Type.Bytes.Encoding.Raw").msgclass
          Type::String = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Type.String").msgclass
          Type::String::Encoding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Type.String.Encoding").msgclass
          Type::String::Encoding::Utf8Raw = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Type.String.Encoding.Utf8Raw").msgclass
          Type::Int64 = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Type.Int64").msgclass
          Type::Int64::Encoding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Type.Int64.Encoding").msgclass
          Type::Int64::Encoding::BigEndianBytes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Type.Int64.Encoding.BigEndianBytes").msgclass
          Type::Aggregate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Type.Aggregate").msgclass
          Type::Aggregate::Sum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Type.Aggregate.Sum").msgclass
        end
      end
    end
  end
end
