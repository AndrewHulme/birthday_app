feature "Hello there! message" do
  scenario 'Displays Hello there! to user' do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end
end
