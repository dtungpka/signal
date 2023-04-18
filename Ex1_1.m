shift = input("Enter shifted value:")

T = linspace(-10,10,1000);
T1  = linspace(-10 + shift,10 + shift,1000);
t = (T >= 0);
t1 = (T1 + shift >= 0);
subplot(2,2);
subplot(T,t,T1,t1);grid;
ylabel("Xung cchu nhat p6(t)")
xlabel("t")

