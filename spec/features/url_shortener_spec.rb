require 'rails_helper'

feature 'Visit URL page' do
  scenario 'see the field' do
    visit '/'
    expect(find('#link')).to have_button('Submit')
  end

  scenario 'see the title' do
    visit '/url'
    within("#link") do
      fill_in 'url', :with => 'http://www.google.com/'
      click_on 'Submit'
    end
    expect(current_path).to eq('/')
  end
end
