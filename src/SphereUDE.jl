__precompile__()
module SphereUDE

# types
using Base: @kwdef
# utils 
# training 
using LinearAlgebra, Statistics, Distributions
using Lux, Zygote
using OrdinaryDiffEq
using SciMLSensitivity
using Optimization, OptimizationOptimisers, OptimizationOptimJL
using ComponentArrays: ComponentVector
using PyPlot, PyCall

# Debugging
using Infiltrator

include("utils.jl")
include("types.jl")
include("train.jl")
include("plot.jl")

# Python libraries 
const mpl_colors::PyObject = isdefined(SphereUDE, :mpl_colors) ? SphereUDE.mpl_colors : PyNULL()
const mpl_colormap::PyObject = isdefined(SphereUDE, :mpl_colormap) ? SphereUDE.mpl_colormap : PyNULL()
const sns::PyObject = isdefined(SphereUDE, :sns) ? SphereUDE.sns : PyNULL()
const ccrs::PyObject = isdefined(SphereUDE, :ccrs) ? SphereUDE.ccrs : PyNULL()
const feature::PyObject = isdefined(SphereUDE, :feature) ? SphereUDE.feature : PyNULL()

include("setup/config.jl")

end
