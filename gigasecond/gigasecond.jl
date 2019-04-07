using Dates

add_gigasecond(date::DateTime) = date + Second(1e9)
