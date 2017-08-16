require 'spec_helper'
require_relative './../../app'

feature Battle do
  it 'gives default message at home' do
    visit '/'
    expect(page).to have_content 'Hello Battle!'
  end
end