module Luhn
  def self.is_valid?(number)
    # transform bignum into array of integer digits
    array = number.to_s.split('').map(&:to_i)
    # reverse array
    array.reverse!
    # double every second digit
    array.map!.with_index { |n, i| i.odd? ? n * 2 : n }
    # if doubled digit value is >= 10, subtract value by 9
    array.map!.with_index { |n, i| (i.odd? && n >= 10) ? n - 9 : n }
    # sum all digits
    sum = array.reduce(0) { |sum, n| sum + n }
    # if the sum is divisible by 10, the number is valid
    return (sum % 10 == 0) ? true : false
  end
end
