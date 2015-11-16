require 'rubygems'
require 'appium_lib'
require 'sauce_whisk'
require 'pp'

caps = Appium.load_appium_txt file: File.join(Dir.pwd, ENV['APPIUM_CONFIG'])
pp caps

RSpec.configure do |config|

  config.around(:each) do |example|
    @driver = Appium::Driver.new(caps)
    @driver.start_driver
    job_id = @driver.session_id
    SauceWhisk.username = @driver.sauce_username
    SauceWhisk.access_key= @driver.sauce_access_key 
    begin
      example.run
    ensure
      SauceWhisk::Jobs.change_status job_id, example.exception.nil?
      @driver.driver_quit
    end
  end
end
