# # Parsing MATPOWER Files

# **Originally Contributed by**: Clayton Barrows

# ## Introduction

# An example of how to parse MATPOWER files and create a `System` using [PowerSystems.jl](github.com/NREL-SIIP/PowerSystems.jl)

# ### Environment
# This notebook depends on the SIIPExamples.jl environment which is loaded by default

using Pkg
Pkg.status()

# ### Dependencies
using SIIPExamples
using PowerSystems
using TimeSeries
const PSY = PowerSystems
const IS = PSY.InfrastructureSystems;

# ### Fetch Data
# PowerSystems.jl links to some test data that is suitable for this example.
# Let's download the test data
base_dir = PSY.download(PSY.TestData; branch = "master");

# ### Create a `System`
sys = System(PSY.PowerModelsData(joinpath(base_dir, "matpower", "case5_re.m")))
sys
