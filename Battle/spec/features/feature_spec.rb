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
      sign_in_and_play
      expect(page).to have_content('Stephen')
      expect(page).to have_content('Guy')
    end
  end
  context '/play' do
    before do
      visit '/play'
    end

    it 'shows player hit points' do
      expect(page).to have_content(100)
    end

    it 'shows confirmation when attacking' do
      sign_in_and_play
      click_button('attackP2')
      expect(page).to have_content('You have attacked Guy')
    end
    it 'reduces player hp by 10' do
      sign_in_and_play
      click_button('attackP2')
      expect(page).to have_content(90)
    end

  end
end
