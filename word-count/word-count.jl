function wordcount(sentence::AbstractString)
    word_dict = Dict{String, Int}()
    sentence = lowercase(sentence)
    bag_of_words = split(sentence, [',', ' ', '\r', '\t', '\n', '\f'])
    trick_words = String[]

    i = 1
    while i < length(bag_of_words)
        if occursin(r"\w'\w", bag_of_words[i])
            push!(trick_words, bag_of_words[i])
            deleteat!(bag_of_words, i)
            continue
        end
        i += 1
    end

    bag_of_words = [replace(word, r"\W"=>s"") for word in bag_of_words]
    append!(bag_of_words, trick_words)

    for word in bag_of_words
        word_dict[word] = word in keys(word_dict) ? word_dict[word]+1 : 1;
    end

    delete!(word_dict, "")

    return word_dict

end
