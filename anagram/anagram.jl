function get_character_bag(subject::AbstractString) :: Dict{Char, Int64}
    result = Dict{Char, Int64}()
    for char in subject
        result[char] = char in keys(result) ? result[char] + 1 : 1
    end
    return result
end

function detect_anagrams(subject::AbstractString, candidates::AbstractArray)
    subject = lowercase(subject)
    subject_char_bag = get_character_bag(subject)
    result_set = []
    for _string in candidates
        lowercase_string = lowercase(_string)
        if lowercase_string == subject
            continue
        end

        bag = get_character_bag(lowercase_string)
        if bag == subject_char_bag && !(_string in result_set)
            push!(result_set, _string)
        end

    end
    return result_set
end
