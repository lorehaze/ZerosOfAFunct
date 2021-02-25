% Formula di Cavalieri Simpson composita
% --------------------------------------
% considero l'intervallo [a,b]
% ed m sottointervalli di ampiezza h

% assumiamo che la funzione integranda sia la effe
% 	e che in questo esercizio sia: effe = sin(x)
% utilizzo il comando fcnchk così da trattare effe come una funzione
%	a tutti gli effetti
effe = fcnchk('sin(x)'); 
% 	consideriamo l'intervallo [a,b] = [0,pi]
a = 0; b = pi;

% l'integrale esatto di effe nell'intervallo definito vale 2
intEs = 2;

% chiedo ora di inserire il valore da attribuire ad m
%	(vale la pena poi ripetere l'esecuzione dell'esercizio
%	 per diversi valori, come: 4,8,16,32 o 10,100,1000
m = input('m='); 
% ora ho tutte le informazioni necessarie per calcolarmi h
h = (b-a)/m;

% utilizzo la funzione linspace per generare un vettore x
% 	con 'm+1' elementi compresi tra 'a' e 'b'
x = linspace(a,b,m+1); 
% calcolo la funzione nei punti appena individuati
y = effe(x);

% adesso applichiamo la formula di Cavalieri Simpson composita
%	per vedere quanto buona risulta l'approssimazione
%     A       B            C            D
%    ----   ------   --------------  --------
z = (y(1) + y(m+1) + 2*sum(y(2:m)) + 4*sum(m)) * h/6;
% spieghiamo a cosa corrispondono le varie parti:
% A = f(a)
% B = f(b)
% C = 2 * sommatoria (per le i che vanno da 2 ad m) di f(a_i)
% D = 4 * sommatoria (per tutte le i) di f(a_i)

% confronto ora la soluzione esatta con quella approssimata
% trovo prima l'errore esatto
err = abs(intEs - z);

% poi la stima dell'errore usando la formula asintotica
%	per il calcolo dell'errore dei trapezi compositi
% devo trovare prima la derivata di effe
effe1 = fcnchk('cos(x)');
% quindi applico la formula asintotica
stima = abs(h*h / 12*(effe1(a)-effe1(b)));

% printo tutti i risultati
fprintf('m=%3d\t z=%8.5f \t err=%12.6e \t stima=%12.6e \n',m,z,err,stima);