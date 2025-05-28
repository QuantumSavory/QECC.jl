using Test
using QECC

@testset "RepCode" begin
    c = RepCode(5)
    @test parity_matrix(c) == Bool[1 1 0 0 0;
                                  0 1 1 0 0;
                                  0 0 1 1 0;
                                  0 0 0 1 1;
                                  1 0 0 0 1]
    @test code_n(c) == 5
    @test code_s(c) == 5
end