% TRABAJO PRACTICO N.° 1 - Algebra lineal

clear; clc; format compact;
% ACTIVIDAD 1


fprintf('\n============================================================\n');
fprintf('                     ACTIVIDAD 1\n');
fprintf('============================================================\n');
fprintf('Una empresa textil tiene cuatro proveedores de diferentes paises.\n');
fprintf('Las cantidades de rollos de tela se representan en la siguiente tabla:\n\n');
fprintf('%-14s %8s %8s %10s %8s\n', 'Tipo de tela', 'Chile', 'Brasil', 'Colombia', 'Francia');
fprintf('%s\n', repmat('-', 1, 54));
fprintf('%-14s %8d %8d %10d %8d\n', 'Licra', 7, 0, 15, 4);
fprintf('%-14s %8d %8d %10d %8d\n', 'Terciopelo', 6, 12, 8, 9);
fprintf('%-14s %8d %8d %10d %8d\n\n', 'Tul', 6, 9, 1, 17);
A = [7 0 15 4; 6 12 8 9; 6 9 1 17];
printf('Actividades: a) Construir la matriz A a partir de la tabla. b) Interpretar a31 y a13 y comparar sus significados. c) Actualizar las existencias mediante una suma matricial.\n');
fprintf('\nResolucion de la ACTIVIDAD 1\n');
fprintf('a) Construimos A colocando las telas en las filas y los paises en las columnas.\n');
fprintf('Cada elemento A(i,j) representa la cantidad de rollos de la fila i y columna j.\n');
disp('Matriz A ='); disp(A);
fprintf('A tiene %d filas y %d columnas, por lo tanto es una matriz %dx%d.\n', size(A,1), size(A,2), size(A,1), size(A,2));

fprintf('\nb) Interpretamos los subindices de la matriz.\n');
fprintf('En A(i,j), el primer indice indica la fila y el segundo la columna.\n');
fprintf('a31 = A(3,1) = %g: fila 3 (Tul), columna 1 (Chile).\n', A(3,1));
fprintf('a13 = A(1,3) = %g: fila 1 (Licra), columna 3 (Colombia).\n', A(1,3));
fprintf('Aunque ambos elementos usan los numeros 1 y 3, el orden es distinto; por eso no representan lo mismo.\n');

fprintf('\nc) Representamos los nuevos rollos en otra matriz del mismo tamano.\n');
actualizacion = zeros(3,4);
actualizacion(2,4) = 3; % Se agregan 3 rollos de terciopelo de Francia.
actualizacion(3,3) = 5; % Se agregan 5 rollos de tul de Colombia.
disp('Matriz de actualizacion ='); disp(actualizacion);
fprintf('Los ceros indican que en las demas posiciones no hubo cambios.\n');

fprintf('\nLuego, sumamos A con la matriz de actualizacion posicion por posicion.\n');
fprintf('Por ejemplo: A(2,4)+actualizacion(2,4) = %g + %g = %g.\n', A(2,4), actualizacion(2,4), A(2,4)+actualizacion(2,4));
fprintf('Y: A(3,3)+actualizacion(3,3) = %g + %g = %g.\n', A(3,3), actualizacion(3,3), A(3,3)+actualizacion(3,3));
A_actualizada = A + actualizacion;
disp('A_actualizada = A + matriz de nuevos rollos ='); disp(A_actualizada);
fprintf('Las posiciones sin nuevos rollos permanecen iguales; solo cambian A(2,4) y A(3,3).\n');

% ACTIVIDAD 2


fprintf('\n============================================================\n');
fprintf('                     ACTIVIDAD 2\n');
fprintf('============================================================\n');
fprintf('Resuelva los siguientes ítems:\n');
fprintf('a. Escriba explícitamente una matriz definida as\xED:\n');
fprintf('B ∈ R^(2x3) tal que b_ij = -1 si i = j, b_ij = 3*i - j si i < j, y b_ij = 0 si i > j.\n');
fprintf('b. ¿A qué tipo de matriz corresponde la matriz anterior?\n');

