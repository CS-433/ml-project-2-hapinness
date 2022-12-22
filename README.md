# 2nd Team Project for EPFL ML course CS-433
## Team name: **haPINNess**
## Team members

Thibaud Martin: thibaud.martin@epfl.ch

Arthur Lamour: arthur.lamour@epfl.ch

Justin Manson: justin.manson@epfl.ch

## Goal
Discover and implement **Physics Informed Neural Networks** (PINN) in PyTorch on various differential equations:
- Cauchy Problem: 1D inference with different frequencies, importance of randomized training data, extrapolation performance test
- Viscous Burgers' equation: 2D inference and identification
- Heat equation: 2D inferences with different freqencies, 3D inference with different frequencies

**Inference**: find the solution of a differential equation with initial and/or boundary condtions. <br>
**Identification**: knowing the solution, identify the parameters of the differential equation that the solution solves. 
**Extrapolation**: predicting outside training domain.

## Result
* Cauchy inference on multiple frequencies 
    
    | **$\alpha$** | **1** | **10** | **20** |
    |----------|-----|-----|-----|
    | **$L_2$**    | **7.07e-4** |  **4.45e-2** | **3.44e-2** |

* Cauchy randomization
    | **Sampled** | **Uniform** | **Random** | 
    |----------|-----|-----|
    | **$L_2$**    | **1.52** |  **1.18** |

* Cauchy extrapolation
    | **Data** | **Train** | **Test** | 
    |----------|-----|-----|
    | **$MSE_y$**    | **6.11e-8** |  **5.13** |

* Burgers identification (without noise)
    | **Data** | **Train** | **Test** | 
    |----------|-----|-----|
    | **$MSE_u$**    | **1.90e-7** |  **2.04e-6** |
    | **$MSE_f$**    | **2.72-7** |  **3.02e-4** |


    Relative error $\lambda_1 = 0.00103$%
    Relative error $\lambda_2 = 0.77762$%



* Burgers identification (with 1% uncorrelated noise)
    | **Data** | **Train** | **Test** | 
    |----------|-----|-----|
    | **$MSE_u$**    | **7.07e-7** |  **7.90e-7** |
    | **$MSE_f$**    | **1.53e-6** |  **1.90e-4** |


    Relative error $\lambda_1 = 0.02595186234$%
    Relative error $\lambda_2 = 0.45801953038$%

* Burgers inference
    | **Data** | **Train** | **Test** | 
    |----------|-----|-----|
    | **$MSE_u$**    | **3.35e-7** |  **5.23e-7** |
    | **$MSE_f$**    | **5.30e-6** |  **5.97e-6** |

* Heat equation 2D inference $f=1$
    | **Data** | **Train** | **Test** | 
    |----------|-----|-----|
    | **$MSE_u$**    | **1.31e-6** |  **3.12e-7** |
    | **$MSE_f$**    | **1.15e-5** |  **2.82-6** |

* Heat equation 2D inference $f=3$
    | **Data** | **Train** | **Test** | 
    |----------|-----|-----|
    | **$MSE_u$**    | **1.57e-6** |  **3.85e-7** |
    | **$MSE_f$**    | **7.83e-5** |  **2.55e-5** |

* Heat equation 2D inference $f=5$
    | **Data** | **Train** | **Test** | 
    |----------|-----|-----|
    | **$MSE_u$**    | **3.96e-1** |  **1.57e-2** |
    | **$MSE_f$**    | **1.30e-1** |  **1.96e-2** |

* Heat equation 3D inference for different frequencies and number of support points
    | **L_2**  | **$\alpha$** | **Support Points** | 
    |----------|-----|-----|
    | **6.06e-04** | **1** |  **0** |
    | **3.20e-04** | **1** |  **10** |
    | **3.18e-04** | **1** |  **20** |
    | **3.48e-04** | **1** |  **40** |
    | **3.23e-01** | **2** |  **0** |
    | **2.43e-01** | **2** |  **10** |
    | **2.73e-01** | **2** |  **20** |
    | **1.49e-01** | **2** |  **40** |

test



## Files
- 1D_Cauchy_problem_varying_frequency.ipynb: one dimensional implementation of a Cauchy problem. The desired solution contains a parameter $\alpha$ which is tuned to adjust its frequency. The notebook compares PINN accuracy when $\alpha$ is equal to 1, 10 and 20.


- 1D_Collocation_points_sampling_method_random_vs_uniform_tested_on_Cauchy_problem.ipynb: implementation of a Cauchy problem for a sinus as solution. The aim of this notebook was to compare two sampling methods for collocation points: uniform and random. We wanted to show the risk associated with using uniformly spaced collocation points if the sampling frequency matches the resonant frequency of the solution.


- 1D_extrapolation.ipynb: implementation of a Cauchy problem for a cosinus as solution. The aim of this notebook was to test the ability of a PINNs to extrapolate outside its' training domain (i.e. the domain over which it is given collocation points).


- Burgers_identification.ipynb: implementation of inference on a viscous burgers' equation. The aim of this notebook was to show that PINN are a very promising alternative to solve nonlinear partial differential equations. Two systemic studies are performed on the network architecture and the training data size.


- Burgers_inference.ipynb: implementation of identification on a viscous burgers' equation. The aim of this notebook was to show that PINN can be used to perform parameters identification of a nonlinear partial differential equation when the solution is know. Two systemic studies are performed on the network architecture and the training data size with uncorrelated noise to test the robustness.


- Heat_2D_inference_f_1.ipynb: implementation of inference on a two dimensional heat equation. The aim of this notebook was to show that PINN can solve accuratly linear partial differential equation. The initial condition is a single heat source $f=1$.


- Heat_2D_inference_f_3.ipynb: implementation of inference on a two dimensional heat equation. The aim of this notebook was to show that PINN can solve accuratly linear partial differential equation, but require more training data to remain accurate if the initial condition is more complex. The initial condition is three heat sources $f=3$.


- Heat_2D_inference_f_5.ipynb: implementation of inference on a two dimensional heat equation. The aim of this notebook was to show that PINN can solve linear partial differential equation, but are limited if the initial condition is too complex (oscillates too much). The initial condition is five heat sources $f=5$.


- Heat_3D.ipynb: implementation of our custom three dimensional heat equation. The desired solution has a parameter $\alpha$ that can be tuned to change its frequency. Note that to precisely reproduce the figures of the report, the last cell must be launched 3 times. This is due to an error during the final run.


- burgers_shock.mat: numerical approximations of the true solution of the viscous burgers' equation.

## References
- Raissi, Maziar, Paris Perdikaris, and George E. Karniadakis. "[Physics-informed neural networks: A deep learning framework for solving forward and inverse problems involving nonlinear partial differential equations](https://www.sciencedirect.com/science/article/pii/S0021999118307125)." Journal of Computational Physics 378 (2019): 686-707.

- Raissi, Maziar, Paris Perdikaris, and George Em Karniadakis. "[Physics Informed Deep Learning (Part II): Data-driven Discovery of Nonlinear Partial Differential Equations](https://arxiv.org/abs/1711.10566)." arXiv preprint arXiv:1711.10566 (2017).

- Raissi, Maziar, Paris Perdikaris, and George Em Karniadakis. "[Physics Informed Deep Learning (Part I): Data-driven Solutions of Nonlinear Partial Differential Equations](https://arxiv.org/abs/1711.10561)." arXiv preprint arXiv:1711.10561 (2017).
