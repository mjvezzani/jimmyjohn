Given /^a visitor visits the home page$/ do
  visit '/static_pages/home'
end

Then /^they should see the QOTD$/ do
  page.should have_selector('h1', text: "Quote of the Day")
end

And /^they should see an option to sign up for QOTD$/ do
  page.should have_link('Sign Up')
end

And /^they should see an option to sign in for QOTD$/ do
  page.should have_link('Sign In')
end

And /^they should see an about link$/ do
  page.should have_link('About')
end

And /^they should see a contact link$/ do
  page.should have_link('Contact')
end