B2 = zeros(2,3);
for i = 1:2
    for j = 1:3
        if i == j
            B2(i,j) = -1;
        elseif i < j
            B2(i,j) = 3*i - j;
        else
            B2(i,j) = 0;
        end
    end
end

disp('a) B =');
disp(B2);
fprintf('b) Es una matriz rectangular (2x3) y, en la zona de elementos definidos, es triangular superior porque hay ceros por debajo de la diagonal principal.\n');

% ACTIVIDAD 3


fprintf('\n============================================================\n');
fprintf('                     ACTIVIDAD 3\n');
fprintf('============================================================\n');
fprintf('Primero identificamos el orden y los tipos de cada matriz.\n');
fprintf('Luego verificamos que las operaciones esten definidas por sus dimensiones\n');
fprintf('y, finalmente, calculamos cada expresion paso a paso.\n\n');

A = [0 -1 3; 1 0 -2; -3 2 0];
B = [-1 0 0; 0 -1 0];
C = zeros(3);
D = -eye(3);
E = [2; -1];
F = [4 -2 0 -1; -2 1 1 -3; 0 1 0 5; -1 -3 5 2];
G = [0; 2; -1];
fprintf('a) Representacion de las matrices y sus dimensiones:\n');
disp('A ='); disp(A);
fprintf('A pertenece a R^(3x3).\n');
disp('B ='); disp(B);
fprintf('B pertenece a R^(2x3).\n');
disp('C ='); disp(C);
disp('D ='); disp(D);
fprintf('C y D pertenecen a R^(3x3).\n');
disp('E ='); disp(E);
disp('F ='); disp(F);
disp('G ='); disp(G);
fprintf('E pertenece a R^(2x1), G a R^(3x1) y F a R^(4x4).\n\n');

fprintf('b) Clasificacion de las matrices:\n');
fprintf('- A es antisimetrica, porque A'' = -A.\n');
fprintf('- B es rectangular; no es triangular porque no es cuadrada.\n');
fprintf('- C es nula, diagonal, escalar, simetrica y antisimetrica.\n');
fprintf('- D es diagonal, triangular superior e inferior, escalar y simetrica.\n');
fprintf('- E y G son matrices columna.\n');
fprintf('- F es simetrica, porque F'' = F.\n\n');

