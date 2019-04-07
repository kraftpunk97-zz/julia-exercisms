function isarmstrong(n::Int64)
    result = 0
    n_copy = n
    num_digits = length(string(n))
    while n_copy != 0
        result += (n_copy%10) ^ num_digits
        n_copy = div(n_copy, 10)
    end
    return result == n
end
