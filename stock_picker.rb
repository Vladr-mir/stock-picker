def stock_picker(stock)
  profit = 0
  max_profit = 0
  pointers = Array.new(2) {0}
  min_price = stock[0]
  pointer_l = 0
  pointer_r = 1
  
  while pointer_r < stock.length
    if stock[pointer_l] < stock[pointer_r]
      profit = stock[pointer_r] - stock[pointer_l]
    else
      pointer_l = pointer_r
    end

    if profit > max_profit
      pointers[1] = pointer_r
      max_profit = profit
    end

    if min_price > stock[pointer_l] && profit == max_profit
      pointers[0] = pointer_l
      min_price = stock[pointer_l]
    end

    pointer_r += 1
  end
  return pointers
end

p stock_picker([17,3,6,9,15,8,6,1,10])
