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