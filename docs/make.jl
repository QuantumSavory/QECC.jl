using QECC
using Documenter
using DocumenterCitations

DocMeta.setdocmeta!(QECC, :DocTestSetup, :(using QECC); recursive=true)

bib = CitationBibliography(joinpath(@__DIR__,"src/references.bib"),style=:authoryear)

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
        "References" => "references.md",
    ],
)

deploydocs(;
    repo="github.com/QuantumSavory/QECC.jl",
    devbranch="main",
)