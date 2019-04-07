function spiral_matrix(n::Int)
    result = Matrix{Int64}(zeros(n, n))
    current_count = 1
    left = 1
    right = n
    for itr=1:div(n+1,  2)
        up = left
        down = right

        for i=left:right
            result[up, i] = current_count
            current_count += 1
        end

        for j=up+1:down
            result[j, right] = current_count
            current_count += 1
        end

        for k=right-1:-1:left
            result[down, k] = current_count
            current_count += 1
        end

        for l=down-1:-1:up+1
            result[l, left] = current_count
            current_count += 1
        end

        left += 1
        right -= 1
    end
    return result
end
