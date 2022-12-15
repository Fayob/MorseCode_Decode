def decode_char(input)
  morse_code = {
    '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e', '..-.' => 'f',
    '--.' => 'g', '....' => 'h', '..' => 'i', '.---' => 'j', '-.-' => 'k', '.-..' => 'l',
    '--' => 'm', '-.' => 'n', '---' => 'o', '.--.' => 'p', '--.-' => 'q', '.-.' => 'r',
    '...' => 's', '-' => 't', '..-' => 'u', '...-' => 'v', '.--' => 'w', '-..-' => 'x',
    '-.--' => 'y', '--..' => 'z'
  }
  morse_code.each do |key, value|
    print value.upcase if key == input
  end
end

def decode_word(word)
  word.split.each do |each_letter|
    decode_char(each_letter)
  end
end

def decode_sentence(sentence)
  sentence.split('  ').each do |word|
    decode_word(word)
    print ' '
  end
end

# decode_char('--')
# decode_word('-- -.--')
# decode_sentence('-- -.--   -. .- -- .')
decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
