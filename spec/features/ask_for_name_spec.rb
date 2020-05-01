feature "What's your name?" do
  scenario "Asks user for their name" do
    visit('/')
    expect(page).to have_content "What's your name?"
  end

  scenario "Outputs user name on submission" do
    visit('/')
    fill_in 'input_name', with: "Andrew"
    click_button "Go!"
    expect(page).to have_content "Andrew"
  end

  scenario "Outputs user name on submission" do
    visit('/')
    fill_in 'input_name', with: "David"
    click_button "Go!"
    expect(page).to have_content "David"
  end


end
