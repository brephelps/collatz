# Collatz takes input n and runs the sequence until it reaches
# an output of 1

# if n = 1
# return 1

# first number in sequence is always n

# if n is even
# n/2

# if n is odd
# 3n + 1

# store length of each original n value in order to find n with
# longest length

@seq_lengths = {}

def collatz_length(max)
  longest_value = 0
  longest_length = 0
  min = 1

  (min..max).each do |n|
    count = 1
    i = n

    until i <= 1
      if @seq_lengths[i]
        count += @seq_lengths[i]
        break
      else
        i = i.even? ? i/2 : 3*i + 1
        count +=1
      end
    end

    @seq_lengths[n] = count

    if count > longest_length
      longest_length = count
      longest_value = n
    end
  end
  puts @seq_lengths
  puts longest_value
end

collatz_length(10)


