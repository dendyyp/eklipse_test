When("User click on Claim Offer") do
    expect(page).to have_css('.count-down')
    find(:xpath, "//button[@class='btn btn-link--highlight']").click
end

Then("User should see claim offer modal") do
    expect(page).to have_xpath("(//div[@class='count-down'])[2]")
    expect(page).to have_xpath("//div[contains(@class,'w-100 p-3')]//div[1]")
end

And("User click Close icon to dismiss modal") do
    find(:xpath, "//button[@class='btn btn-close']//img[1]").click
    expect(page).not_to have_xpath("//div[contains(@class,'w-100 p-3')]//div[1]")
end

When("User click Connect widget") do
    hypeGameContainer = find(:xpath, "(//div[@class='hypegame-container']//div)[1]")
    page.execute_script('arguments[0].scrollIntoView(true);', hypeGameContainer)
    find(:xpath, "(//div[@role='button']//h2)[1]").click
end

Then("User will see options to Connect new account") do
    expect(page).to have_xpath("(//div[contains(@class,'modal-dialog modal-new-social-account-dialog')]//div)[1]")
    expect(page).to have_css('.connect-new-account-section')
end

When("User click Generate widget") do
    hypeGameContainer = find(:xpath, "(//div[@class='hypegame-container']//div)[1]")
    page.execute_script('arguments[0].scrollIntoView(true);', hypeGameContainer)
    find(:xpath, "(//div[@role='button']//h2)[2]").click
end

Then("User will see import stream source") do
    expect(page).to have_css('.get-stream-modal-container')
    expect(page).to have_xpath("(//div[@class='modal-content']//div)[1]")
end
