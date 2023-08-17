| **Documentation**                                                 | **Build Status**                                                                                | **License**                                                                                | **Citation** |
|:-----------------------------------------------------------------:|:-----------------------------------------------------------------------------------------------:| :-----------------------------------------------------------------------------------------------:|:-----------:|
[![](https://img.shields.io/badge/docs-stable-blue.svg)](https://LudwigBoess.github.io/DSAModels.jl/stable) [![](https://img.shields.io/badge/docs-dev-blue.svg)](https://LudwigBoess.github.io/DSAModels.jl/dev) | [![Build Status](https://github.com/LudwigBoess/DSAModels.jl/actions/workflows/jlpkgbutler-ci-master-workflow.yml/badge.svg)](https://github.com/LudwigBoess/DSAModels.jl/actions/workflows/jlpkgbutler-ci-master-workflow.yml) [![codecov.io](https://codecov.io/gh/LudwigBoess/DSAModels.jl/coverage.svg?branch=main)](https://codecov.io/gh/LudwigBoess/DSAModels.jl?branch=main) | [![The MIT License](https://img.shields.io/badge/license-MIT-orange.svg)](LICENSE.md) | [![DOI](https://zenodo.org/badge/432138387.svg)](https://zenodo.org/badge/latestdoi/432138387) |


# Package Development

> :warning: **This package is being discontinued, as it can't be registered in the General registry due to its name. Development has been moved to [DiffusiveShockAccelerationModels.jl](https://github.com/LudwigBoess/DiffusiveShockAccelerationModels.jl)**


# DSAModels.jl

This package provides a number of efficiency models for Diffusive Shock Acceleration (DSA). If you use this implementation for publications, please cite [Böss et. al. (2023)](https://ui.adsabs.harvard.edu/abs/2023MNRAS.519..548B/abstract).

# Install

As usual with Julia just run

```
] add https://github.com/LudwigBoess/DSAModels.jl
```

# Usage

To use for example the mach number dependent model by [Kang & Ryu (2013)](https://arxiv.org/pdf/1212.3246.pdf), combined with the shock obliquity model by [Pais et. al. (2019)](http://arxiv.org/abs/1907.04300)

```julia
using DSAModels

ηM_model = KR13()  # Mach number dependent model
Mach = 5.0         # we assume a Mach 5 shock
θ_B  = 0.1π        # angle between shock normal and magnetic field vector
X_cr = 0.0         # X_cr = P_cr / P_th -> in this case no pre-existing CRs

# magnetic field angle dependent acc. efficiency
ηB   = ηB_acc_p(θ_B)  

# Mach number dependent acc. efficiency
ηM   = η_Ms(ηM_model, Mach, X_cr)

# total efficiency
η_tot = ηB * ηM
```
