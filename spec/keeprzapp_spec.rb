# require 'rubygems'
# require 'appium_lib'
# require_relative 'helper_spec'
#
# describe "KeeprzAppTests" do
#
#   describe "MainActivity" do
#     context "on app loaded" do
#         it "has text view labled 'Hello World!'" do
#
#         # Add all the Appium library methods to Test to make
#         # calling them look nicer.
#         #Appium.promote_singleton_appium_methods Main
#
#         expect(@driver.find_element(:xpath, "//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.RelativeLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.ViewFlipper[1]/android.widget.FrameLayout[1]/android.view.View[1]").text).to eq 'התחל'
#
#       end
#     end
#   end
# end
