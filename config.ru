require './lib/RockPaperScissors/piedra.rb'

  use Rack::Static, :urls => ['/public']
  use Rack::ShowExceptions
  use Rack::Lint

  use Rack::Session::Cookie,
      :key => 'rack.session', #modificar el nombre mediante el atributo
      :secret => 'some_secret' #comprueba la integridad de los datos de la cookie
  run RockPaperScissors::App.new

