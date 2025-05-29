"""
    RepCode <: AbstractCECC
    RepCode(n)

Repetition code is a classical error correction code that repeats the same bit `n` times.

### Fields
- `n`: The number of times to repeat the bit.
"""
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

"""
    Bitflip3 <: AbstractQECC

Bitflip3 is a three-qubit bit-flip code that corrects single-qubit bit-flip error and does not detect any phase-flip errors.
"""
struct Bitflip3 <: AbstractQECC end

parity_matrix(c::Bitflip3) = hcat(zeros(Bool,2,3), parity_matrix(RepCode(3))[1:2,:])

"""
    Phaseflip3 <: AbstractQECC

Phaseflip3 is a three-qubit phase-flip code that corrects single-qubit phase-flip error and does not detect any bit-flip errors.
"""
struct Phaseflip3 <: AbstractQECC end

parity_matrix(c::Phaseflip3) = hcat(parity_matrix(RepCode(3))[1:2,:], zeros(Bool,2,3))