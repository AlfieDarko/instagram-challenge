
require 'rails_helper'
require_relative 'web_helper.rb'

RSpec.feature 'Users can see who posted a picture', type: :feature do
  scenario 'user can check which use posted what image' do
    sign_up
    # expect div.container to have content
  end
end
