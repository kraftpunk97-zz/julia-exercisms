transform(input::Dict{Int64, Array{Char, 1}}) = Dict(lowercase(letter) => score for (score, letter_list) in pairs(input) for letter in letter_list)
