using QECC
using Documenter
using DocumenterCitations
using Literate

DocMeta.setdocmeta!(QECC, :DocTestSetup, :(using QECC); recursive=true)

bib = CitationBibliography(joinpath(@__DIR__,"src/references.bib"),style=:authoryear)

for each in readdir(pkgdir(QECC, "examples"))
    input_file = pkgdir(QECC, "examples", each)
    endswith(input_file, ".jl") || continue
    @info "building" input_file
    output_dir = pkgdir(QECC, "docs", "src", "generated")
    Literate.markdown(input_file, output_dir; name=each[1:end-3], execute=false)
end

makedocs(
    plugins = [bib],
    modules=[QECC],
    authors="nzy1997",
    sitename="QECC.jl",
    format=Documenter.HTML(;
        canonical="https://QuantumSavory.github.io/QECC.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Interface" => "generated/interface.md",
        "References" => "references.md",
        "Manual" => "man.md",
    ],
)

deploydocs(;
    repo="github.com/QuantumSavory/QECC.jl",
    devbranch="main",
)