

feature 'Enter Name' do
  scenario 'Players can enter and submit their names in a form and see those name on screen' do
    visit('/')
    fill_in :name1, with: "John"
    fill_in :name2, with: "Bob"
    click_button 'Submit!'
      expect(page).to have_content "John Vs Bob"
  end
end
