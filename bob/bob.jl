function bob(stimulus::AbstractString)
    question_asked = false
    yelling = false

    stimulus = rstrip(stimulus)
    #= To detect silence, we just need to find if the stimulus is made
    a characters other than whitespaces =#
    if stimulus == ""
        return "Fine. Be that way!"
    end

    # Questions end with a question mark
    if endswith(stimulus, "?")
        question_asked = true
    end

    #= If the stimulus has no lowercase characters,
    and atleast one uppercase alphabet,
    it is probably being yelled =#
    if !occursin(r"[a-z]", stimulus) && occursin(r"[A-Z]", stimulus)
        yelling = true
    end

    if question_asked && yelling
        return "Calm down, I know what I'm doing!"
    end
    if question_asked
        return "Sure."
    end
    if yelling
        return "Whoa, chill out!"
    end

    # In all other scenarios...
    return "Whatever."
end
