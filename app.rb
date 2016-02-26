require 'securerandom'
require 'sinatra'

class TestHutchThreadsApp < Sinatra::Base
  get '/' do
    random_number = SecureRandom.random_number
    "Random number: #{random_number}"
  end
end
