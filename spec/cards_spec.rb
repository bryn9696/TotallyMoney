require './lib/cards'

describe Cards do
  subject(:card) { described_class.new }

  it 'returns array of anywhere details' do
    expect(card.anywherecard).to eq(["Anywhere Card:", "Apr: 33.9% - \n      Balance Transfer Offer Duration: 0 months - \n      Purchase Offer Duration: 0 Months - \n      Credit Available: £300", 300])
  end
  
  it 'returns array of liquidcard details' do
    expect(card.liquidcard).to eq(["Liquid Card:", "Apr: 33.9% - \n      Balance Transfer Offer Duration: 12 months - \n      Purchase Offer Duration: 6 Months - \n      Credit Available: £3000", 3000])
  end

  it 'returns array of studentlife details' do
    expect(card.studentlife).to eq(["Student Life:", "Apr: 18.9% - \n      Balance Transfer Offer Duration: 0 months - \n      Purchase Offer Duration: 6 Months - \n      Credit Available: £1200", 1200])
  end
end