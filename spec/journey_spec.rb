require 'journey'

describe Journey do
  let(:station) { double :station }
  describe '#start' do
    it 'stores the start of the journey' do
      expect{ subject.start(station) }.to change{ subject.entry_station }.from(nil).to(station)
    end
  end
  it 'should tell us if we are in journey' do

  end


end

# describe Journey do
#   let(:entry_station) { double :entry_station }
#   let(:exit_station) { double :exit_station }
#
#   it 'shows a entry station' do
#     expect(subject.entry_station).to eq entry_station
#   end
#
#   it 'shows an exit station' do
#     expect(subject.exit_station).to eq exit_station
#   end
#
#

  # it 'needs a penalty charge deducted if entry station is nil' do
  #   #journey = described_class.new(entry_station: entry_station, exit_station: exit_station)
  #   jorney = Journey.new
  #   jorney.journey_history({nil, exit_station})
  #   journey.touch_in(entry_station)
  #   journey.touch_out(exit_station)
  #   expect(journey).to be_fined
  # end

  # it 'gives a penalty if entry_station is nil' do
  # journey = described_class.new(entry_station: nil, exit_station: exit_station)
  #   expect(journey).to be_fined
  # end
  #
  # it 'doesnt give penalty if journey is completed' do
  #   expect(subject).to_not be_fined
  # end
  #
  # it 'tells us if the journey is not completed' do
  #   expect(subject).to
  # end
