# 2nd Team Project for EPFL ML course CS-433
## Team name: **haPINNess**
## Team members

Thibaud Martin: thibaud.martin@epfl.ch

Arthur Lamour: arthur.lamour@epfl.ch

Justin Manson: justin.manson@epfl.ch

## Goal
Discover and implement **Physics Informed Neural Networks** (PINN) in PyTorch on various differential equations:
- Cauchy Problem: 1D inference on different frequencies, importance of randomization on training data, extrapolation performance test
- Viscous Burgers' equation: 2D inference and identification
- Heat equation: 2D inferences on different freqencies, 3D inference

**Inference**: find the solution of a differential equation with initial and/or boundary condtions. <br>
**Identification**: knowing the solution, identify the parameters of the differential equation the solution solves. 


## Results
XXX

## Files
- 1D_Cauchy_problem_varying_frequency.ipynb: This file contains XXX.
- 1D_Collocation_points_sampling_method_random_vs_uniform_tested_on_Cauchy_problem.ipynb: This file contains XXX.
- 1D_extrapolation.ipynb: This file contains XXX.
- Burgers_identification.ipynb: This file contains XXX.
- Burgers_inference.ipynb: This file contains XXX.
- Heat_2D_inference_f_1.ipynb: This file contains XXX.
- Heat_2D_inference_f_1.ipynb: This file contains XXX.
- Heat_2D_inference_f_3.ipynb: This file contains XXX.
- Heat_2D_inference_f_5.ipynb: This file contains XXX.
- burgers_shock.mat: This file contains XXX.

## References
- Raissi, Maziar, Paris Perdikaris, and George E. Karniadakis. "[Physics-informed neural networks: A deep learning framework for solving forward and inverse problems involving nonlinear partial differential equations](https://www.sciencedirect.com/science/article/pii/S0021999118307125)." Journal of Computational Physics 378 (2019): 686-707.

- Raissi, Maziar, Paris Perdikaris, and George Em Karniadakis. "[Physics Informed Deep Learning (Part II): Data-driven Discovery of Nonlinear Partial Differential Equations](https://arxiv.org/abs/1711.10566)." arXiv preprint arXiv:1711.10566 (2017).

- Raissi, Maziar, Paris Perdikaris, and George Em Karniadakis. "[Physics Informed Deep Learning (Part I): Data-driven Solutions of Nonlinear Partial Differential Equations](https://arxiv.org/abs/1711.10561)." arXiv preprint arXiv:1711.10561 (2017).
