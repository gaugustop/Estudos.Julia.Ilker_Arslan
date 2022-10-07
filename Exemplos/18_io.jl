
#Input and Output in comand line
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

#with files

#criando o arquivo
cd("Julia_Ilker_Arslan")
touch("data/sample_file.txt")
f = open("data/sample_file.txt")
typeof(f)
supertype(IOStream)
supertype(IO)

#lendo o arquivo
# 1)
readlines(f)
close(f)
# 2)
fname = "data/sample_file.txt"
open(fname) do file
    readlines(file);
end

open(fname) do file
    for line in eachline(file)
        println(line)
    end
end

# escrevendo no arquivo
fname2 = "data/sample_file2.txt"
touch(fname2)
# write mode
f2 = open(fname2, "w") 
write(f2,"Olá, estou escrevendo nesse arquivo e apagando tudo\n")
close(f2)
# append mode
f3 = open(fname2,"a") 
for i in 1:3
    write(f3,"linha $i hohoho\n")
end
close(f3)
# usando do
open(fname2, "a") do f
    write(f, "One more line ... \n")
    close(f)
end

# pastas e arquivos
# 1)
readdir("data")
mkdir("data/other_data")
for file in ["sales", "employees", "products"]
    touch("data/other_data/"*file*".txt")
end
dir = "data/other_data"
files = readdir(dir)
for fname in files
    file = joinpath(dir,fname)
    open(file,"a") do f
        write(f, "first line of the file: $fname")
        close(f)
    end
end

# 2)
#write já cria e escreve!
mkdir("data/other_other_data")
for file in ["sales", "employees", "products"]
    open(joinpath("data","other_other_data",file*".txt"), "a") do f
        write(f, "first line of file: $file.txt")
        close(f)
    end
end

#pega o diretorio atual
pwd()
#le os arquivos do diretorio
readdir()
#muda de diretorio
cd()
#junta caminhos
joinpath("caminho1","caminho")
#separa caminhos
splitpath("caminho1/caminho2")
#deleta 
rm(path::AbstractString; force::Bool=false, recursive::Bool=false)

