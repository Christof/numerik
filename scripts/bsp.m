f = @(x) sin(2 * pi * x);
x_gl = @(n) -1 + 2 * (0:n) / n;


x_gl = x_gl(20);
'Gleichverteilte Koeffizienten für n = 20: '
coeff_gl = polyfit(x_gl, f(x_gl), 20);

f_dist = f(x_gl);
f_dist(9) = f_dist(9) + 0.001;
coeff_gl_dist = polyfit(x_gl, f_dist, 20)


xs = -1:0.001:1;
h = figure;
hold on;
plot(xs, f(xs), 'g');

plot(x_gl, f(x_gl), 'rx');
plot(xs, polyval(coeff_gl, xs), 'r--');

plot(xs, polyval(coeff_gl_dist, xs), 'b--');

title('Interpolation mit 21 Stuetzstellen');
legend('Gegebene Funktion', 'Stuetzstellen', ...
    'p_{20}', 'p_{20}^S');
hold off;
print(h, '-dpng', '-r100', '../figures/interpolation_stoerung.png');