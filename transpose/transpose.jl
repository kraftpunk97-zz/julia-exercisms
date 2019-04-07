function transpose_strings(input::AbstractArray)
    input == [] && return []
    num_strings = length(input)
    total_iterations = maximum([length(str) for str in input])
    result = ["" for i=1:total_iterations]

    for i=1:total_iterations
        for j=1:num_strings
            result[i] *= i > length(input[j]) ? " " : input[j][i]
        end
    end
    result[end] = rstrip(result[end])
    return result
end
