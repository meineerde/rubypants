# encoding: utf-8

dir = File.dirname(__FILE__)
$LOAD_PATH.unshift(dir)

Dir["#{dir}/**/*_test.rb"].sort.each do |file|
  p file.sub(/^#{dir}\/(.*)\.rb$/, '\1')
  require file.sub(/^#{dir}\/(.*)\.rb$/, '\1')
end

