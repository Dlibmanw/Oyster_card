require 'journey'
describe Journey do
  let(:entry_station) { double :entry_station }
  let(:exit_station) { double :exit_station }
  subject { described_class.new(entry_station: entry_station, exit_station: exit_station)}

  it 'shows a entry station' do
    expect(subject.entry_station).to eq entry_station
  end

  it 'shows an exit station' do
    expect(subject.exit_station).to eq exit_station
  end

  it 'Give a penalty if entry_station is nil' do
  journey = described_class.new(entry_station: nil, exit_station: exit_station)
    expect(journey).to be_fined
  end

  it 'It doesnt give penalty if journey is completed' do
    expect(subject).to_not be_fined
  end
end
