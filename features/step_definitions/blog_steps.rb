Given ("I am on the homepage") do
    visit root_path
end
  When ("I click on the create a {string} link") do |string|
      click_link string
  end
  Then ("I should be on the {string} page") do |string|
      expect(page).to have_content(string) 
  end
  Then ("I should see {string} field") do |string|
      pending
  end
  