abstract type AbstractECC end
abstract type AbstractQECC <: AbstractECC end
abstract type AbstractCECC <: AbstractECC end
abstract type AbstractCSSCode <: AbstractQECC end


function parity_matrix end
function parity_matrix_x end
function parity_matrix_z end
parity_matrix(c::AbstractCSSCode) = parity_matrix(CSS(parity_matrix_x(c), parity_matrix_z(c)))


"""The number of physical qubits in a code."""
code_n(c::AbstractQECC) = nqubits(parity_matrix(c))
code_n(c::AbstractCECC) = nbits(parity_matrix(c))
nqubits(pm::AbstractMatrix{Bool}) = size(pm, 2) ÷ 2
nbits(pm::AbstractMatrix{Bool}) = size(pm, 2)


"""The number of stabilizer checks in a code. They might not be all linearly independent, thus `code_s >= code_n-code_k`. For the number of linearly independent checks you can use `LinearAlgebra.rank`."""
code_s(c::AbstractECC) = nstabilizers(parity_matrix(c))
nstabilizers(pm::AbstractMatrix{Bool}) = size(pm, 1)

"""The distance of a code."""
function distance end