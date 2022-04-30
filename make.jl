using Documenter

makedocs(;
    authors = "Julia AO",
    repo = "https://github.com/juliaao/juliaao.github.io/blob/{commit}{path}#L{line}",
    sitename = "JuliaAO",
    format = Documenter.HTML(;
        prettyurls = get(ENV, "CI", "false") == "true",
        canonical = "https://juliaao.github.io/",
        assets = String[],
    ),
    pages = [
        "JuliaAO" => "index.md",
    ],
    strict = true
)


deploydocs(;
    repo = "github.com/JuliaAO/JuliaAO.github.io",
    push_preview = true,
    branch = "master",
    devbranch = "source"
)