When(/^User is "(.*?)" page$/) do |url|
    visit url
    sleep 2
end

Then("User will validate account page") do
    expect(page).to(have_content("Account Setting"))
    expect(page).to have_xpath("(//div[@class='social-accounts-container']//div)[1]")
end

And("User scroll to Profile Settings") do
    personalDetail = find(:xpath, "(//div[@class='setting-container'])[1]")
    page.execute_script('arguments[0].scrollIntoView(true);', personalDetail)
end

Then("User should see credentials placeholder") do
    expect(page).to have_xpath("(//label[normalize-space(text())='Name']/following::input)[1]")
    expect(page).to have_xpath("(//label[normalize-space(text())='Email']/following::input)[1]")
    expect(page).to have_xpath("(//div[@class='form-input-detail-footer'])[1]")
end

And("User input name") do
    input_field = find(:xpath, "(//input[@data-val='true'])[1]")
    name = ENV['EDIT_NAME']
    input_field.click
    input_field.fill_in(with: name)
end

And("User click on Save Changes button") do
    find(:xpath, "(//div[@class='form-input-detail-footer']//button)[1]").click
end

Then("success popup displayed") do
    element = page.find(:xpath, "//img[@alt='icon success']")
    if element.visible?
        puts "Success icon is visible."
    else
        puts "Success icon is not visible."
  end
end
