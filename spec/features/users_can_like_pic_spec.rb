require 'rails_helper'
require_relative 'web_helper.rb'

RSpec.feature 'Users can like pictures', type: :feature do
  scenario 'user can leave comments on images they like' do
    sign_up
    add_post
    click_link 'Like'
    expect(page).to have_content('Likes: 1')
  end
end
