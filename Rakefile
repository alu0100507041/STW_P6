desc "Ejecucion del servidor para heroku"
task :default do
  sh "bundle exec rackup"
end

desc "Ejecutar servidor"
task :ejecutar do
  sh "ruby config.ru"
end

desc "Ejecutar pruebas unitarias"
task :test do
  sh "ruby -Ilib test/tc_piedra.rb"
end

desc "Ejecutar pruebas con rspec"
task :spec do
  sh "rspec -Ilib -Ispec spec/piedra_spec.rb"
end

