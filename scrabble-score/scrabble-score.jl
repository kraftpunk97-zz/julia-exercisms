function score(str::AbstractString)
    result = 0
    str = upp
    for character in str
        if character in "AEIOULNRST"
            result += 1
        elseif character in "DG"
            result += 2
        elseif character in "BCMP"
            result += 3
        elseif character in "FHVWY"
            result += 4
        elseif character == 'K'
            result += 5
        elseif character in "JX"
            result += 8
        else
            result += 10
        end
    end
    return result
end
