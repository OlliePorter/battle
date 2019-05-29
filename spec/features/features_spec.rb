feature 'Allow players to fill in names in form' do
  scenario 'Can submit form with usernames' do
    visit('/')
    fill_in 'player_1', with: 'Kelvin'
    fill_in 'player_2', with: 'Ollie'
    click_button 'Submit'
    expect(page).to have_content 'Kelvin vs Ollie'
  end
end
