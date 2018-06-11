require 'sidekiq-scheduler'

class App1ConsumerWorker
  include Sidekiq::Worker

  def perform
    ConsumerServices.generate_fruit "2", "j"
  end
end
