def sign_up
  visit '/'
  click_link 'Sign up'
  fill_in 'user[email]', with: 'mrhazzy@gmail.com'
  fill_in 'user[username]', with: 'mrhazzy'
  fill_in 'user[password]', with: 'abc123'
  fill_in 'user[password_confirmation]', with: 'abc123'
  click_button 'Sign up'
end

def sign_out
  click_link 'Sign_out'
end
