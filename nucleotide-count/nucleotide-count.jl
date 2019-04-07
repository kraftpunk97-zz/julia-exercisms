
function count_nucleotides(strand::AbstractString)
    if occursin(r"[^ACGT]", strand)
        throw(DomainError(strand, "Invalid DNA strand"))
    end
    protiens = ('A', 'G', 'T', 'C')
    return Dict(char => count(i->(i==char), strand) for char in protiens)
end
