When("User clicks on the Edits menu") do
    find(:xpath, "//span[normalize-space(text())='Edits']").click
end

Then("User should see the Edit your Clip with AI Edit section") do
    find(:xpath, "//*[text()='Understand']").click
    expect(page).to(have_content('AI Edit'))
    expect(page).to have_xpath("(//select[@id='soft_type'])[1]")
end

And("User should see the Start AI Edit button") do
    expect(page).to have_xpath("//button[contains(.,'Start AI Edit')]")
end

And("User clicks the Start AI Edit button") do
    find(:xpath, "//button[contains(.,'Start AI Edit')]").click
end

And("User click start button on modal") do
    find(:xpath, "//button[normalize-space(text())='Start AI Edit']").click
end

Then("User should see the clip editing interface") do
    expect(page).to have_xpath("//input[@type='url']")
    expect(page).to have_xpath("//button[normalize-space(text())='Get Clip']")
end