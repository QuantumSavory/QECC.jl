# # Interface
# In this example, we will show how to use the basic interfaces of the package.
using QECC
# Create a perfect five-qubit code
p5 = Perfect5()

# Get the parity check matrix
parity_matrix(p5)

# Get the number of qubits
code_n(p5)

# Get the number of stabilizer generators
code_s(p5)

# Get the distance of the code
distance(p5)

# For a CSS code, we can also get the parity check matrices for X and Z stabilizers with [`parity_matrix_x`](@ref) and [`parity_matrix_z`](@ref)
s9 = Shor9()
parity_matrix_x(s9)
