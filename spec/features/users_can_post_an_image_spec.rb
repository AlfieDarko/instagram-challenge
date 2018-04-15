
require 'rails_helper'
require_relative 'web_helper.rb'

RSpec.feature 'Users can post an image', type: :feature do
  scenario 'user can post an image onto the winstafeed' do
    sign_up
    click_link 'Add to feed'
    attach_file('ok', File.absolute_path('./fileset/publisher/upload_pic.jpg'))
    expect(page).to have_css("img[src*='upload-pic.jpg']")
  end
end
