require 'rspec/expectations'
require 'appium_lib'
require 'cucumber/ast'
require 'pp'
require 'sauce_whisk'

caps = Appium.load_appium_txt file: File.join(Dir.pwd, ENV['APPIUM_CONFIG'])
pp caps

Appium::Driver.new(caps)

Before do
  $driver.start_driver
  $job_id = $driver.session_id

  SauceWhisk.username = $driver.sauce_username
  SauceWhisk.access_key= $driver.sauce_access_key
  @sauce_enabled = $driver.sauce_username.to_s != ""
end

After do |scenario|
  SauceWhisk::Jobs.change_status $job_id, !scenario.failed? if @sauce_enabled
  $driver.driver_quit
end
