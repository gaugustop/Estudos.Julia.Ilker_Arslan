# 1) Usando Pkg 
# cd("/home/biel/Codes/Estudos/Julia_Ilker_Arslan")
# ] generate MyPackage

# 2) Usando Pkg templates
# ] add PkgTemplates
# using PkgTemplates

#1)
Template(;interactive = true)("NewPackage")

#2)
t = Template(;user = "Gabriel")
t("OtherPackage")

#Os packages ficam por default em ~/.julia/dev

#Registrar um pacote:
#github.com/JuliaRegistries/Registrator.jl
#juliahub.com -> Register

#Outras uncoes importantes:
# ] st
# ] activate "Package_path"
# ] instantiate "Package_path"

