def sign_in_and_play
  visit '/'
  fill_in('PlayerOne', with: 'Stephen')
  fill_in('PlayerTwo', with: 'Guy')
  click_button('Submit')
end
