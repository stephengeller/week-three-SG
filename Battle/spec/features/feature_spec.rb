require 'spec_helper'
require_relative './../../app'

feature Battle do

it 'provides form for player 1 name' do
    visit '/'
    expect(page).to have_field('Player One')
  end

  it 'provides form for player 2 name' do
    visit '/'
    expect(page).to have_field('Player Two')
  end

  it 'allows player 1 to enter names' do
    visit '/'
    fill_in('Player One', with: 'Stephen')
    expect(page).to have_content('Stephen')
  end




end
