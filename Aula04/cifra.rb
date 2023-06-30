def caesar_cipher(cifra, number)
  vetor_alfabeto = ('a'..'z').to_a
  vetor_cifra = cifra.chars

  vetor_cifra.each_with_index do |c, i|
    vetor_alfabeto.each_with_index do |a, j|
      if (c == a)
        novo_indice = (j + number) % vetor_alfabeto.length
        vetor_cifra[i] = vetor_alfabeto[novo_indice]
        break
      elsif(c == a.upcase)
          novo_indice = (j + number) % vetor_alfabeto.length
          vetor_cifra[i] = vetor_alfabeto[novo_indice].upcase
      end

    end
  end

  puts vetor_cifra.join('')
end
  
caesar_cipher("What a string!", 5)
  