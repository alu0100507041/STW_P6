desc "Ejecutar servidor"
task :default do
  sh "ruby config.ru"
end

desc "Ejecutar pruebas unitarias"
task :test do
  sh "ruby -Ilib test/tc_piedra.rb"
end

desc "Ejecutar pruebas con rspec"
task :rspec do
  sh "rspec -Ilib -Ispec spec/piedra_spec.rb"
end

