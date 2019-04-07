function clean(phone_number)
    phone_number = strip(phone_number)
    phone_number = replace(phone_number, r"(\D)" => "")
    if startswith(phone_number, "1") && length(phone_number) == 11
        phone_number = replace(phone_number, r"^1" => "")
    end
    regex = r"(([2-9][1-9]{2}){2})([0-9]{4})"
    return length(phone_number)==10 && occursin(regex, phone_number) ? phone_number : nothing
end
