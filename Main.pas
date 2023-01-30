
uses SysUtils, Math;

const
G = 6.67430e-11; // Gravitational constant
M_earth = 5.97237e24; // Earth's mass
M_mars = 6.41693e23; // Mars' mass
R_earth = 149.6e6; // Average Earth-Sun distance
R_mars = 227.9e6; // Average Mars-Sun distance

var
V0, T, V, D, a, F: Double;

begin
	D := R_mars - R_earth; // Distance between Earth and Mars
	a := (G * M_earth + G * M_mars) / (R_earth + R_mars); // Acceleration
	V0 := sqrt(a * R_earth); // Initial velocity
	T := (2 * pi * R_earth) / V0; // Time for one revolution
	F := G * M_mars * T / (R_mars * R_mars * R_mars); // Force of attraction
	V := sqrt(V0 * V0 + 2 * a * D); // Final velocity
	WriteLn('The required velocity is: ', V:0:2, ' m/s');
end.