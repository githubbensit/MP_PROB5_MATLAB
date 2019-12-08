n = 0:1:199;
func = input('PLEASE INPUT THE FUNCTION sin((3*pi*n)/100) FOR TEST: ');
x = func;
for i = 1:200
    if n(i) == 0
        y(i) = -1.5*x(i) + 2*x(i+1) - 0.5*x(i+2);
        
    elseif (n(i) > 0) && (n(i) <= 198)
        y(i) = 0.5*x(i+1) - 0.5*x(i-1);
    elseif n(i) == 199
        y(i) = 1.5*x(i) - 2*x(i-1) + 0.5*x(i-2);
    end
end
plot(n,x,'c')
hold on
plot(n,y,'m')
legend('x(n)','y(n)')
xlabel('x-axis')
ylabel('y-axis')
title('x(n) and y(n) graph')