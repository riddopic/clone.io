desc 'Open IRB console for gem development environment'
task :console do
  require 'irb'
  require 'clone.io'
  ARGV.clear
  IRB.start
end
