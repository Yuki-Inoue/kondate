module Kondate
  module HostPlugin
    class Base
      attr_reader :config

      # @param [HashWithIndifferentAccess] config
      def initialize(config)
        @config = config
      end

      # @param [String] host hostname
      # @return [String] environment name
      def get_environment(host)
        ENV['ENVIRONMENT'] || 'development'
      end

      # @param [String] host hostname
      # @return [Array] array of roles
      def get_roles(host)
        raise NotImplementedError
      end

      # @param [String] role role
      # @return [Array] array of hosts
      #
      # Available from kondate >= 0.3.0
      def get_hosts(role)
        raise NotImplementedError
      end

      # @param [String] host hostname
      # @return [Hash] arbitrary host information
      # def get_hostinfo(host)
      #   raise NotImplementedError
      # end
    end
  end
end