fprintf('c) Resolucion de las operaciones:\n');
fprintf('1) 2A + C - D =\n');
disp(2*A+C-D);
fprintf('2) C*D - G no esta definida: C*D es 3x3 y G es 3x1,\n');
fprintf('   por lo tanto no se pueden restar.\n');
fprintf('3) E''*B*G =\n');
disp(E'*B*G);
fprintf('4) B*A =\n');
disp(B*A);

% ACTIVIDAD 4


fprintf('\n============================================================\n');
fprintf('                     ACTIVIDAD 4\n');
fprintf('============================================================\n');
fprintf('Dada la matriz A = [0 d 8; 12 0 2a+b; a-b 4 c].\n');
fprintf('Para comparar matrices usamos A'' = A (simetrica) o A'' = -A (antisimetrica).\n\n');

fprintf('a) A simetrica: A(i,j) = A(j,i).\n');
fprintf('Igualamos los elementos simetricos:\n');
fprintf('d = 12, 8 = a - b, 2a + b = 4.\n');
fprintf('De a - b = 8 y 2a + b = 4 se obtiene 3a = 12, por lo tanto a = 4 y b = -4.\n');
fprintf('El elemento c puede ser cualquier numero real.\n');
fprintf('Resultado: a = 4, b = -4, d = 12 y c libre.\n\n');

fprintf('b) A antisimetrica: A(i,j) = -A(j,i).\n');
fprintf('Los elementos de la diagonal deben ser cero: c = 0.\n');
fprintf('Igualamos los elementos opuestos:\n');
fprintf('d = -12, 8 = -(a - b), 2a + b = -4.\n');
fprintf('Entonces a - b = -8 y 2a + b = -4; de aqui 3a = -12.\n');
fprintf('Por lo tanto a = -4, b = 4, c = 0 y d = -12.\n');

% ACTIVIDAD 5


fprintf('\n============================================================\n');
fprintf('                     ACTIVIDAD 5\n');
fprintf('============================================================\n');
fprintf('Dadas las matrices A, B y C, resolvemos cada inciso verificando las dimensiones.\n\n');
A5 = [-2 2 0; -1 0 0; 1 0 3];
B5 = [1 3 0; 0 4 -1];
C5 = [0 3; 0 -3; 2 0];

fprintf('a) Encontrar X tal que C^t + 2X = BA.\n');
fprintf('Despejamos: 2X = BA - C^t, por lo tanto X = (BA - C^t)/2.\n');
BA5 = B5*A5;
C5t = C5';
disp('BA ='); disp(BA5);
disp('C^t ='); disp(C5t);
X = (BA5 - C5t)/2;
disp('X = (BA - C^t)/2 ='); disp(X);

fprintf('b) D = (CB)^t - 2A. Se solicita solamente d23 y la fila f2.\n');
D5 = (C5*B5)' - 2*A5;
CB5 = C5*B5;
disp('CB ='); disp(CB5);
disp('(CB)^t - 2A = D ='); disp(D5);
fprintf('b) d23 = %g\n', D5(2,3));
fprintf('   fila f2 = '); disp(D5(2,:));

fprintf('c) E = (1/2)(B^t C^t + A). Se solicita solamente la columna c3.\n');
E5 = (B5'*C5' + A5)/2;
disp('Columna c3 de E ='); disp(E5(:,3));

% ACTIVIDAD 6


% La imagen se encuentra en la misma carpeta que este script.
% Se construye la ruta completa para no depender de la carpeta actual.
carpeta_script = fileparts(mfilename('fullpath'));
nombre_imagen = fullfile(carpeta_script, 'imagen.jpg');

fprintf('\n============================================================\n');
fprintf('                     ACTIVIDAD 6\n');
fprintf('============================================================\n');
fprintf('Imagen proporcionada:\n\n');
if exist(nombre_imagen, 'file') == 2
    imagen = imread(nombre_imagen);
    figure('Name', 'Actividad 6 - Imagen', 'NumberTitle', 'off', ...
           'Color', 'white');
    image(imagen);
    axis image off;
    title('Imagen de la actividad 6');
else
    fprintf('No se encontro la imagen en:\n%s\n', nombre_imagen);
end

fprintf('\nRESOLUCION\n');
fprintf('ENUNCIADO:\n');
fprintf('Una viga elastica horizontal tiene soportes en cada extremo y esta sometida a fuerzas en los puntos 1, 2 y 3.\n');
fprintf('El vector f enumera las fuerzas aplicadas y el vector y enumera las magnitudes de flexion de la viga.\n');
fprintf('Por la ley de Hooke, las flexiones se obtienen mediante y = D*f, donde D es la matriz de flexibilidad.\n');
fprintf('Las fuerzas aplicadas son 20, 40 y 10 libras en los puntos 1, 2 y 3, respectivamente.\n\n');
fprintf('COMO SE RESUELVE:\n');
fprintf('Multiplicamos la matriz de flexibilidad por el vector de fuerzas, fila por fila:\n');
fprintf('y1 = 0.005(20) + 0.002(40) + 0.001(10)\n');
fprintf('y2 = 0.002(20) + 0.004(40) + 0.002(10)\n');
fprintf('y3 = 0.001(20) + 0.002(40) + 0.005(10)\n\n');
D6 = [0.005 0.002 0.001; 0.002 0.004 0.002; 0.001 0.002 0.005];
f = [20; 40; 10];
disp('Matriz D ='); disp(D6);
disp('Vector de fuerzas f ='); disp(f);
y = D6*f;
disp('Flexiones y = D*f (pulgadas) ='); disp(y);
fprintf('Por lo tanto, las flexiones correspondientes son y = [0.195; 0.220; 0.150] pulgadas.\n');
