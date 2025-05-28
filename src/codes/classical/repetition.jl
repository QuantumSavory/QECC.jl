struct RepCode <: AbstractCECC
    n::Int
end

function parity_matrix(c::RepCode)
    n = c.n
    I = [i for i in 1:n for δ in (0,1)]
    J = [(i+δ-1)%n+1 for i in 1:n for δ in (0,1)]
    V = true
    sparse(I,J,V,n,n)
end

struct Bitflip3 <: AbstractQECC end

parity_matrix(c::Bitflip3) = hcat(zeros(Bool,3,3), parity_matrix(RepCode(3)))

struct Phaseflip3 <: AbstractQECC end

parity_matrix(c::Phaseflip3) = hcat(parity_matrix(RepCode(3)), zeros(Bool,3,3))