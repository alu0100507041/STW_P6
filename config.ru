require './lib/RockPaperScissors/piedra.rb'

builder = Rack::Builder.new do
  use Rack::Static, :urls => ['/public']
  use Rack::ShowExceptions
  use Rack::Lint

  use Rack::Session::Cookie,
      :key => 'rack.session', #modificar el nombre mediante el atributo
      :domain => 'piedrapapelotijeras.com',
      :secret => 'some_secret' #comprueba la integridad de los datos de la cookie
  run RockPaperScissors::App.new
end

use Rack::Server.start(
   :app=>builder,
   :Port=>3333,
   :server => 'thin',
   :host => 'www.piedrapapelotijeras.com'

)
