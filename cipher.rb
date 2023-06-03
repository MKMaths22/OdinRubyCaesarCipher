# class Cipher contains the caesar_cipher method
class Cipher
  def caesar_cipher(string = 'Test-string! With punctuation.',shift = 5)
    reference_string = '';
    for i in ('a'..'z') do
        reference_string += i;
    end
    reference_string += reference_string;
    reference_string += reference_string.upcase;
    #reference_string is now two copies of lower case a to z followed by two copies of upper case A to Z
    alphabet_regex = /[a-zA-Z]/;
    output_string = '';
    #program now iterates through string to construct output_string one character at a time
    for i in (0...string.length) do
       if alphabet_regex.match?(string[i])
         j = 0;
            until reference_string[j] == string[i] do
            j += 1;
            end
            #reference_string[j] has found the string[i] alphabet character. Now move it on by shift and 
            #add it to the output string
            output_string += reference_string[j + shift];
        else
        #character is not alphabet so gets added to output string unchanged
        output_string += string[i];
        end
    end

    return output_string;
  end
end

