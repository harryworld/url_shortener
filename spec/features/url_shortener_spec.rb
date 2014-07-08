require 'rails_helper'

feature 'Visit URL page' do
  scenario 'see the field' do
    visit '/'
    expect(find('#link')).to have_button('Submit')
  end

  scenario 'shortens URL' do
    visit '/'
    within('#link') do
      fill_in 'url', :with => 'http://www.google.com/'
      click_on 'Submit'
    end
    expect(page).to have_content('Converted')
    expect(page).to have_content('http://www.google.com/')
  end

  scenario 'see the title' do
    visit '/url'
    within("#link") do
      fill_in 'url', :with => 'http://www.google.com/'
      click_on 'Submit'
    end
    expect(current_path).to eq('/url')
  end
end
