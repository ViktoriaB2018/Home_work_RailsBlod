# frozen_string_literal: true

def sign_up
  visit new_user_registration_path

  fill_in :user_email, with: 'user@example.com'
  fill_in :user_username, with: 'mike'
  fill_in :user_password, with: 'secure123T65!'
  fill_in :user_password_confirmation, with: 'secure123T65!'

  click_button 'Sign up'
end
