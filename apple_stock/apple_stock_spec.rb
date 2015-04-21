require 'rspec'
require './apple_stock.rb'

RSpec.describe AppleStock do
  it 'finds largest buy/sell margin' do
     as = AppleStock.new
     expect(as.best_profit([10,20,30,40])).to eq 30
  end

  it 'finds largest buy/sell margin even if it is a negative' do
     as = AppleStock.new
     expect(as.best_profit([100,40,30,10])).to eq -10
  end
end
