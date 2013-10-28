require 'rspec'
require './lib/RockPaperScissors/piedra.rb'
require "rack/test"

describe 'Piedra, Papel o Tijeras' do
     include Rack::Test::Methods
     def app
        Rack::Builder.new do
            use Rack::Session::Cookie,
              :key => 'rack.session',
              :domain => 'piedrapapelotijeras.com',
              :secret => 'some_secret'
            run RockPaperScissors::App.new
        end.to_app
     end
     it "accede al index" do
       get "/"
       expect(last_response).to be_ok
     end

     it "Pasandole por parametros piedra" do
       get "/?choice=piedra"
       expect(last_response).to be_ok
     end

     it "Pasandole por parametros papel" do
       get "/?choice=papel"
       expect(last_response).to be_ok
     end

     it "Pasandole por parametros tijeras" do
        get "/?choice=tijeras"
        expect(last_response).to be_ok
     end
end
