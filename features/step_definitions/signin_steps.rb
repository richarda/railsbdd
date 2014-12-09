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
  fill_in('username', :with => 'testuser')
  fill_in('password', :with=> 'secretpassword')
  click_button('login')
end

Then(/^I am promted to sign in$/) do
  page.should have_content("Sign in")
end
