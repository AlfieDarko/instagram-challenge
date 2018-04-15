
require 'rails_helper'
require_relative 'web_helper.rb'

RSpec.feature 'Users can login', type: :feature do
  scenario 'user can login into winstagram' do
    sign_up
    sign_out
    fill_in 'user[email]', with: 'mrhazzy@gmail.com'
    fill_in 'user[password]', with: 'abc123'
    click_button 'Log in'
    expect(page).to have_content('Hello mrhazzy@gmail.com')
  end
end
