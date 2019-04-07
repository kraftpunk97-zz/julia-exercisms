function is_triangle(sides)
    sum_of_sides = sum(sides)
    for s in sides
        if s == 0 || s >= sum_of_sides-s
            return false
        end
    end
    return true
end

is_equilateral(sides) = length(unique(sides)) == 1 && sides[1] != 0
is_isosceles(sides) = length(unique(sides)) <= 2 && is_triangle(sides)
is_scalene(sides) = length(unique(sides)) == 3 && is_triangle(sides)
