function to_rna(dna::AbstractString)
    result = ""
    
    complement = Dict('G'=>'C',
                      'C'=>'G',
                      'T'=>'A',
                      'A'=>'U')

    for nucleotide in dna
        try
            result *= complement[nucleotide]
        catch y
            throw(ErrorException("Invalid DNA string"))
        end
    end
    return result
end
