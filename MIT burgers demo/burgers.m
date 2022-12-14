close all;

dt = 0.01;
nt = 200;
nx = 1024;

u = zeros(nt+1, nx) * nan;
subplot(1,2,1);
[x, u(1,:)] = drawFunction(0, 3, nx, 'u0');
clf;
for i = 1:nt
    [t, u1] = ode45(@burgersDdt, [0, dt], u(i,:));
    u(i+1,:) = u1(end,:);
    subplot(1,2,1);
    plot(x, u(i+1,:), 'r', 'LineWidth', 3);
    title(sprintf('t = %f', i * dt));
    grid on;
    ylim([-1, 1]);
    xlabel('x'); ylabel('u');
    subplot(1,2,2);
    contourf(x, dt * [0:nt], u, 30);
    colorbar;
    axis tight;
    xlabel('x'); ylabel('t');
    refresh;
    pause(0.01);
end