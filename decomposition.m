[ca1,cd1] = dwt(sinyal,'db2');
[ca2,cd2] = dwt(ca1,'db2');
[ca3,cd3] = dwt(ca2,'db2');
[ca4,cd4] = dwt(ca3,'db2');
subplot(2,1,1)
plot(sinyal)
subplot(2,1,2)
plot(cd4)
