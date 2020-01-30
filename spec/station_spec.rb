require 'station'

describe Station do
  subject { described_class.new(zone: 2, name: "Aldgate")}

  it 'shows a name' do
    expect(subject.name).to eq "Aldgate"
  end

  it 'has a zone' do
    expect(subject.zone).to eq 2
  end
end
