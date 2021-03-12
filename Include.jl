# setup path -
_PATH_TO_PROJECT = pwd()
_PATH_TO_SRC = joinpath("execute_me_PS2.jl", "src")
_PATH_TO_CONFIG = joinpath("execute_me_PS2.jl", "config")

# import PKG, activate the project and instaintiate -
import Pkg
Pkg.activate("execute_me_PS2.jl")
Pkg.instantiate()

# load packages -
using DifferentialEquations
using Plots
using LaTeXStrings
using TOML
using Logging

# my codes -

# Problem.jl
path_to_problem = joinpath(src,"Problem.jl")
include("Problem.jl")

# Balances.jl
path_to_balances = joinpath(src,"Balances.jl")
include("Balances.jl")

# Control.jl
path_to_control = joinpath(src,"Control.jl")
include("Control.jl")

# Kinetics.jl
path_to_kinetics = joinpath(src,"Kinetics.jl")
include("Kinetics.jl")

# Solver.jl
path_to_solver = joinpath(src,"Solver.jl")
include("Solver.jl")