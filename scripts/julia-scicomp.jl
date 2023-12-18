"""
This script installs some useful utility & SciComp packages for Julia.
Note that, precompilation can take a while (> 1 hour).

To run this script: `julia julia-default.jl`

"""
using Pkg

# Utility Packages
# ----------------
# OhMyREPL.jl - Enhancements for the Julia REPL
Pkg.add("OhMyREPL")

# Term.jl - Terminal utilities for Julia
Pkg.add("Term")

# UnicodePlots.jl - Unicode-based scientific plotting for working in the terminal
Pkg.add("UnicodePlots")

# Markdown.jl - Markdown support for Julia
Pkg.add("Markdown")

# ProgressMeter.jl - Progress bars for Julia
Pkg.add("ProgressMeter")

# Revise.jl - Code hot-swapping for Julia
Pkg.add("Revise")

# BenchmarkTools.jl - Benchmarking tools for Julia
Pkg.add("BenchmarkTools")

# PrecompileTools.jl - Tools for precompiling Julia code
Pkg.add("PrecompileTools")

# PackageCompiler.jl - Compile Julia packages into standalone executables
Pkg.add("PackageCompiler")

# Documenter.jl - Documentation tools for Julia
Pkg.add("Documenter")


# Visualization Packages
# ----------------------
# Pluto.jl - Interactive notebooks for Julia
import Pkg
Pkg.add("Pluto")

# IJulia.jl - Jupyter notebook support for Julia
Pkg.add("IJulia")

# Plots.jl - Powerful and versatile plotting library
Pkg.add("Plots")

# Makie.jl - High-performance scientific plotting in Julia
Pkg.add("Makie")

# Gadfly.jl - Declarative plotting library
Pkg.add("Gadfly")

# Javis.jl - Visualization and animation library
Pkg.add("Javis")


# Machine Learning Packages
# -------------------------
# Flux.jl - Neural network library
Pkg.add("Flux")

# Zygote.jl - Automatic differentiation in Julia
Pkg.add("Zygote")

# GraphNeuralNetworks.jl - Graph neural networks in Julia
Pkg.add("GraphNeuralNetworks")

# CUDA.jl - GPU computing in Julia
Pkg.add("CUDA")

# RecurrentNN.jl - Recurrent neural networks in Julia
Pkg.add("RecurrentNN")

# Torch.jl - Julia wrapper for PyTorch
Pkg.add("Torch")

# Transformers.jl - Transformers for Julia
Pkg.add("Transformers")


# Scientific Computing Packages
# -----------------------------
# JSON.jl - JSON support in Julia
Pkg.add("JSON")

# DataFrames.jl - Data manipulation and analysis in Julia
Pkg.add("DataFrames")

# Symbolics.jl - Symbolic computing in Julia
Pkg.add("Symbolics")

# ModelingToolkit.jl - Tools for building and analyzing complex models
Pkg.add("ModelingToolkit")

# DifferentialEquations.jl - Differential equations in Julia
Pkg.add("DifferentialEquations")

# OrdinaryDiffEq.jl - Ordinary differential equations in Julia
Pkg.add("OrdinaryDiffEq")

# DiffEqGPU.jl - GPU support for differential equations in Julia
Pkg.add("DiffEqGPU")

# DynamicalSystems.jl - Tools for studying dynamical systems
Pkg.add("DynamicalSystems")

# Turing.jl - Probabilistic programming in Julia
Pkg.add("Turing")
