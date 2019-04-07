function encode(s)
    encoded_string = ""
    pointer = 1
    i = 1
    while i <= length(s)
        character = s[i]
        counter = 1
        j = i+1
        while j <= length(s) && s[j] == character
            counter += 1
            j += 1
        end
        encoded_string *= counter > 1 ? string(counter, character) : character
        i = j

    end
    return encoded_string
end



function decode(s)
    decoded_string = ""
    repetition_regex = r"(\d+)(\D)"
    non_repeat_regex = r"\d\D(\D+)"
    when_in_beg = r"^(\D+)"
    regex = r"^(\D+)|(\d+)(\D)|\d\D(\D+)"

end
