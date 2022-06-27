# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/networkmanagement/v1/trace.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/networkmanagement/v1/trace.proto", :syntax => :proto3) do
    add_message "google.cloud.networkmanagement.v1.Trace" do
      optional :endpoint_info, :message, 1, "google.cloud.networkmanagement.v1.EndpointInfo"
      repeated :steps, :message, 2, "google.cloud.networkmanagement.v1.Step"
    end
    add_message "google.cloud.networkmanagement.v1.Step" do
      optional :description, :string, 1
      optional :state, :enum, 2, "google.cloud.networkmanagement.v1.Step.State"
      optional :causes_drop, :bool, 3
      optional :project_id, :string, 4
      oneof :step_info do
        optional :instance, :message, 5, "google.cloud.networkmanagement.v1.InstanceInfo"
        optional :firewall, :message, 6, "google.cloud.networkmanagement.v1.FirewallInfo"
        optional :route, :message, 7, "google.cloud.networkmanagement.v1.RouteInfo"
        optional :endpoint, :message, 8, "google.cloud.networkmanagement.v1.EndpointInfo"
        optional :forwarding_rule, :message, 9, "google.cloud.networkmanagement.v1.ForwardingRuleInfo"
        optional :vpn_gateway, :message, 10, "google.cloud.networkmanagement.v1.VpnGatewayInfo"
        optional :vpn_tunnel, :message, 11, "google.cloud.networkmanagement.v1.VpnTunnelInfo"
        optional :deliver, :message, 12, "google.cloud.networkmanagement.v1.DeliverInfo"
        optional :forward, :message, 13, "google.cloud.networkmanagement.v1.ForwardInfo"
        optional :abort, :message, 14, "google.cloud.networkmanagement.v1.AbortInfo"
        optional :drop, :message, 15, "google.cloud.networkmanagement.v1.DropInfo"
        optional :load_balancer, :message, 16, "google.cloud.networkmanagement.v1.LoadBalancerInfo"
        optional :network, :message, 17, "google.cloud.networkmanagement.v1.NetworkInfo"
        optional :gke_master, :message, 18, "google.cloud.networkmanagement.v1.GKEMasterInfo"
        optional :cloud_sql_instance, :message, 19, "google.cloud.networkmanagement.v1.CloudSQLInstanceInfo"
      end
    end
    add_enum "google.cloud.networkmanagement.v1.Step.State" do
      value :STATE_UNSPECIFIED, 0
      value :START_FROM_INSTANCE, 1
      value :START_FROM_INTERNET, 2
      value :START_FROM_PRIVATE_NETWORK, 3
      value :START_FROM_GKE_MASTER, 21
      value :START_FROM_CLOUD_SQL_INSTANCE, 22
      value :APPLY_INGRESS_FIREWALL_RULE, 4
      value :APPLY_EGRESS_FIREWALL_RULE, 5
      value :APPLY_ROUTE, 6
      value :APPLY_FORWARDING_RULE, 7
      value :SPOOFING_APPROVED, 8
      value :ARRIVE_AT_INSTANCE, 9
      value :ARRIVE_AT_INTERNAL_LOAD_BALANCER, 10
      value :ARRIVE_AT_EXTERNAL_LOAD_BALANCER, 11
      value :ARRIVE_AT_VPN_GATEWAY, 12
      value :ARRIVE_AT_VPN_TUNNEL, 13
      value :NAT, 14
      value :PROXY_CONNECTION, 15
      value :DELIVER, 16
      value :DROP, 17
      value :FORWARD, 18
      value :ABORT, 19
      value :VIEWER_PERMISSION_MISSING, 20
    end
    add_message "google.cloud.networkmanagement.v1.InstanceInfo" do
      optional :display_name, :string, 1
      optional :uri, :string, 2
      optional :interface, :string, 3
      optional :network_uri, :string, 4
      optional :internal_ip, :string, 5
      optional :external_ip, :string, 6
      repeated :network_tags, :string, 7
      optional :service_account, :string, 8
    end
    add_message "google.cloud.networkmanagement.v1.NetworkInfo" do
      optional :display_name, :string, 1
      optional :uri, :string, 2
      optional :matched_ip_range, :string, 4
    end
    add_message "google.cloud.networkmanagement.v1.FirewallInfo" do
      optional :display_name, :string, 1
      optional :uri, :string, 2
      optional :direction, :string, 3
      optional :action, :string, 4
      optional :priority, :int32, 5
      optional :network_uri, :string, 6
      repeated :target_tags, :string, 7
      repeated :target_service_accounts, :string, 8
      optional :policy, :string, 9
      optional :firewall_rule_type, :enum, 10, "google.cloud.networkmanagement.v1.FirewallInfo.FirewallRuleType"
    end
    add_enum "google.cloud.networkmanagement.v1.FirewallInfo.FirewallRuleType" do
      value :FIREWALL_RULE_TYPE_UNSPECIFIED, 0
      value :HIERARCHICAL_FIREWALL_POLICY_RULE, 1
      value :VPC_FIREWALL_RULE, 2
      value :IMPLIED_VPC_FIREWALL_RULE, 3
    end
    add_message "google.cloud.networkmanagement.v1.RouteInfo" do
      optional :route_type, :enum, 8, "google.cloud.networkmanagement.v1.RouteInfo.RouteType"
      optional :next_hop_type, :enum, 9, "google.cloud.networkmanagement.v1.RouteInfo.NextHopType"
      optional :display_name, :string, 1
      optional :uri, :string, 2
      optional :dest_ip_range, :string, 3
      optional :next_hop, :string, 4
      optional :network_uri, :string, 5
      optional :priority, :int32, 6
      repeated :instance_tags, :string, 7
    end
    add_enum "google.cloud.networkmanagement.v1.RouteInfo.RouteType" do
      value :ROUTE_TYPE_UNSPECIFIED, 0
      value :SUBNET, 1
      value :STATIC, 2
      value :DYNAMIC, 3
      value :PEERING_SUBNET, 4
      value :PEERING_STATIC, 5
      value :PEERING_DYNAMIC, 6
    end
    add_enum "google.cloud.networkmanagement.v1.RouteInfo.NextHopType" do
      value :NEXT_HOP_TYPE_UNSPECIFIED, 0
      value :NEXT_HOP_IP, 1
      value :NEXT_HOP_INSTANCE, 2
      value :NEXT_HOP_NETWORK, 3
      value :NEXT_HOP_PEERING, 4
      value :NEXT_HOP_INTERCONNECT, 5
      value :NEXT_HOP_VPN_TUNNEL, 6
      value :NEXT_HOP_VPN_GATEWAY, 7
      value :NEXT_HOP_INTERNET_GATEWAY, 8
      value :NEXT_HOP_BLACKHOLE, 9
      value :NEXT_HOP_ILB, 10
    end
    add_message "google.cloud.networkmanagement.v1.ForwardingRuleInfo" do
      optional :display_name, :string, 1
      optional :uri, :string, 2
      optional :matched_protocol, :string, 3
      optional :matched_port_range, :string, 6
      optional :vip, :string, 4
      optional :target, :string, 5
      optional :network_uri, :string, 7
    end
    add_message "google.cloud.networkmanagement.v1.LoadBalancerInfo" do
      optional :load_balancer_type, :enum, 1, "google.cloud.networkmanagement.v1.LoadBalancerInfo.LoadBalancerType"
      optional :health_check_uri, :string, 2
      repeated :backends, :message, 3, "google.cloud.networkmanagement.v1.LoadBalancerBackend"
      optional :backend_type, :enum, 4, "google.cloud.networkmanagement.v1.LoadBalancerInfo.BackendType"
      optional :backend_uri, :string, 5
    end
    add_enum "google.cloud.networkmanagement.v1.LoadBalancerInfo.LoadBalancerType" do
      value :LOAD_BALANCER_TYPE_UNSPECIFIED, 0
      value :INTERNAL_TCP_UDP, 1
      value :NETWORK_TCP_UDP, 2
      value :HTTP_PROXY, 3
      value :TCP_PROXY, 4
      value :SSL_PROXY, 5
    end
    add_enum "google.cloud.networkmanagement.v1.LoadBalancerInfo.BackendType" do
      value :BACKEND_TYPE_UNSPECIFIED, 0
      value :BACKEND_SERVICE, 1
      value :TARGET_POOL, 2
    end
    add_message "google.cloud.networkmanagement.v1.LoadBalancerBackend" do
      optional :display_name, :string, 1
      optional :uri, :string, 2
      optional :health_check_firewall_state, :enum, 3, "google.cloud.networkmanagement.v1.LoadBalancerBackend.HealthCheckFirewallState"
      repeated :health_check_allowing_firewall_rules, :string, 4
      repeated :health_check_blocking_firewall_rules, :string, 5
    end
    add_enum "google.cloud.networkmanagement.v1.LoadBalancerBackend.HealthCheckFirewallState" do
      value :HEALTH_CHECK_FIREWALL_STATE_UNSPECIFIED, 0
      value :CONFIGURED, 1
      value :MISCONFIGURED, 2
    end
    add_message "google.cloud.networkmanagement.v1.VpnGatewayInfo" do
      optional :display_name, :string, 1
      optional :uri, :string, 2
      optional :network_uri, :string, 3
      optional :ip_address, :string, 4
      optional :vpn_tunnel_uri, :string, 5
      optional :region, :string, 6
    end
    add_message "google.cloud.networkmanagement.v1.VpnTunnelInfo" do
      optional :display_name, :string, 1
      optional :uri, :string, 2
      optional :source_gateway, :string, 3
      optional :remote_gateway, :string, 4
      optional :remote_gateway_ip, :string, 5
      optional :source_gateway_ip, :string, 6
      optional :network_uri, :string, 7
      optional :region, :string, 8
      optional :routing_type, :enum, 9, "google.cloud.networkmanagement.v1.VpnTunnelInfo.RoutingType"
    end
    add_enum "google.cloud.networkmanagement.v1.VpnTunnelInfo.RoutingType" do
      value :ROUTING_TYPE_UNSPECIFIED, 0
      value :ROUTE_BASED, 1
      value :POLICY_BASED, 2
      value :DYNAMIC, 3
    end
    add_message "google.cloud.networkmanagement.v1.EndpointInfo" do
      optional :source_ip, :string, 1
      optional :destination_ip, :string, 2
      optional :protocol, :string, 3
      optional :source_port, :int32, 4
      optional :destination_port, :int32, 5
      optional :source_network_uri, :string, 6
      optional :destination_network_uri, :string, 7
    end
    add_message "google.cloud.networkmanagement.v1.DeliverInfo" do
      optional :target, :enum, 1, "google.cloud.networkmanagement.v1.DeliverInfo.Target"
      optional :resource_uri, :string, 2
    end
    add_enum "google.cloud.networkmanagement.v1.DeliverInfo.Target" do
      value :TARGET_UNSPECIFIED, 0
      value :INSTANCE, 1
      value :INTERNET, 2
      value :GOOGLE_API, 3
      value :GKE_MASTER, 4
      value :CLOUD_SQL_INSTANCE, 5
    end
    add_message "google.cloud.networkmanagement.v1.ForwardInfo" do
      optional :target, :enum, 1, "google.cloud.networkmanagement.v1.ForwardInfo.Target"
      optional :resource_uri, :string, 2
    end
    add_enum "google.cloud.networkmanagement.v1.ForwardInfo.Target" do
      value :TARGET_UNSPECIFIED, 0
      value :PEERING_VPC, 1
      value :VPN_GATEWAY, 2
      value :INTERCONNECT, 3
      value :GKE_MASTER, 4
      value :IMPORTED_CUSTOM_ROUTE_NEXT_HOP, 5
      value :CLOUD_SQL_INSTANCE, 6
    end
    add_message "google.cloud.networkmanagement.v1.AbortInfo" do
      optional :cause, :enum, 1, "google.cloud.networkmanagement.v1.AbortInfo.Cause"
      optional :resource_uri, :string, 2
      repeated :projects_missing_permission, :string, 3
    end
    add_enum "google.cloud.networkmanagement.v1.AbortInfo.Cause" do
      value :CAUSE_UNSPECIFIED, 0
      value :UNKNOWN_NETWORK, 1
      value :UNKNOWN_IP, 2
      value :UNKNOWN_PROJECT, 3
      value :PERMISSION_DENIED, 4
      value :NO_SOURCE_LOCATION, 5
      value :INVALID_ARGUMENT, 6
      value :NO_EXTERNAL_IP, 7
      value :UNINTENDED_DESTINATION, 8
      value :TRACE_TOO_LONG, 9
      value :INTERNAL_ERROR, 10
      value :SOURCE_ENDPOINT_NOT_FOUND, 11
      value :MISMATCHED_SOURCE_NETWORK, 12
      value :DESTINATION_ENDPOINT_NOT_FOUND, 13
      value :MISMATCHED_DESTINATION_NETWORK, 14
    end
    add_message "google.cloud.networkmanagement.v1.DropInfo" do
      optional :cause, :enum, 1, "google.cloud.networkmanagement.v1.DropInfo.Cause"
      optional :resource_uri, :string, 2
    end
    add_enum "google.cloud.networkmanagement.v1.DropInfo.Cause" do
      value :CAUSE_UNSPECIFIED, 0
      value :UNKNOWN_EXTERNAL_ADDRESS, 1
      value :FOREIGN_IP_DISALLOWED, 2
      value :FIREWALL_RULE, 3
      value :NO_ROUTE, 4
      value :ROUTE_BLACKHOLE, 5
      value :ROUTE_WRONG_NETWORK, 6
      value :PRIVATE_TRAFFIC_TO_INTERNET, 7
      value :PRIVATE_GOOGLE_ACCESS_DISALLOWED, 8
      value :NO_EXTERNAL_ADDRESS, 9
      value :UNKNOWN_INTERNAL_ADDRESS, 10
      value :FORWARDING_RULE_MISMATCH, 11
      value :FORWARDING_RULE_NO_INSTANCES, 12
      value :FIREWALL_BLOCKING_LOAD_BALANCER_BACKEND_HEALTH_CHECK, 13
      value :INSTANCE_NOT_RUNNING, 14
      value :TRAFFIC_TYPE_BLOCKED, 15
      value :GKE_MASTER_UNAUTHORIZED_ACCESS, 16
      value :CLOUD_SQL_INSTANCE_UNAUTHORIZED_ACCESS, 17
      value :DROPPED_INSIDE_GKE_SERVICE, 18
      value :DROPPED_INSIDE_CLOUD_SQL_SERVICE, 19
      value :GOOGLE_MANAGED_SERVICE_NO_PEERING, 20
      value :CLOUD_SQL_INSTANCE_NO_IP_ADDRESS, 21
    end
    add_message "google.cloud.networkmanagement.v1.GKEMasterInfo" do
      optional :cluster_uri, :string, 2
      optional :cluster_network_uri, :string, 4
      optional :internal_ip, :string, 5
      optional :external_ip, :string, 6
    end
    add_message "google.cloud.networkmanagement.v1.CloudSQLInstanceInfo" do
      optional :display_name, :string, 1
      optional :uri, :string, 2
      optional :network_uri, :string, 4
      optional :internal_ip, :string, 5
      optional :external_ip, :string, 6
      optional :region, :string, 7
    end
  end
