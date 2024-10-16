# Establish a Model to Study Vehicle Oscillations Considering the Effects of the Braking Process

## 1. Establish a Model to Analyze the Oscillations of a Half-Car Vehicle
### 1.1. Assumptions When Constructing the Model

The model for analyzing the oscillations of a two-axle vehicle is based on Figure 3.1, with the following assumptions:

- The dynamic model represents the oscillations of the vehicle's body connected to both axles, assuming planar motion. That is, the vehicle is considered to oscillate symmetrically about the longitudinal axis (Z-axis), and we examine how the front and rear axles respond to road surface irregularities on both the left and right sides, similar to the model below.

- The sprung mass is expressed as the oscillating motion of the vehicle's body, represented by the dynamic variables for mass $M$ and the pitch moment of inertia (about the transverse axis passing through the center of mass) $J_y$. The sprung mass $M$ is connected to the unsprung masses through suspension stiffness ($C_{s1}$, $C_{s2}$) and damping ($K_{s1}$, $K_{s2}$).

- The unsprung masses correspond to the front and rear axles with masses $m_1$ and $m_2$, connected to the road surface through tire stiffness ($C_{t1}$, $C_{t2}$) and tire damping ($K_{t1}$, $K_{t2}$). These values account for the deformation of the tires and the impact of road surface irregularities on tire oscillations.

- The oscillations are considered to be linear, with small perturbations around the equilibrium position.

- The tires are assumed not to slip and always remain in contact with the road.

- The vehicle is in uniform motion.

- The system has four degrees of freedom and four generalized coordinates: $Z$, $\phi$, $\xi_1$, $\xi_2$.

The code associated with each of the simulations is categorized in different folders. The code is standalone and should run on any MATLAB version without requiring additional dependencies.
