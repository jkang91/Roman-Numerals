class Roman
  ONES_ARRAY = %w[I II III IV V VI VII VIII IX].freeze
  TENS_ARRAY = %w[X XX XXX XL L LX LXX LXXX XC].freeze
  HUNDREDS_ARRAY = %w[C CC CCC CD D DC DCC DCCC CM].freeze
  THOUSANDS_ARRAY = %w[M MM MMM].freeze
  class << self
    def to_int(i) # to_int(100)
      if i < 10 # if 100 < 10 => false
        ONES_ARRAY[i - 1]
      elsif i >= 10 && i < 100 # i >= 10 if 100 >= 10 => true
        j = i / 10 # if i == 10 => j = 1
        k = i % 10 # if i == 10 => k = 0?

        x = TENS_ARRAY[j - 1].to_s # if j = 1, then TENS_ARRAY[0] = X
        y = ONES_ARRAY[k - 1].to_s # if k = 0, then ONES_ARRAY[-1] = IX
        if k == 0
          return x
        else
          return x + y
        end
      else #i >= 100
        j = i / 10 # if i == 10 => j = 1
        k = i % 10 # if i == 10 => k = 0?
        l = i / 100 # if i = 299 => l = 3
        m = i % 100 # if i = 299 => 99

        z = HUNDREDS_ARRAY[l - 1].to_s # if l = 3, then HUNDREDS_ARRAY[2] = CCC
        x = TENS_ARRAY[j - 1].to_s # if j = 1, then TENS_ARRAY[0] = X
        y = ONES_ARRAY[k - 1].to_s # if k = 0, then ONES_ARRAY[-1] = IX

        if m == 0
          return z
        end
        # TENS_ARRAY[10 - 1] => TENS_ARRAY[9] => nil
      end
    end
  end
end


=begin
THINGS TO DO
Re-name variables i,k,l,m,x,y,z to something more meaningful/descriptive
Potentially refactor the 1s, 10s, and 100s logic so that it is consolidated

3 parts to this program
1. Array (which can be consolidated further)
2. Logic for handling roman numerals and then passing it to a method maybe?
- tens_method
- hundred_method
3. Logic for printing out the correct array units

=end
