Given(/^I have an existing account$/) do
  FactoryGirl.create(:user)
end

Given(/^I am not signed in$/) do
end

When(/^I visit the sign on page$/) do
  visit('/')
end

When(/^I sign in$/) do
  step "I visit the sign on page"
  @username = 'testuser'
  fill_in('username', :with => @username)
  fill_in('password', :with=> 'secretpassword')
  click_button('login')
end

Then(/^I am promted to sign in$/) do
  page.should have_content("Sign in")
end

Then(/^I see confirmation of my sign in$/) do
  page.should have_content("Welcome #{@username}")
end
