function [ output_args ] = laser_subscriber(src, msg)
%LASER_SUBSCRIBER Lazer datalarinin alicisi
%   simdilik sadece cizim
    %plot(msg.Ranges)
    %fft_al(msg.Ranges);   
    wname = 'db2';
    scales = 10:1:60;
    scales2 = 2;
    scales3 = 20:1:22;
    
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
      load('dalga')
     figure(2)
     coefs2 = cwt(sinyal,scales2,dalga);
     wscalogram('image',coefs2,'scales',scales2);

       
sinyal=double(sinyal);

% figure(3)
% subplot(2,1,1)       
% plot(sinyal);


% subplot(2,1,2)
% surf(coefs2)

%     coefs3 = cwt(sinyal,scales3,wname);
%     wscalogram('image',coefs3,'scales',scales3,'ydata',sinyal);
    
    
    for a=1:350
    sonuc(a)=corr(sinyal(a:a+4),dalga);
    end
    
    figure(4)
    subplot(2,1,1)
    plot(sinyal)
    subplot(2,1,2)
    plot(sonuc)


end

