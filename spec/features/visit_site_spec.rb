require 'rails_helper'

feature 'visit the site' do
  scenario 'see the Hi, there!' do
    visit '/'
    expect(page).to have_content 'Hi, there!'
  end

  scenario 'show HTML page' do
    visit '/'
    expect(page).to have_selector('html')
  end
end