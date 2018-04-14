
require 'rails_helper'
require_relative 'web_helper.rb'

RSpec.feature 'Users can register', type: :feature do
  scenario 'user can register into winstagram' do
    sign_up
    expect(page).to have_content('Hello mrhazzy@gmail.com')
  end
end
