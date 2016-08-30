my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda { |param| param.is_a? Symbol }

symbols = my_array.select(&symbol_filter)
