Given(/^User visit "(.*?)"$/) do |url|
    visit url
    expect(page).to(have_content('#1 AI for Streamers & Creators—Automate Content'))
    sleep 3
end

Then("User should see landing page content") do
  expect(page).to have_css('.elementor-video', visible: true)
  expect(page).to have_xpath("(//h3[@class='elementor-heading-title elementor-size-default'])[1]")
end

And("User should see button get started on Eklipse") do
  startForFreeBtn = find(:xpath, "//span[normalize-space(text())='Start for Free']", visible: true)
  expect(startForFreeBtn).to be_visible
  learnPremiumBtn = find(:xpath, "//span[normalize-space(text())='Learn Premium']", visible: true)
  expect(learnPremiumBtn).to be_visible
end