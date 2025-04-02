---
title: "Physics Notes"
author: "Serafí Nebot Ginard"
date: $DATE$

mainfont: Libertinus Serif
monofont: DejaVu Sans Mono
mathfont: Libertinus Math

documentclass: article
numbersections: true
colorlinks: true
toc: true

geometry: top=2cm, bottom=1.5cm, left=1.5cm, right=1.5cm
pdf-engine: xelatex
header-includes: |
    \usepackage{float}
    \let\origfigure\figure
    \let\endorigfigure\endfigure
    \renewenvironment{figure}[1][H]%
    {\origfigure[H]}{\endorigfigure}

    \usepackage{fancyhdr}
    \pagestyle{fancy}
    \fancyhf{}
    \fancyfoot[C]{\thepage}
    \fancyhead[L]{Physics Notes}
    \fancyhead[R]{Serafí Nebot Ginard}
---

\pagebreak

# Punctual loads

## Point Charges and Electric Fields

**Point Charges**

Imagine tiny particles, like electrons or protons, that carry an electric charge. In physics, we often simplify these as point charges—meaning we treat all their charge as being concentrated at a single point in space. This idealization makes calculations easier, even though real charges have some size.

- **Charge (q)**: Measured in coulombs (C), it can be positive (like protons) or negative (like electrons).
- **Why Point Charges?** By assuming the charge is at a point, we can use straightforward mathematical formulas without worrying about the charge’s shape or distribution.

Electric Force Between Point Charges
When two point charges are near each other, they interact through an electric force. This force is described by Coulomb’s Law:

$$\vec{F}=\frac{1}{4\pi\epsilon_0}\frac{q_1q_2}{r^2}\hat{r}$$

- $\vec{F}$: The force vector (in newtons, N), showing both magnitude and direction.
- $q_1, q_2$: The magnitudes of the two charges (in coulombs, C).
- $r$: The distance between the charges (in meters, m).
- $\epsilon_0$: The vacuum permittivity, a constant approximately $8.85\times10^{-12}~C^2/(N\cdot m^2)$ which relates charge and force in a vacuum.
- $\hat{r}$: A unit vector pointing from one charge to the other, indicating direction.

How It Works:

- If $q_1$ and $q_2$ have the same sign (both positive or both negative), the force is repulsive (they push apart).
- If they have opposite signs, the force is attractive (they pull together).
- The $1/r^2$ term means the force decreases with the square of the distance—double the distance, and the force drops to a quarter.

Example: Two charges, $q_1 = +2\,\mu C$ and $q_2 = -3\,\mu C$, are 1 m apart. The force is attractive, and its magnitude is:

$$F = \frac{1}{4\pi \times 8.85 \times 10^{-12}} \frac{(2 \times 10^{-6})(3 \times 10^{-6})}{1^2} \approx 0.0539\,N$$

**Electric Field**

The electric field describes the influence a charge creates in the space around it. It's defined as the force per unit charge that a small positive test charge would experience at a point:

$$\vec{E} = \frac{\vec{F}}{q_{test}}$$

For a single point charge $q$, the electric field at a distance $r$ is:
$$\vec{E} = \frac{1}{4\pi\varepsilon_0}\frac{q}{r^2}\hat{r}$$

- Units: Newtons per coulomb (N/C) or volts per meter (V/m).
- Direction: Points away from positive charges and toward negative charges. 

Multiple Charges: If there are several charges, the total electric field is the vector sum of the fields from each charge (superposition principle):

$$\vec{E}_{total} = \vec{E}_1 + \vec{E}_2 + \cdots$$

Why It Matters: Engineers use electric fields to design capacitors, sensors, and more, understanding how charges affect their surroundings.

## Newton's Third Law in Electricity

Newton's Third Law states: For every action, there is an equal and opposite reaction. In the context of electricity:

- If charge $q_1$ exerts a force $\vec{F}_{12}$ on charge $q_2$, then $q_2$ exerts a force $\vec{F}_{21} = -\vec{F}_{12}$ on $q_1$. 

- The forces are equal in magnitude but opposite in direction.

Example: If a positive charge pushes a negative charge to the right, the negative charge pulls the positive charge to the left with the same strength.

Key Point: These forces act on different objects, so they don't cancel each other out in terms of motion. This symmetry is fundamental in physics and ensures conservation of momentum.

## Work and Energy in Electric Fields

**Work**

