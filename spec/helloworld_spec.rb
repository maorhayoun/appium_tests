require 'rubygems'
require 'appium_lib'
require_relative 'helper_spec'

describe "HelloWorldAppTests" do

  describe "MainActivity" do
    context "on app loaded" do
        it "has text view labled 'Hello World!'" do

        # Add all the Appium library methods to Test to make
        # calling them look nicer.
        #Appium.promote_singleton_appium_methods Main

        expect(@driver.find_element(:id, "com.example.helloworldapp:id/textView").text).to eq 'Hello world!'

      end
    end
  end
end
