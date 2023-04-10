using Plots

# you should use these Pakage for  top-level scope erorr. just use it and if you want know more google it. :)
using Markdown
using InteractiveUtils

function middle_square(seed::Int64, iterations::Int64)
    digit = length(string(seed))
    power_2 = 2 ^ (2 * digit)

    random_numbers = [seed]
    for i in 1:iterations
        square = string(random_numbers[i] ^ 2)

        while length(square) < 2 * digit
            square = "0" * square
        end

        # cut the middle of number 
        middle = (length(square) - 2 * digit) ÷ 2 + 1
        number = parse(Int64, square[middle:middle + 2 digit - 1])

        push!(random_numbers, number)
    end
        # plot
        plot(random_numbers, legend=false, xlabel="Iterations", ylabel="Random Numbers")
        return random_numbers
end

# test our function

for_plot = middle_square(8985, 20)

plot(for_plot)
