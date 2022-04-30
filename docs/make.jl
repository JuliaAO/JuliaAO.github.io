using JuliaAO.github.io
using Documenter

DocMeta.setdocmeta!(JuliaAO.github.io, :DocTestSetup, :(using JuliaAO.github.io); recursive=true)

makedocs(;
    modules=[JuliaAO.github.io],
    authors="Ryan Dungee <rdungee@hawaii.edu> and contributors",
    repo="https://github.com/rdungee/JuliaAO.github.io.jl/blob/{commit}{path}#{line}",
    sitename="JuliaAO.github.io.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://rdungee.github.io/JuliaAO.github.io.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/rdungee/JuliaAO.github.io.jl",
    devbranch="main",
)
