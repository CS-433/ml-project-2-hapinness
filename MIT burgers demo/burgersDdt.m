function dudt = burgersDdt( t, u )
    n = length(u);
    dx = 3 / n;
    fc = 0.5 * u.^2;
    fb = 0.5 * (fc(1:end-1) + fc(2:end));
    a  = max(abs(u(1:end-1)), abs(u(2:end)));
    d = u(1:end-1) - u(2:end);
    L = 2 * d(1:end-2) .* abs(d(3:end)) ./ (abs(d(1:end-2)) + abs(d(3:end)) + 1E-8);
    L(d(1:end-2) .* d(3:end) <= 0) = 0;
    d(2:end-1) = d(2:end-1) - L;
    fd = 0.5 * a .* d;
    fb = [0; fb + fd; 0];
    if u(1) < 0 fb(1) = fc(1); end
    if u(end) > 0 fb(end) = fc(end); end
    dudt = (fb(1:end-1) - fb(2:end)) / dx;
end