
#Input and Output
read(stdin, Char)W
read(stdin, 5)Base.UV_PROCESS_WINDOWS_VERBATIM_ARGUMENTS
write(stdout, "Julia is cool.");
readline(stdin)
for line in eachline(stdin)
    if line == "exit"
        break
    end
    println("you printed >>> $line")
end
while !eof(stdin)
    c = read(stdin, Char)
    if c ∈ ["q", "Q"]
        break
    end
    println("typed ---> $c")
end

touch("sample_file.txt")
f = open("sample_file.txt")
readlines(f)
close(f)

fname = "sample_file.txt"
open(fname) do file
    readlines(file)
end

open(fname) do file
    for line in eachline(file)
        println(line)
    end
end