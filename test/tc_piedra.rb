require 'test/unit'
require './lib/RockPaperScissors/piedra.rb'
require "rack/test"

class RockPaperScissorsTest < Test::Unit::TestCase
  include Rack::Test::Methods
  def app
    Rack::Builder.new do
      use Rack::Session::Cookie,
        {:key => 'rack.session',
        :domain => 'piedrapapelotijeras.com',
        :secret => 'some_secret'}
      run RockPaperScissors::App.new
    end.to_app
  end
     def test_index
       get "/"
       assert last_response.ok?
     end
  
     def test_piedra
       get "/?choice=piedra"
       assert last_response.ok?
     end
  
     def test_papel
       get "/?choice=papel"
       assert last_response.ok?
     end
  
     def test_scissors
        get "/?choice=tijeras"
        assert last_response.ok?
     end
end
