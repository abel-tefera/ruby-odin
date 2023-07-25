def stock_picker(prices)
    max = 0;
    buy = 0;
    sell = 0;
    0.upto(prices.length - 2) do |i|
        (i + 1).upto(prices.length - 1) do |j|
            if prices[j] - prices[i] > max
                max = prices[j] - prices[i]
                buy = i
                sell = j
            end
        end
    end
    puts "[#{buy},#{sell}]"
end

stock_picker([17,3,6,9,15,8,6,1,10])
# [1,4]