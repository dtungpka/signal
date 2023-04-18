%rectangular pulse


%t = sin( size(T) );
%t = ((abs(T) > 1/2 )* 0);
%t = t + ((abs(T) < 1/2) * 1);
%t = t + ((abs(T) == 1/2) * 0.5 );
T = linspace(-10,10,1000);
t = (T >= 0);
width = 2
t1 = ((abs(T) > width) .* 0);
t1 = t1 + ((abs(T) < width) .* 1);
t1 = t1 + ((abs(T) == width) .* 0.5 );

t2 = (T >= 0) .* T/100 ;
x0 = 2;
a= 0.5; p = 10;
t3 = (4 * a / p) .* abs(mod((T - p/4) , p) - (p/2)) - a/2;
t3 = (abs(T) <= x0) .* t3;
subplot(2,1,1);
plot(T,t);
subplot(2,1,2);
plot(T,t1);
subplot(2,1,3);
plot(T,t2);
subplot(2,1,4);
plot(T,t3);