end

module Google
  module Cloud
    module NetworkManagement
      module V1
        Trace = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.Trace").msgclass
        Step = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.Step").msgclass
        Step::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.Step.State").enummodule
        InstanceInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.InstanceInfo").msgclass
        NetworkInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.NetworkInfo").msgclass
        FirewallInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.FirewallInfo").msgclass
        FirewallInfo::FirewallRuleType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.FirewallInfo.FirewallRuleType").enummodule
        RouteInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.RouteInfo").msgclass
        RouteInfo::RouteType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.RouteInfo.RouteType").enummodule
        RouteInfo::NextHopType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.RouteInfo.NextHopType").enummodule
        ForwardingRuleInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.ForwardingRuleInfo").msgclass
        LoadBalancerInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.LoadBalancerInfo").msgclass
        LoadBalancerInfo::LoadBalancerType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.LoadBalancerInfo.LoadBalancerType").enummodule
        LoadBalancerInfo::BackendType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.LoadBalancerInfo.BackendType").enummodule
        LoadBalancerBackend = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.LoadBalancerBackend").msgclass
        LoadBalancerBackend::HealthCheckFirewallState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.LoadBalancerBackend.HealthCheckFirewallState").enummodule
        VpnGatewayInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.VpnGatewayInfo").msgclass
        VpnTunnelInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.VpnTunnelInfo").msgclass
        VpnTunnelInfo::RoutingType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.VpnTunnelInfo.RoutingType").enummodule
        EndpointInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.EndpointInfo").msgclass
        DeliverInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.DeliverInfo").msgclass
        DeliverInfo::Target = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.DeliverInfo.Target").enummodule
        ForwardInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.ForwardInfo").msgclass
        ForwardInfo::Target = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.ForwardInfo.Target").enummodule
        AbortInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.AbortInfo").msgclass
        AbortInfo::Cause = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.AbortInfo.Cause").enummodule
        DropInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.DropInfo").msgclass
        DropInfo::Cause = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.DropInfo.Cause").enummodule
        GKEMasterInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.GKEMasterInfo").msgclass
        CloudSQLInstanceInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.CloudSQLInstanceInfo").msgclass
      end
    end
  end
end
