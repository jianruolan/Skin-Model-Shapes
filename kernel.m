%主函数
function g = kernel(m, n, u, v)

g = (2 / ((20 * 10)^0.5)) * C(u) * C(v) * cos((2 * m + 1) * u * pi / 2 / 20)...
    .* cos((2 * n +1) * v * pi / 2 / 10);
end

%局部函数
function c = C(u)
if u == 0
    c = (1/2)^0.5;
else
    c = 1;
end
end