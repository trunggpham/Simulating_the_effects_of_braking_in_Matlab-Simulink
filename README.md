# Establish a Model to Study Vehicle Oscillations Considering the Effects of the Braking Process

## 1. Establish a Model to Analyze the Oscillations of a Half-Car Vehicle
### 1.1. Assumptions When Constructing the Model

The model for analyzing the oscillations of a two-axle vehicle is based on Figure 3.1, with the following assumptions:

- The dynamic model represents the oscillations of the vehicle's body connected to both axles, assuming planar motion. That is, the vehicle is considered to oscillate symmetrically about the longitudinal axis (Z-axis), and we examine how the front and rear axles respond to road surface irregularities on both the left and right sides, similar to the model below.

- The sprung mass is expressed as the oscillating motion of the vehicle's body, represented by the dynamic variables for mass $M$ and the pitch moment of inertia (about the transverse axis passing through the center of mass) $J_y$. The sprung mass $M$ is connected to the unsprung masses through suspension stiffness ($C_{p1}$, $C_{p2}$) and damping ($K_{1}$, $K_{2}$).

- The unsprung masses correspond to the front and rear axles with masses $m_1$ and $m_2$, connected to the road surface through tire stiffness ($C_{L1}$, $C_{L2}$) and tire damping ($K_{L1}$, $K_{L2}$). These values account for the deformation of the tires and the impact of road surface irregularities on tire oscillations.

- The oscillations are considered to be linear, with small perturbations around the equilibrium position.

- The tires are assumed not to slip and always remain in contact with the road.

- The vehicle is in uniform motion.

The system has four degrees of freedom and four generalized coordinates: $Z$, $\phi$, $\xi_1$, $\xi_2$.

![a half car model](https://github.com/trunggpham/Simulating-the-effects-of-braking-in-Matlab-Simulink/blob/main/a%20half%20car%20model.png)

## 1.2. Establish the System of Differential Equations

To determine the oscillation parameters of the vehicle, we need to establish a system of differential equations that describes the oscillatory motion of the system. The system of differential equations can be established using various methods. For example, one can use D’Alembert's principle or apply the Lagrange equation of type II. After the transformation steps, we obtain the system of differential equations that describes the oscillation of the vehicle, considering the influence of the braking process as follows:"

![the system of differential equations](https://github.com/trunggpham/Simulating-the-effects-of-braking-in-Matlab-Simulink/blob/main/the%20system%20of%20differential%20equations.png)

The expressions above can be defined as:

- \$C_pi$ \: The stiffness coefficient of the first axle.
- \$C_li$\: The stiffness coefficient of the tire on the first axle.
- \$K_i$, $K_Li$ \: The damping coefficients of the suspension and tire of the first axle.

- $\Delta p_i, \Delta \dot{p}_i, \Delta L_i, \Delta \dot{L}_i$: Variations in the displacement and speed of the suspension and tire of the $i^{th}$ axle.

- $q_i, \dot{q}_i$: The height profile of the road and the derivative representing the slope at the contact point of the tire with the road.

## 1.3. Determine the Effects of the Braking Process.

![Force Diagram Acting on the Vehicle During Braking](https://github.com/trunggpham/Simulating-the-effects-of-braking-in-Matlab-Simulink/blob/main/Force%20Diagram%20Acting%20on%20the%20Vehicle%20During%20Braking.png)

![Oscillation Model of a half of Vehicle Under the Influence of Braking Force.](https://github.com/trunggpham/Simulating-the-effects-of-braking-in-Matlab-Simulink/blob/main/Oscillation%20Model%20of%20a%20half%20of%20Vehicle%20Under%20the%20Influence%20of%20Braking%20Force..png)

**When braking, the forces acting on the vehicle are as follows:**

- The braking force $P_{p1}$ and $P_{p2}$ are applied at the contact points between the tire and the road, opposite to the direction of motion of the vehicle.

- The Inertial force $P_{j}$ acting at the vehicle's center of gravity, in the direction of the vehicle's motion.

- The weight of the vehicle $G$ acting at the center of gravity.

- The Tangential Reaction Force on the road $R_{1}$ and $R_{2}$ at the contact points between the tire and the road, which corresponds to the braking force $P_{f1}$ and $P_{f2}$ applied at the contact points between the tire and the road surface.

- The aerodynamic force $P_{w}$.

When braking, the aerodynamic force $P_{w}$ and the lateral force may change, and the values can vary slightly, typically around 1.5–2%. 

Using the traction force balance equation applied to the case of braking on a horizontal road (without towing a trailer), neglecting air resistance and rolling resistance, we have:
$P_{p} = $\delta \cdot \frac{G}{g} \cdot J_{p}$

where:
- $P_{p}$: Total braking force acting on the vehicle's wheels.
- $G$: Total weight of the vehicle.
- $g$: Acceleration due to gravity.
- $J_{p}$: Braking coefficient.
- $\delta$: The influence of the rotational mass coefficient when disengaging the clutch.
