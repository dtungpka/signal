clear; clc; close all;
recorder = audiorecorder(8000, 16, 1);
Data = 0
disp('Start speaking.')
length_ = 5;

while length_ > 0
    recordblocking(recorder, 0.5);
    length_ = length_ - 0.5;
    data = getaudiodata(recorder);
    Data = [Data; data];
    plot(Data);
    drawnow;
end
disp('End speaking')
audiowrite('test.wav', Data, 8000);
play(recorder);

