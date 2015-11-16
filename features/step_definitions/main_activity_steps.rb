Given(/^I have App running with appium$/) do
end

When(/^click "(.*?)" button$/) do |buttontext|
  button_exists? buttontext
  button = element_with_text "Button", buttontext #TODO:inject namespace
  button.click
end

When(/^text view is initialized with "([^"]*)"$/) do |text|
  textview = element_with_id "com.example.helloworldapp:id/textView" #TODO:inject namespace
  expect(textview.text).to eq text
end


Then(/^I should see "(.*?)" text in textview at main page$/) do |text| #TODO:inject namespace
  textview = element_with_id "com.example.helloworldapp:id/textView"
  expect(textview.text).to eq text
end

Given(/^I'm at Login view$/) do
   # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field_name, value|
  editor = element_with_id "com.example.helloworldapp:id/#{field_name.downcase}"
  editor.type value
end

Then(/^Alert is opened$/) do
   # Write code here that turns the phrase above into concrete actions
end
