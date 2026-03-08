%sound(audioData, fs);   % optional

fs = 16000;
recObj = audiorecorder(fs, 16, 1);

disp("Say a command (ON / OFF / START / STOP)");
recordblocking(recObj, 3);

audioData = getaudiodata(recObj);

% Speech to text
text = speech2text(audioData, fs);

disp("Recognized text:");
disp(text);
