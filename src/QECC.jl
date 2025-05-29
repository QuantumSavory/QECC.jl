module QECC

using SparseArrays
using LinearAlgebra

# interfaces
export distance, parity_matrix, code_n, code_s, code_k, parity_matrix_x, parity_matrix_z

# QEC Codes
export Perfect5,Cleve8

# CSS Codes
export Toric,Bitflip3,Phaseflip3,Shor9,Steane7,Surface,CSS

# Classical Codes
export RepCode

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
end
