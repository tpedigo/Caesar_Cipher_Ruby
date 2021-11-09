def caesar_cipher(string, shift)
    alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 
        'n', 'o', 'p', 'q', 'r', 's', 't', 'u','v', 'w', 'x', 'y', 'z']
    split_string = string.split("")
    ciphered_string = ""
    split_string.map { |letter|
        if letter.downcase == letter
            letter_index = alphabet.index(letter)
            if (letter_index + shift) > 25
                letter_index = (letter_index + shift) - 26
                ciphered_string += alphabet[letter_index]
            else
                ciphered_string += alphabet[letter_index + shift]
            end
        else
            upcase_alphabet = alphabet.map {|letter| letter.upcase}
            letter_index = upcase_alphabet.index(letter)
            if (letter_index + shift) > 25
                letter_index = (letter_index + shift) - 26
                ciphered_string += upcase_alphabet[letter_index]
            else
                ciphered_string += upcase_alphabet[letter_index + shift]
            end
        end
    }
    ciphered_string
end