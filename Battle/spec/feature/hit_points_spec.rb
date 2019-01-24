feature 'Display hit points' do
  scenario 'Player 2 can see their hit points' do
  visit('/')
  fill_in :name1, with: "John"
  fill_in :name2, with: "Bob"
  click_button 'Submit!'
    expect(page).to have_content "Hit Points"
  end
end 
