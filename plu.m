function [p,L,U] = plu (A)
%
% function [p,L,U] = plu (A)
%% Esegue la decomposizione LU mediante l'algoritmo di 
%% eliminazione di Gauss con pivoting parziale 
% Input: matrice A nxn non singolare
% Output: 
% matrice L nxn triangolare inferiore 
% matrice U nxn triangolare superiore
% P è il vettore che contiene gli indici di permutazione delle righe.

n = size(A,1);
% Inizializzare il vettore di permutazione p
p = 1:n;
% decomposizione LU con pivoting parziale
for k = 1:n-1
    % trovo l'indice di riga relativo al valore massimo nella colonna k_esima
    [~,q] = max(abs(A(k:n,k)));
    q = q + k-1;
    % scambio la riga k-esima con quella q-esima e aggiorno il vettore p delle permutazioni
    A([k,q],:)=A([q,k],:);
    p([k,q])=p([q,k]);
    % calcolo la corrispondente colonna di L
    J=k+1:n;
    L=eye(n);
    L(J,k) = A(J,k)/A(k,k);
    % aggiorno la sottomatrice
    A(J,J) = A(J,J) - L(J,k) * A(k,J);
end
U=triu(A);