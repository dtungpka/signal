% Dịch và co giãn thời gian của các tín hiệu được cho sau đây, với thời gian t = 0: 0.1: 6.28. 
%1. 𝑦1(𝑡)=sin(𝑡); 𝑦2(𝑡)=sin(2𝑡); 𝑦3(𝑡)=sin(5𝑡). Biểu diễn 3 tín hiệu này trên cùng một hình, sử dụng câu lệnh: plot(t, y1, 'o', t, y2, '-', t, y3)
%2. sin(4(𝑡−1)),sin(2𝑡−3) Giải thích kết quả đạt được ở 2 hình vẽ bài 3.1 và 3.2.
%3. 𝑒−∝𝑡sin(∝𝑡) với ∝ = 0.1, 1, 5. Sử dụng “.*” để nhân hai tín hiệu. Đưa ra nhận xét về phép co giãn thời gian trên tín hiệu đã vẽ.
offset_x = 0;
offset_y = 0;
scale_ = 0.1;

t = 0 + offset_x: 0.1: 6.28 + offset_x;
c = size(t) * scale_;
t = size(t) ./ c;
y1 = sin(t).*scale_ + offset_y;
y2 = sin(2.*t) .*scale_ + offset_y;
y3 = sin(5.*t) .*scale_ + offset_y;

plot(t, y1, 'o', t, y2,'.', '-', t, y3)