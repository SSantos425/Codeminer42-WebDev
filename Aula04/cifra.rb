def caesar_cipher(cipher, number)
  vector_alphabet = ('a'..'z').to_a
  vector_cipher = cipher.chars

  vector_cipher.each_with_index do |character, vector_position|
    vector_alphabet.each_with_index do |alphabet, alphabet_position|

      if character == alphabet
        novo_indice = (alphabet_position + number) % vector_alphabet.length
        vector_cipher[vector_position] = vector_alphabet[novo_indice]
      elsif character == alphabet.upcase
        novo_indice = (alphabet_position + number) % vector_alphabet.length
        vector_cipher[vector_position] = vector_alphabet[novo_indice].upcase
      end

    end
  end

  puts vector_cipher.join('')
end
  
caesar_cipher("What a string!", 5)
  