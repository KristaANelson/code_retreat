class AppleStock
  def best_profit(array)
    min_buy = array.shift
    max_profit = array[0] - min_buy
    array.each do |current_price|
      potential_profit = current_price - min_buy
      max_profit = potential_profit if potential_profit > max_profit
      min_buy = current_price if current_price < min_buy
    end
    max_profit
  end
end
