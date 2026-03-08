clc;
clear;

fs = 16000;
recObj = audiorecorder(fs,16,1);

disp("Speak ON or OFF");
recordblocking(recObj,3);

audioData = getaudiodata(recObj);
text = speech2text(audioData, fs);

disp("Recognized:");
disp(text);

s = serialport("CNCA1",9600);
pause(2);

if contains(lower(text),"on")
    writeline(s,"ON");
    disp("Command: ON sent");
elseif contains(lower(text),"off")
    writeline(s,"OFF");
    disp("Command: OFF sent");
else
    disp("Unknown command");
end

clear s;
