function ispangram(input::AbstractString)
    check_set = Set(char for char in "abcdefghijklmnopqrstuvwxyz")

    nput = strip(input)
    input = lowercase(input)
    input = replace(input, r"[^a-z]"=>"")

    result_set = Set(char for char in input)

    return check_set == result_set
end
