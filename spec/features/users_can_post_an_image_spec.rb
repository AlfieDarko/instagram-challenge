
require 'rails_helper'
require_relative 'web_helper.rb'

RSpec.feature 'Users can post an image', type: :feature do
  scenario 'user can post an image onto the winstafeed' do
    sign_up
    click_link 'Add to feed'
    attach_file('post[image]', File.absolute_path('./fileset/upload_pic.jpg'))
    fill_in 'post[caption]', with: 'sports cars'
    click_button 'Create Post'
    expect(page).to have_css("img[src*='upload_pic.jpg']")

    # expect(page).to have_xpath("//img[contains(@src,'upload-pic.jpg')]")

  end
end
