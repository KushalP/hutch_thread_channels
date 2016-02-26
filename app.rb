require 'sinatra'

class TestHutchThreadsApp < Sinatra::Base
  def initialize
    super
  end

  get '/' do
    random_number = Random.rand(1000)
    "Random number: #{random_number}"
  end
end
