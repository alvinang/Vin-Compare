module CheckVin::VinValidator
  
  extend self

  TO_REPLACE = { A: 1, B: 2, C: 3, D: 4, E: 5, F: 6, G: 7, H: 8,
                  J: 1, K: 2, L: 3, M: 4, N: 5, O: 6, P: 7, R: 9,
                  S: 2, T: 3, U: 4, V: 5, W: 6, X: 7, Y: 8, Z: 9
  }

  MULTIPLIER = [8, 7, 6, 5, 4, 3, 2, 10, 0, 9, 8, 7, 6, 5, 4, 3, 2]

  def check_num?(vins) #check_vin should be a string

    vins = vins.to_s.upcase
    raise ArgumentError.new, "#{vins} cannot contain 'I' or 'Q'" if (vins.include? "I" || "Q")

    vins_array = vins.chars.to_a
    raise ArgumentError.new, "#{vins} does not contain 17 characters" if (vins.length != 17)

    vin_to_numbers = []

    vins_array.each do |vin|
      vin_to_numbers << (TO_REPLACE[vin.to_sym].nil? ? vin.to_i : TO_REPLACE[vin.to_sym])
    end

    vin_sum = 0
    vin_to_numbers.each_with_index { |v, index| vin_sum += (vin_to_numbers[index] * MULTIPLIER[index]) }

    check_digit = vin_sum % 11
    return true if (vins_array[8].to_i == check_digit) || (check_digit == 10 && vins_array[8].to_i == "X")
    
    false
  end
end





