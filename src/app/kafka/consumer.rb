# frozen_string_literal: true

require 'kafka'
require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = {
    host: ENV['REDIS_HOST'] || 'redis',
    port: ENV['REDIS_PORT'] || '6379'
  }
end

Sidekiq.configure_server do |config|
  config.redis = {
    host: ENV['REDIS_HOST'] || 'redis',
    port: ENV['REDIS_PORT'] || '6379'
  }
end

class ConsumerWorker
  include Sidekiq::Worker

  def perform
    kafka = Kafka.new([ENV['BROKER_URL']])
    kafka.each_message(topic: 'hackathon') do |message|
      puts 'A mensagem chegou!!!'
      puts JSON.parse(message.value)
    end
  end
end
