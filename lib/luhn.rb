module Luhn
  def self.is_valid?(number)
    array = number.to_s.split('').map(&:to_i)

    array.map!.with_index { |n, i| i.even? ? n * 2 : n }
    p array
  end
end

Luhn.is_valid?(4194560385008504)
