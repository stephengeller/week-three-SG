require 'spec_helper'
require_relative './../../app'

feature Battle do


  context '/' do
    before do
      visit '/'
    end

    it 'provides form for player 1 name' do
      expect(page).to have_field('PlayerOne')
    end

    it 'provides form for player 2 name' do
      expect(page).to have_field('PlayerTwo')
    end

    it 'can submit P1 name' do
      find_button('Submit').click
    end

    it 'shows players after submit' do
      fill_in('PlayerOne', with: 'Stephen')
      fill_in('PlayerTwo', with: 'Guy')
      click_button('Submit')
      expect(page).to have_content('Stephen')
      expect(page).to have_content('Guy')
    end
  end
end
