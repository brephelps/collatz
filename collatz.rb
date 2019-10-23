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
@sequence = []

def collatz(n)
  if n == 1
    n
  elsif n % 2 == 0
    collatz(n/2)
  else
    collatz(3*n + 1)
  end
  @sequence << n
  @seq_lengths[n.to_s.to_sym] = @sequence.length
  # puts @seq_lengths

  collatz_length(@seq_lengths)
end

def collatz_length(seq)
  longest_value = 0
  longest_length = 0

  @seq_lengths.each do |k, v|
    if v > longest_length
      longest_length = v
      longest_value = k
    end
  end

  puts longest_value
  puts longest_length
end

collatz(8)


