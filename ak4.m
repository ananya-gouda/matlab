% piston-rod-crank

n = 500; r = 0.1; l = 0.4; omega = 2 * pi * n / 60; 
theta = linspace(0, 2*pi, 1000);
x = r * (1 - cos(theta)) + (l - sqrt(l^2 - (r * sin(theta)).^2));
v = gradient(x, theta) * omega;
a = gradient(v, theta) * omega;

% Display results
fprintf('Theta: %.2f rad, Position: %.4f m, Velocity: %.4f m/s, Acceleration: %.4f m/s^2\n', ...
    [theta; x; v; a]);

% Plot
figure;
subplot(3, 1, 1); plot(theta, x, 'r'); title('Piston Position'); xlabel('\theta'); ylabel('Position (m)');
subplot(3, 1, 2); plot(theta, v, 'b'); title('Piston Velocity'); xlabel('\theta'); ylabel('Velocity (m/s)');
subplot(3, 1, 3); plot(theta, a, 'g'); title('Piston Acceleration'); xlabel('\theta'); ylabel('Acceleration (m/s^2)');
