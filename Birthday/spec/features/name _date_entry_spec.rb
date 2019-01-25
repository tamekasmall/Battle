feature 'name date entry' do
  scenario 'To enter and submit name and birthday' do
  visit('/')
  fill_in :name, with: 'John'
  fill_in :day, with: '2'
  select'October', from: 'month'
  click_button 'GO!'
    expect(page).to have_content "Happy Birthday John !"
  end
end
