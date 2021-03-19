# frozen_string_literal: true

require_relative '../src/app/kafka/consumer'

ConsumerWorker.perform_async
