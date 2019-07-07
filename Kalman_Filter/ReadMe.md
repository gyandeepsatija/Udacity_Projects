Kalman Filter Equations
These are the equations that implement the Kalman Filter in multiple dimensions.

State Prediction:

x' = Fx

P' = FPF^T + Q

Measurement Update:

y = z - Hx

S = HP'H^T + R

Calculation of Kalman Gain:

K = P'H^TS^{-1} 

Calculation of Posterior State and Covariance:

x = x' + Ky

P = (I - KH)P'
