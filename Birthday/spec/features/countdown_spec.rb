feature 'birthday countdown' do
  scenario 'to calculate how long next birthday will be' do
  visit('/')
  fill_in :name, with: 'John'
  fill_in :day, with: '25'
  select'January', from: 'month'
  click_button 'GO!'
    expect(page).to have_content "Your birthday will be in 1 day !"
  end
end
