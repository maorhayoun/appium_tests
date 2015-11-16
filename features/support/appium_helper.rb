def button_exists? buttontext
  $driver.find_elements(:xpath, "//android.widget.Button[contains(@text,\"#{buttontext}\")]").count>0
end

def element_with_text type, text
  element = $driver.find_element(:xpath, "//android.widget.#{type}[contains(@text,\"#{text}\")]")
end

def element_with_id id
  element = $driver.find_element(:id, id)
end
