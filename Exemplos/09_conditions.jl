#compound expressions
begin
    a = 1
    b = 2
    a + b
end
area = begin
    a = 12
    b = 9
    a * b
end
area = (a = 12; b = 9; a * b)
#begin end blocks não definem um escopo,
#as variáveis ainda são acessíveis de fora do
#begin end block

#conditionals
begin
    println("Enter you score :")
    score = readline()
    score = parse(Int64, score)
    if score ≥ 85
        println("Your grade is A")
    elseif score ≥ 70
        println("Your grade is B")
    elseif score ≥ 60
        println("Your grade is C")
    else
        println("Your score is F")
    end
end

#ternary operator
score = 70
score ≥ 60 ? "You passed!" : "Try again!"

#Short-Circuit Evaluation
#Similar a Shell Script
true && println("código executado!")
false && println("código executado!")
true || println("código executado!")
false || println("código executado!")