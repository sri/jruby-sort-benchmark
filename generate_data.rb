#! /usr/bin/env ruby

# Globals so that file that "load" this file
# can access them easily.

$MAX = 5_000_000

data = {
  sorted_ints:   (1..$MAX).to_a,
  random_ints:   (1..$MAX).to_a.shuffle,
  random_floats: (1..$MAX).to_a.map { |x| x.to_f }.shuffle,
  small_arrays:  (1..($MAX / 10)).to_a.map { |x| (1..rand(16)).to_a.shuffle  }
}

open('data', 'w') do |f|
  data.each do |name, data|
    global_var = "$#{name}"
    f.write "#{global_var} = #{data.inspect}\n\n##\n"
  end
end
