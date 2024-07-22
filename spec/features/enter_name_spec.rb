feature 'Enter Player Names' do
  scenario 'players can enter their names and submit them' do
    visit('/')
    fill_in :player_1_name, with: 'Finn'
    fill_in :player_2_name, with: 'Muhammad'
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_content 'Finn vs. Muhammad'
  end
end

