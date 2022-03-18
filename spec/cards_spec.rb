require './lib/cards'

describe Cards do
  subject(:card) { described_class.new }

  it 'returns array of anywhere details' do
    expect(card.anywhere).to eq(["Anywhere Card: - Apr: 33.9% - Balance Transfer Offer Duration: 0 months - Purchase Offer Duration: 0 Months - Credit Available: £300", 300])
  end
  
  it 'returns array of liquidcard details' do
    expect(card.liquidcard(16000)).to eq(["Liquid Card - Apr: 33.9% - Balance Transfer Offer Duration: 12 months - Purchase Offer Duration: 6 Months - Credit Available: £3000", 3000])
  end

  it 'returns array of studentlife details' do
    expect(card.studentlife('student')).to eq(["Student Life - Apr: 18.9% - Balance Transfer Offer Duration: 0 months - Purchase Offer Duration: 6 Months - Credit Available: £1200", 1200])
  end
end