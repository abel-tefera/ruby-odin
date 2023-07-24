class String
    def is_upper?
        !!self.match(/\p{Upper}/)
    end
  
    def is_lower?
        !!self.match(/\p{Lower}/)
    end
end

def caesar_cipher (message, hash)
    array = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
    decoded = ""
    message.split("").each do |letter|
        index = array.find_index(letter.downcase)
        if index != nil
            if index + hash < 26 
                new_letter = array [index + hash]       
            else
                new_letter = array [(array.length - (index + hash)).abs]       
            end

            if letter.is_lower?
                decoded << new_letter
            elsif letter.is_upper?
                decoded << new_letter.upcase
            end
        else
            decoded << letter
        end
    end
    return decoded
end

caesar_cipher("What a string!", 5)