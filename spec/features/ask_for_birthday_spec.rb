feature "When's your birthday?" do

  before do
    date_and_time = Time.new
    @day = date_and_time.day
    @month = date_and_time.month
  end

  let(:month_hash) { { 1 => 'January', 2 => 'February', 3 => 'March', 4 => 'April', 5 => 'May', 6 => 'June', 7 => 'July', 8 => 'August', 9 => 'September', 10 => 'October', 11 => 'Novemeber', 12 => 'December' } }


  scenario "Asks the user for their birthday" do
    visit('/')
    expect(page).to have_content "When's your birthday?"
  end

  scenario "Outputs happy birthday message if it's the users birthday" do
    visit('/')
    fill_in 'input_name', with: "Andrew"
    # p @day
    # p @month
    # p month_hash
    # p month_hash[@month]

    fill_in 'input_day', with: "#{@day}"
    fill_in 'input_month', with: month_hash[@month]
    click_button "Go!"
    expect(page).to have_content "Happy Birthday Andrew!"
  end

  scenario "Outputs the days until the user birthday" do
    visit('/')
    fill_in 'input_name', with: "Andrew"

    fill_in 'input_day', with: "#{@day + 6}"
    fill_in 'input_month', with: month_hash[@month]
    click_button "Go!"
    expect(page).to have_content "Your birthday will be in 6 days, Andrew."
  end

  scenario "Outputs the days until the user birthday" do
    visit('/')
    fill_in 'input_name', with: "David"

    fill_in 'input_day', with: "#{@day + 12}"
    fill_in 'input_month', with: month_hash[@month]
    click_button "Go!"
    expect(page).to have_content "Your birthday will be in 12 days, David."
  end
end
