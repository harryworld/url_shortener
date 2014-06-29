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

  scenario 'show privacy page' do
    visit '/privacy'
    expect(page).to have_selector('h1')
    expect(page).to have_content 'Privacy'
  end

  scenario 'show terms page' do
    visit '/terms'
    expect(page).to have_selector('h1')
    expect(page).to have_content 'Terms'
  end
end