close all;
% x=[7;17;8;36;23;19;17;2;5];
% 
% y=[25;0;11;-26;-2;-18;8;26;35];

x=[12;11.5;11;12;10.5;10;9;8.5;10;8.5];

y=[130;165;150;150;140;185;180;215;225;190];

i=length(x);

j=length(y);

[a0,a1,residuo] = minquad(x,y)

% figure(1);
% hold on;
% title('Points');
% xlabel('Xi points');
% ylabel('Yi points');
% 
% for k=1:i
%     plot(x(k),y(k),'.');
% end
% 
% plot(x,y,'k--');

%%%%%%%%%%%%
a=8.5;
b=12;
% valutazione coeff. dell'approssimante ai minimi ... quadrati
% "p_n" di "f" di grado "1"
coeff=polyfit(x,y,1);
% valore "p_1" nelle ascisse "x"
z=polyval(coeff,x);
% errore ||f-p_1||_2
err2=norm(z-y,2);
fprintf('\n \t Errore regressione norma2: %1.2e',err2);
% grafico del polinomio ai minimi quadrati di grado "1"
ht=1/10000; u=a:ht:b; v=polyval(coeff,u);
clf;
% plot punti 
plot(x,y,'go','LineWidth',1,...
'MarkerEdgeColor','k',...
'MarkerFaceColor','g',...
'MarkerSize',10);
hold on;
% plot retta regressione 
plot(u,v,'k-','LineWidth',2);

% titoli e legenda
title('Regressione lineare'); 
legend('Punti','Retta di regressione') 
legend();
hold off;
fprintf('\n \n');
