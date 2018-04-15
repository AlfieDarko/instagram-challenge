require 'rails_helper'
require_relative 'web_helper.rb'

RSpec.feature 'Users can leave comments', type: :feature do
  scenario 'user can leave comments on images they like' do
    sign_up
    click_link 'leave comment'
    fill_in 'comment[body]', with: 'yo comments'
    click_button 'submit'
    expect(page).to have_content('yo comments')
  end
end
