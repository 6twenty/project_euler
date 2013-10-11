# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# 
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
# 
# 
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) 
# contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

N = (1..1000).to_a

WORDS_1 = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
}

WORDS_2 = {
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety",
}

def translate_number a
  sentence = []
  # for numbers under 20, just grab the word
  if a < 20
    sentence << word = WORDS_1[a]
  # for higher numbers, split the number into components and get the word for each
  else
    if a >= 10 && a < 100
      array = [((a/10)*10), a.to_s.split(//).last.to_i]
    elsif a >= 100 && a < 1000
      if a.to_s.split(//)[1..-1].to_s.to_i < 20
        array = [((a/100)*100), a.to_s.split(//)[1..-1].to_s.to_i]
      else
        array = [((a/100)*100), (a.to_s.split(//)[1].to_i*10), a.to_s.split(//).last.to_i]
      end
    else
      array = [((a/1000)*1000), (a.to_s.split(//)[1].to_i*100), (a.to_s.split(//)[2].to_i*10), a.to_s.split(//).last.to_i]
    end
    array.each do |n|
      if n < 20
        word = WORDS_1[n]
      elsif n >= 20 && n < 100
        word = WORDS_2[n]
      elsif n >= 100 && n < 1000
        word = "#{WORDS_1[n.to_s.split(//).first.to_i]} hundred"
      else
        word = "#{WORDS_1[n.to_s.split(//).first.to_i]} thousand"
      end
      sentence << word
    end
  end
  
  sentence = sentence.compact.join(' ').split(' ')
  
  if sentence[1] == 'hundred' && sentence.length > 2
    return sentence.insert(2, 'and').join(' ')
  else
    return sentence.join(' ')
  end
end

@result = 0

def count_letters
  array = []
  N.each do |n|
    # puts translate_number(n)
    array << translate_number(n)
  end
  @result = array.join(' ').gsub(' ', '').split(//).length
end

count_letters
puts @result