Work is the energy transferred when a force moves an object. For a constant force:

$$W = \vec{F} \cdot \vec{d}$$

- $\vec{F}$: Force (N).
- $\vec{d}$: Displacement (m).
- Dot Product: $W = F d \cos \theta, \text{where } \theta$ is the angle between force and displacement. Work is in joules (J).

In electric fields, the force on a charge is $\vec{F} = q \vec{E}$. If the field varies (e.g., near a point charge), we use an integral:

$$W = \int \vec{F} \cdot d\vec{r} = q \int \vec{E} \cdot d\vec{r}$$

- $d\vec{r}$: A tiny displacement along the path.

**Potential Energy**

The electric field is conservative, meaning the work done depends only on the start and end points, not the path. We define electric potential energy $U$:

$$W_{\text{field}} = -\Delta U$$

- $\Delta U = U_{\text{final}} - U_{\text{initial}}$: Change in potential energy.
- The work done by the field reduces the potential energy.

For a charge $q$ in an electric field, potential energy is tied to electric potential $V$:

$$U = qV$$

**Electric Potential (Voltage)**

Electric potential $V$ is the potential energy per unit charge:

$$V = \frac{U}{q}$$

- Units: Volts (V), where $1 \text{ V} = 1 \text{ J/C}$.
- The potential difference (voltage) between two points A and B is:

$$V_B - V_A = - \int_A^B \vec{E} \cdot d\vec{r}$$

Work and Potential: The work done by the field moving a charge from A to B is:

$$W_{\text{field}} = q(V_A - V_B) = -q \Delta V$$

- If $V_B < V_A$, $\Delta V$ is negative, and $W_{\text{field}}$ is positive, meaning the field does work (e.g., a positive charge moves toward lower potential).

**Example**: A 2 C charge moves from $V_A = 10 \text{ V}$ to $V_B = 5 \text{ V}$:

$$W_{\text{field}} = 2 \times (10 - 5) = 10 \text{ J}$$

## Electric Field and Potential Relationship

The electric field is related to how the potential changes in space:

$$\vec{E}= - \nabla V$$

- $\nabla V$: The gradient of V, showing how V changes in each direction.
- In one dimension: $E_x = - \frac{dV}{dx}$.

Intuition:

- The field points from high to low potential (like a ball rolling downhill).
- If V decreases as x increases, $\frac{dV}{dx} < 0$, so $E_x > 0$, pointing in the positive direction.

For a Point Charge:

- Potential: $V= \frac{1}{4\pi\epsilon_0 r}$.
- Field: $E = - \frac{dV}{dr} = \frac{1}{4\pi\epsilon_0 r^2}$, confirming the relationship.

## Resistance and Resistors

**Resistance**

Resistance measures how much a material opposes the flow of electric current. For a wire:

$$R = \rho \frac{L}{A}$$

- $R$: Resistance (ohms, $\Omega$).
- $\rho$: Resistivity (ohm-meters, $\Omega \cdot m$), a material property.
- $L$: Length ($m$).
- $A$: Cross-sectional area ($m^2$).

Why? Longer wires resist more; thicker wires resist less.

**Resistors**

Resistors are circuit components designed with specific resistance. They're passive, meaning they don't generate energy but dissipate it as heat:

$$P = I^2 R$$

- $P$: Power (watts, $W$).
- $I$: Current (amperes, $A$).

Application: Engineers use resistors to limit current or divide voltage in circuits.

## Combinations of Resistors

**Series**

Resistors in series are connected end-to-end:

$$R_{eq}=R_1+R_2+\cdots+R_n$$

- Same Current: The current is the same through each resistor.
- Voltage Divides: $V=V_1+V_2+\cdots$, where $V_i=IR_i$.

**Parallel**

Resistors in parallel share the same two connection points:

$$\frac{1}{R_{eq}}=\frac{1}{R_1}+\frac{1}{R_2}+\cdots+\frac{1}{R_n}$$

- Same Voltage: Each resistor has the same voltage across it.
- Current Divides: $I=I_1+I_2+\cdots$, where $I_i=V/R_i$.

Example: Two resistors, $R_1=2\Omega$ and $R_2=3\Omega$:

- Series: $R_{eq}=2+3=5\Omega$. 
- Parallel: $\frac{1}{R_{eq}} = \frac{1}{2}+\frac{1}{3}=\frac{5}{6}$, so $R_{eq}=\frac{6}{5}=1.2\Omega.$
