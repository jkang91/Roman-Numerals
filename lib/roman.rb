class Roman
  ONES_ARRAY = %w[I II III IV V VI VII VIII IX].freeze
  TENS_ARRAY = %w[X XX XXX XL L LX LXX LXXX XC].freeze
  HUNDREDS_ARRAY = %w[C CC CCC CD D DC DCC DCCC CM].freeze
  THOUSANDS_ARRAY = %w[M MM MMM].freeze
  class << self
    # if number > 1000,
    #
    # print sting.1000.
    # spit out the remainder
    # ...
    # ...
    #
    # ...

    def print_string(decimal_number, highest_place) # decimal_number is 1000
      thousands_decimal = decimal_number / highest_place
      thousands_roman = THOUSANDS_ARRAY[thousands_decimal - 1].to_s
      return thousands_roman
    end

    def to_int(decimal_number) # to_int(100)
      # Handling ones
      if decimal_number < 10 # if 100 < 10 => false
        ONES_ARRAY[decimal_number - 1]
        # Handling tens
      elsif decimal_number >= 10 && decimal_number < 100
        tens_place = decimal_number / 10
        ones_place = decimal_number % 10

        tens_roman_numeral = TENS_ARRAY[tens_place - 1].to_s
        ones_roman_numeral = ONES_ARRAY[ones_place - 1].to_s
        if ones_place == 0
          return tens_roman_numeral
        else
          return tens_roman_numeral + ones_roman_numeral
        end
        # Handling hundreds
      else #decimal_number >= 100
        tens_place = decimal_number / 10
        ones_place = decimal_number % 10
        hundreds_place = decimal_number / 100
        hundreds_remainder = decimal_number % 100


        z = HUNDREDS_ARRAY[hundreds_place - 1].to_s # if hundreds_place = 3, then HUNDREDS_ARRAY[2] = CCC
        tens_roman_numeral = TENS_ARRAY[tens_place - 1].to_s # if tens_place = 1, then TENS_ARRAY[0] = X
        ones_roman_numeral = ONES_ARRAY[ones_place - 1].to_s # if ones_place = 0, then ONES_ARRAY[-1] = IX

        if hundreds_remainder == 0
          return z
        end
        # TENS_ARRAY[10 - 1] => TENS_ARRAY[9] => nil
      end
    end
  end
end

=begin
####  September
THINGS TO DO
Re-name variables decimal_number,ones_place,hundreds_place,hundreds_remainder,tens_roman_numeral,ones_roman_numeral,z to something more meaningful/descriptive
Potentially refactor the 1s, 10s, and 100s logic so that it is consolidated

3 parts to this program
1. Array (which can be consolidated further)
2. Logic for handling roman numerals and then passing it to a method maybe?
- tens_method
- hundred_method
3. Logic for printing out the correct array units
4. Consider making this more OO instead or procedural

####  Wed. Oct 2nd
# IDEA
1. Have one method that would take in the `decimal_number` to determine the `highest_place`
  Roman.get_highest_place(decimal_number)

2. Have another method to pass `decimal_number` and `highest_place` onto the print_string
  Roman.print_string(decimal_number, highest_place)

=end
