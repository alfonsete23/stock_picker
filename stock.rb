# Iterate through the array n! times checking every pair. TODO: Look for a more efficient way to make it
def stock_picker(arr)
    buy_sell = nil
    profit = 0
    for i in 0..arr.length - 1 do
        for j in i + 1..arr.length - 1 do
            if (current = arr[j] - arr[i]) > profit then
                buy_sell = [i, j]
                profit = current
            end
        end
    end
    return buy_sell
end

