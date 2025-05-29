module QECC

using SparseArrays
using LinearAlgebra
using Combinatorics

# interfaces
export distance, parity_matrix, code_n, code_s, code_k, parity_matrix_x, parity_matrix_z, rate

# QEC Codes
export Perfect5, Cleve8

# CSS Codes
export Toric, Bitflip3, Phaseflip3, Shor9, Steane7, Surface, CSS, QuantumReedMuller

# Classical Codes
export RepCode, ReedMuller, RecursiveReedMuller
include("interfaces.jl")
include("codes/util.jl")
include("codes/css.jl")
include("codes/fivequbit.jl")
include("codes/classical/repetition.jl")
include("codes/toric.jl")
include("codes/clevecode.jl")
include("codes/shorcode.jl")
include("codes/steanecode.jl")
include("codes/surface.jl")
include("codes/classical/reedmuller.jl")
include("codes/classical/recursivereedmuller.jl")
include("codes/quantumreedmuller.jl")
end
