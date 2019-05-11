






%cliente(nombre, ciudad, calificacion-credito).

cliente(claudia, nochistlan, 5).
cliente(deysi, jerez, 4).
cliente(luis, jerez, 2).
cliente(luis_gerardo, ermita_guadalupe, 3).
cliente(gerardo, jerez, 4).
cliente(david, zacatecas, 2).

%articulos(clave, descripcion, limite_existencia).
articulos(a1, computadora, 15).
articulos(a2, raton_alambrico, 10).
articulos(a3, proyector, 10).
articulos(a4, adaptador_vga, 10).
articulos(a5, raton_inalambrico, 5).
articulos(a6, memoria_usb, 5).
articulos(a7, disco_externo, 5).
%articulos(Clave,Descripcion,5).
%articulos(Clave,Descripcion,_). con el guin bajo es para mostrar todos los elemnetos que tengan 3 datos
%en este caso no importa el tercer elemnto y no se mostrara con _

%inventario(clave, existencias).
inventario(a1, 32).
inventario(a2, 4).
inventario(a3, 5).
inventario(a4, 64).
inventario(a5, 12).
inventario(a6, 10).
inventario(a7, 89).


%crear una regla que muestre a los clientes de jerez
clientes_jerez(Nombre, Lugar) :- cliente(Nombre, jerez, _).
%Nombre = deysi :-;
%Nombre = luis |;
%Nombre = gerardo.
%mostrar lo clientes con calificacion de 5
clientes_calificacion(N, L, C) :- cliente(N,L,5).
%N = claudia,
%L = nochistlan.

%mostrar un listado con el nombre del producto  y su existencia
productos(N, E) :- articulos(C, N, _) , inventario(C, E).
%N = computadora,
%E = 32 :-;
%N = raton_alambrico,
%E = 4 |;
%N = proyector,
%E = 5 |;
%N = adaptador_vga,
%E = 64 |;
%N = raton_inalambrico,
%E = 12 |;
%N = memoria_usb,
%E = 10 |;
%N = disco_externo,
%E = 89.
%3Encontrar los clientes en una ciudad determinada con una calificacion de credito determinada.
clientes_ciudad(N, L, C) :- cliente(N, jerez, 4).
%N = deysi :-;
%N = gerardo.
%4Encuentre la cantiad de limite en existencias para cadad articulo dado.
existencia(C,D,E) :- articulos(_, D, E).
%D = computadora,
%E = 15 :-;
%D = raton_alambrico,
%E = 10 |;
%D = proyector,
%E = 10 |;
%D = adaptador_vga,
%E = 10 |;
%D = raton_inalambrico,
%E = 5 |;
%D = memoria_usb,
%E = 5 |;
%D = disco_externo,
%E = 5.
%5 Encuentre el numero de articulos para un nombre de atrticulo determinado
numero_articulo(A, N) :- articulos(A, proyector, _).
%A = a3.
% 6 Encuentre el nivel del inventario para un numero de articulo dado.
nivel_inventario(C, N, E) :- articulos(a5, N, _) , inventario(a5, E).
%N = raton_inalambrico,
%E = 12.
%7 Crear una regla que ayude a mostrar la cantidad de articulos que hay para cada articulo
total_articulos(C, N, E) :- articulos(C, N, _) , inventario(C, E).
%C = a1,
%N = computadora,
%E = 32 :-;
%C = a2,
%N = raton_alambrico,
%E = 4 |;
%C = a3,
%N = proyector,
%E = 5 |;
%C = a4,
%N = adaptador_vga,
%E = 64 |;
%C = a5,
%N = raton_inalambrico,
%E = 12 |;
%C = a6,
%N = memoria_usb,
%E = 10 |;
%C = a7,
%N = disco_externo,
%E = 89.
