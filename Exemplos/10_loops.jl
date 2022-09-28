#for
for i in 1:4
    println(i^2)
end
for i = 1:4
    println(i^2)
end
for i ∈ 1:4
    println(i^2)
end

arr = rand(3:9, 1, 10);
for (i, v) ∈ enumerate(arr)
    println("The $i element is $v")
end

#loops aninhados
mat = rand(3:9, 8, 9);
for row in 1:size(mat, 1)
    for col in 1:size(mat, 2)
        println("Row: $row, Column: $col, value: $(mat[row,col])")
    end
end
for row in 1:size(mat, 1), col in 1:size(mat, 2)
    println("Row: $row, Column: $col, value: $(mat[row,col])")
end

nomes = ("Gabriel", "Mariana")
sobrenomes = ("Pinho", "Passos")
for (nome, sobrenome) ∈ zip(nomes, sobrenomes)
    println(nome * " " * sobrenome)
end

d = Dict("a" => 10, "b" => 20, "c" => 30)
for (key, value) in d
    println("Key is $key, value is $value")
end
for item in d
    println("Key is $(item.first), value is $(item.second)")
end

file = "data/file.txt"
for line in eachline(file)
    println(line)
end

#while
i = 1;
while i < 5
    println(√i)
    i += 1
end

input = nothing;
while input ≠ 0
    print("Enter a number (0 to exit): ")
    global input = parse(Int, readline())
end

#continue and break
#continue: vai pra próxima iteração
#break: interrompe o loop

arr = [3, 5, 99, 100, 4, 8, 100, 12, 500, 999, 23, 1, 44];
i = 1;
while i ≤ length(arr)
    if arr[i] == 999
        println("break!")
        break
        println("I will not appear!")
    end
    if arr[i] == 100
        println("continue!")
        i += 1
        continue
        println("I will not appear!")
    end
    println("arr[i] = $(arr[i])")
    i += 1
end

#Comprehensions
arr = [5, 4, 12, 17, 24, 52];
[x^2 for x in arr]
[(x^2, y^2) for x ∈ 1:4, y ∈ 1:3]
[x^2 for x = arr if iseven(x)]
[(i, j) for i = 1:3 for j = 1:i]
[iseven(x) ? x^2 : x^3 for x in arr]

#Generator (much faster!)
(x^2 for x ∈ 1:1_000_000_000)

begin
    s = 0
    @time for i = 1:1_000_000_000
        s += i^2
    end
end
@time sum([i^2 for i = 1:1_000_000_000])
@time sum(i^2 for i ∈ 1:1_000_000_000)
