class Roman
  ONES_ARRAY = %w[0 I II III IV V VI VII VIII IX].freeze
  TENS_ARRAY = %w[0 X XX XXX XL L LX LXX LXXX XC].freeze
  HUNDREDS_ARRAY = %w[0 C CC CCC CD D DC DCC DCCC CM].freeze
  THOUSANDS_ARRAY = %w[0 M MM MMM].freeze

  class << self
    def to_int(i) # to_int(10)
      case i
        ones_counter = i
        tens_counter = (i / 10)
        hundreds_counter = (i / 100)
        thousands_counter = (i / 1000)

        when 1..9 # i is between 1 to 9
          ONES_ARRAY[ones_counter]

        when 10..99 # i is between 10 and 99
          TENS_ARRAY[tens_counter] + ONES_ARRAY[ones_counter]

        when 100..999 # i is between 100 and 999
          HUNDREDS_ARRAY[hundreds_counter] + TENS_ARRAY[tens_counter] + ONES_ARRAY[ones_counter]

        when 1000..3000 # i is between 1000 and 3000
          THOUSANDS_ARRAY[thousands_counter] + HUNDREDS_ARRAY[hundreds_counter] + TENS_ARRAY[tens_counter] + ONES_ARRAY[ones_counter]

        else # when i is smaller than 1 or greater than 3000
          return "Error"
      end
    end
  end
end
