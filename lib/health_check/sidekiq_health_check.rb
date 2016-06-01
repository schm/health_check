module HealthCheck
  class SidekiqHealthCheck
    extend BaseHealthCheck

    def self.check
      if (defined?(::Sidekiq)).nil?
        raise "Wrong configuration. Missing 'sidekiq' gem"
      end
      ::Sidekiq.redis { |r| '' if r.ping == 'PONG' }
    rescue Exception => e
      create_error 'sidekiq-redis', e.message
    end
  end
end
