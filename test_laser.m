clear
clc
close all

load('baran2')
laser=rossubscriber('/r1/front_laser/scan')

scandata=receive(laser,10)

plot(scandata.Ranges)

array=scandata.Ranges;

sinyal=diff(array,2);

scales2 = 2;
%scales2 =10:1:60;
wname = 'db2';
coefs2 = cwt(sinyal,scales2,wname);
wscalogram('image',coefs2,'scales',scales2,'ydata',sinyal);

% figure()
% plot(coefs2)
%db2 fena deil