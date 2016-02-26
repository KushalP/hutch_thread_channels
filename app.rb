require 'hutch'
require 'sinatra'

class TestHutchThreadsApp < Sinatra::Base
  PREFIX = "hutch_thread_channels"
  QUEUE_NAME = "#{PREFIX}_queue"
  ROUTING_KEY = "#{PREFIX}_routing_key"

  def initialize
    Hutch.connect

    queue = Hutch.broker.queue(QUEUE_NAME)
    Hutch.broker.bind_queue(queue, [ROUTING_KEY])

    super
  end

  get '/' do
    random_number = Random.rand(1000)
    Hutch.publish(ROUTING_KEY, subject: "random_number", action: random_number)
    "Random number: #{random_number}"
  end
end
