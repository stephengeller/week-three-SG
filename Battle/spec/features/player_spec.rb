require 'player.rb'

describe Player do
subject {described_class.new("Stephen")}
  it 'returns player name' do
    expect(subject.name).to eq "Stephen"
  end
end
