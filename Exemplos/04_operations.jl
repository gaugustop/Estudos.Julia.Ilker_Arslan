#Divisões
5 ÷ 2
div(5, 2)
5 / 2
5 % 2
rem(5, 2)
5 // 2

sqrt(5)
√5
cbrt(5)
∛5

#Comparações
# == equality
# === ≡ (\equiv TAB) equivalent (same object)
# != ≠ (\ne TAB) inequality
# < less than
# <= ≤ (\leq TB) less than or equal
# > greater than
# >= ≥ (\geq TAB) greater than or equal

#equivalencia e deepcopy
c = [4, 3, 2]
d = c
c === d
d = deepcopy(c)
c === d

#várias comparações
2 > 1 > 0.1 ≥ -9

#precisao numérica
0.4 + 0.2
0.6 == 0.4 + 0.2
isequal(0.6, 0.2 + 0.4)
isapprox(0.6, 0.4 + 0.2)
0.6 ≈ 0.4 + 0.2

#boolean
!true
true && false
true || false

#bitwise
#and &
#or |
#neg ~
# ⊻, ⊼, ⊽, >>>, >>, <<

#incremento
x = 3
x += 1
x /= 2
x *= 3

#other functions
log(ℯ)
log(10, 100)
exp(1)
round(3.24)
floor(3.4)
ceil(3.4)
sin(π / 2)
sind(90)
rand(4)
rand(Int, 4)
rand(Int, 2, 2)