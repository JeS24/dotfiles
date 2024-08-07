# julia-scicomp.jl
import Pkg

# Essential utility packages
Pkg.add("OhMyREPL")
Pkg.add("Term")
Pkg.add("UnicodePlots")
Pkg.add("Markdown")
Pkg.add("ProgressMeter")
Pkg.add("Revise")
Pkg.add("BenchmarkTools")
Pkg.add("PrecompileTools")
Pkg.add("PackageCompiler")
Pkg.add("Documenter")
Pkg.add("JSON")

# Notebooks and interactive environments
Pkg.add("Pluto")
Pkg.add("IJulia")

# Visualization packages
Pkg.add("Plots")
Pkg.add("Makie")
Pkg.add("Gadfly")
Pkg.add("Javis")

# Machine learning packages
Pkg.add("Flux")
Pkg.add("Zygote")
# Pkg.add("GraphNeuralNetworks") # If you are interested in GNNs
Pkg.add("CUDA")  # If GPU is available
Pkg.add("Transformers")

# Scientific computing packages
Pkg.add("DataFrames")
Pkg.add("Symbolics")
Pkg.add("ModelingToolkit")
Pkg.add("DifferentialEquations")
Pkg.add("OrdinaryDiffEq")
Pkg.add("DiffEqGPU")  # If GPU is available
Pkg.add("DynamicalSystems")
Pkg.add("Turing")

# Build, instantiate, precompile & garbage collect
Pkg.build()
Pkg.instantiate()
Pkg.precompile()
Pkg.gc()
