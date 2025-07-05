Given(/^User is in "(.*?)" page$/) do |url|
    visit url
    if page.has_text?("Accept", wait: 5)
        page.click_on("Accept")
    end
    expect(page).to(have_content('Welcome back!'))
    sleep 2
end

When("User input email") do
    label = find('#username')
    input_field = label.find(:xpath, "//input[@placeholder='Email Address']")
    email = ENV['USER_EMAIL']
    input_field.fill_in(with: email)
end

And("User input password") do
    label = find('#password')
    input_field = label.find(:xpath, "//input[@placeholder='Password']")
    password = ENV['USER_PASSWORD']
    input_field.fill_in(with: password)
end

And("User click on Sign In button") do
    find(:xpath, "//button[@type='submit']").click
    sleep 2
end

Then("User will redirect to dashboard page") do
    if page.has_content?("Level Up to Premium Today!")
        find(:xpath, "//button[normalize-space(text())='Skip for now']").click
    end    
      # Assert element after dismiss popup
      expect(page).to have_css('i.ic-user')
      expect(page).to have_xpath("//div[contains(@class,'p-3 bg-base')]")
      expect(page).to have_content("Generate Stream Highlights")
end

And("User input invalid password") do
    label = find('#password')
    input_field = label.find(:xpath, "//input[@placeholder='Password']")
    password = ENV['INVALID_PASSWORD']
    input_field.fill_in(with: password)
end

Then("login failed popup appear") do
    expect(page).to have_xpath("//div[@aria-modal='true']//h2[1]", visible: true)
    expect(page).to have_css(".nic-warning-triangle")
end

And("login unsuccessful") do
    find('button.swal2-confirm.swal2-styled').click
    expect(page).to have_current_path('/login')
end

Then("User will see tooltip on password field") do
    message = page.evaluate_script("document.querySelector('#password').validationMessage")
    expect(message).to eq 'Isi isian ini.'
end