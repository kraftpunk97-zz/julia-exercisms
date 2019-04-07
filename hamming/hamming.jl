function distance(s1::AbstractString, s2::AbstractString)
    if length(s1) != length(s2)
        throw(ArgumentError("Unequal length of arguments."))
    end
    return sum([a!=b for (a, b) in zip(s1, s2)])
end
