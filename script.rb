def caesar_cipher(string, shift)
    alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 
        'n', 'o', 'p', 'q', 'r', 's', 't', 'u','v', 'w', 'x', 'y', 'z']
    string = string.to_s
    split_string = string.split("")
    ciphered_string = ""
    split_string.map { |character|
        if character.downcase == character
            # First checks if character is a letter
            if alphabet.include? character
                character_index = alphabet.index(character)
                if (character_index + shift) > 25 
                    # wraps back to "a" if necessary
                    character_index = (character_index + shift) - 26
                    ciphered_string += alphabet[character_index]
                else
                    ciphered_string += alphabet[character_index + shift]
                end
            else
                ciphered_string += character
            end
        else # In the case of uppercase letters
            upcase_alphabet = alphabet.map {|character| character.upcase}
            character_index = upcase_alphabet.index(character)
            if (character_index + shift) > 25
                character_index = (character_index + shift) - 26
                ciphered_string += upcase_alphabet[character_index]
            else
                ciphered_string += upcase_alphabet[character_index + shift]
            end
        end
    }
    ciphered_string
end