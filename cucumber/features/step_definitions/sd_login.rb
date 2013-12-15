Given(/^I navigate to (.*)\/$/) do |url|
  @driver.get url
end
When(/^I click join$/) do
  @driver.find_element(:link, 'JOIN').click
end
When(/^Input some personal details$/) do
  @driver.find_element(:id, 'ctl00_uiContent_uiEmailAddressinner').send_keys "test_user_#{SecureRandom.hex(3).upcase}@a.com"
  @driver.find_element(:id, 'ctl00_uiContent_uiPasswordinner').send_keys "password"
  @driver.find_element(:id, 'ctl00_uiContent_uiConfirmPasswordinner').send_keys "password"
  @driver.find_element(:id, 'ctl00_uiContent_uiPrimaryPhoneinner').send_keys "01225 100200"
  @driver.find_element(:id, 'ctl00_uiContent_uiTitleinner').send_keys "Mr"
  @driver.find_element(:id, 'ctl00_uiContent_uiFirstNameinner').send_keys "Test"
  @driver.find_element(:id, 'ctl00_uiContent_uiLastNameinner').send_keys "User"
  @driver.find_element(:id, 'ctl00_uiContent_uiAddressCountryinner').send_keys "United Kingdom"
  @driver.find_element(:id, 'ctl00_uiContent_uiLanguageinner').send_keys "English (United Kingdom)"
end
When(/^I click create account$/) do
  @driver.find_element(:id, 'ctl00_uiContent_BtnSubmit').click
end
Then(/^I will have registered to FlyVictor$/) do
  @driver.find_element(:tag_name, "body").text.include?("Your registration is almost complete.").should == true
end

Given(/^I open FlyVictor$/) do
  @login = Login.new(@driver)
end
When(/^I signup$/) do
  @join = Join.new(@driver)
  @join.create_new_user_account
end
When(/^I accept the Terms and Conditions$/) do
  @driver.find_element(:id, 'ctl00_uiContent_uiTermsAndConditionsinner').click
end