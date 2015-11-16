require 'rspec/core/rake_task'
require 'dotenv'
require 'cucumber/rake/task'

Dotenv.load(
        File.expand_path("../env/.env.#{ENV['ENV']}", __FILE__),
        File.expand_path("../env/.env", __FILE__))

namespace :testing
 desc "foo bar"
 task :rspec do
  RSpec::Core::RakeTask.new(:spec)
 end
end

task :cucumber do
  Cucumber::Rake::Task.new
end

task :default => :spec
