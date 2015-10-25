function [ output_args ] = laser_subscriber(src, msg)
%LASER_SUBSCRIBER Lazer datalarinin alicisi
%   simdilik sadece cizim
    %plot(msg.Ranges)
    %fft_al(msg.Ranges);   
    wname = 'db2';
    scales = 10:1:60;
    scales2 = 2;
    scales3 = 50:1:60;
    
     array=msg.Ranges;
%     figure(1)
%     
%     subplot(2,1,1)
%     plot(array)
%     
%     sinyal=diff(array,2);
%     subplot(2,1,2)
%     plot(sinyal)

   
     sinyal=diff(array,2);
     
%     figure(1)
%     coefs = cwt(sinyal,scales,wname);
%     wscalogram('image',coefs,'scales',scales,'ydata',sinyal);
    
%     figure(2)
%     coefs2 = cwt(sinyal,scales2,wname);
%     wscalogram('image',coefs2,'scales',scales2,'ydata',sinyal);
    
     
    
%             [ca1,cd1] = dwt(sinyal,'db2');
%             [ca2,cd2] = dwt(ca1,'db2');
%             [ca3,cd3] = dwt(ca2,'db2');
%             [ca4,cd4] = dwt(ca3,'db2');
%             son=resample(cd4,length(sinyal),length(cd4));
%             plot(son);
       
sinyal=double(sinyal);
      figure(3)
subplot(2,1,1)       
plot(sinyal);
    [ca1,cd1] = dwt(sinyal,'db2');
    [ca2,cd2] = dwt(ca1,'db2');
    [ca3,cd3] = dwt(ca2,'db2');
    [ca4,cd4] = dwt(ca3,'db2');
son=resample(cd4,length(sinyal),length(cd4));
subplot(2,1,2)
plot(son);

%     coefs3 = cwt(sinyal,scales3,wname);
%     wscalogram('image',coefs3,'scales',scales3,'ydata',sinyal);
    %plot(coefs2)
    
    

end

