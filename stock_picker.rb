def stock_picker(stocks)
  low_price = stocks[0]
  low_index = 0
  profit = 0
  return_array = []

  stocks.each_with_index  do |price, index|
    if price < low_price
      low_price = price
      low_index = index
    end
    
    if (price - low_price) > profit
      profit = price - low_price
      return_array = [low_index, index]
    end
  end
  return_array
end