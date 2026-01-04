program colas_ej4;

uses uColaInteger, math;

function bool_to_str(b: boolean): string;
begin
    if b then
        bool_to_str := 'bien.'
    else
        bool_to_str := 'mal.';
end;

{
    Ejercicio 4.1: Sumar colas del mismo tamaño

    Desarrollar un subprograma que reciba dos colas de enteros con el mismo
    número de elementos y devuelva una nueva cola con la suma de los elementos
    de las colas originales.

    Las dos colas recibidas deben quedar en el mismo estado.

    Entradas: dos colas de enteros
    Salida: una cola de enteros con la suma de los elementos de las colas originales

    Ejemplos:
        - (cola1: [1, 2, 3], cola2: [4, 5, 6]) => [5, 7, 9]
        - (cola1: [1, 2], cola2: [4, 5]) => [5, 7]

}
procedure sumar_colas_1(c1, c2: tCola; var c3: tCola);
var

begin
    // Implemetar el ejercicio aquí
end;


{
    Ejercicio 4.2: Sumar colas de diferente tamaño

    Desarrollar un subprograma que reciba dos colas de enteros con el mismo
    número de elementos y devuelva una nueva cola con la suma de los elementos
    de las colas originales.

    Las dos colas recibidas deben quedar en el mismo estado.

    Entradas: dos colas de enteros
    Salida: una cola de enteros con la suma de los elementos de las colas originales

    Ejemplos:
        - (cola1: [1, 2, 3], cola2: [4, 5]) => [5, 7, 3]
        - (cola1: [1, 2], cola2: [4, 5, 6]) => [5, 7, 6]

}
procedure sumar_colas_2(c1, c2: tCola; var c3: tCola);
var

begin
    // Implemetar el ejercicio aquí
end;


procedure crear_cola_1(var c: tCola);
begin
    initialize_queue(c);
    enqueue(c, 1);
    enqueue(c, 2);
    enqueue(c, 3);
end;

procedure crear_cola_2(var c: tCola);
begin
    initialize_queue(c);
    enqueue(c, 4);
    enqueue(c, 5);
    enqueue(c, 6);
end;

procedure crear_cola_3(var c: tCola);
begin
    initialize_queue(c);
    enqueue(c, 1);
    enqueue(c, 2);
end;

procedure crear_cola_4(var c: tCola);
begin
    initialize_queue(c);
    enqueue(c, 4);
    enqueue(c, 5);
end;

procedure crear_cola_5(var c: tCola); // Cola para test Ejercicio 4.2
begin
    initialize_queue(c);
    enqueue(c, 1);
    enqueue(c, 2);
    enqueue(c, 3);
end;

procedure crear_cola_6(var c: tCola); // Cola para test Ejercicio 4.2
begin
   initialize_queue(c);
    enqueue(c, 4);
    enqueue(c, 5);
end;

procedure crear_cola_7(var c: tCola); // Cola para test Ejercicio 4.2
begin
    initialize_queue(c);
    enqueue(c, 1);
    enqueue(c, 2);
end;

procedure crear_cola_8(var c: tCola); // Cola para test Ejercicio 4.2
begin
    initialize_queue(c);
    enqueue(c, 4);
    enqueue(c, 5);
    enqueue(c, 6);
end;


procedure crear_cola_suma_1(var c: tCola);
begin
    initialize_queue(c);
    enqueue(c, 5);
    enqueue(c, 7);
    enqueue(c, 9);
end;

procedure crear_cola_suma_2(var c: tCola);
begin
    initialize_queue(c);
    enqueue(c, 5);
    enqueue(c, 7);
end;

procedure crear_cola_suma_3(var c: tCola);
begin
    initialize_queue(c);
    enqueue(c, 5);
    enqueue(c, 7);
    enqueue(c, 3); // Incorrecto para sumar_colas_1, corregido en test
end;

procedure crear_cola_suma_4(var c: tCola);
begin
    initialize_queue(c);
    enqueue(c, 5);
    enqueue(c, 7);
    enqueue(c, 6); // Incorrecto para sumar_colas_1, no usado en test corregido
end;

procedure crear_cola_suma_5(var c: tCola); // Cola suma correcta Ejercicio 4.2 - Test 1
begin
    initialize_queue(c);
    enqueue(c, 5);
    enqueue(c, 7);
    enqueue(c, 3);
end;

procedure crear_cola_suma_6(var c: tCola); // Cola suma correcta Ejercicio 4.2 - Test 2
begin
    initialize_queue(c);
    enqueue(c, 5);
    enqueue(c, 7);
    enqueue(c, 6);
end;


procedure test_sumar_colas_ej_4_1();
var
    c1, c2, c3, cCorrecta: tCola;
    resultado, c1Ini, c2Ini: string;
begin
    WriteLn('Ejercicio 4.1: Sumar colas del mismo tamaño');

    // Test 1 para Ejercicio 4.1
    crear_cola_1(c1); // c1 = [1, 2, 3]
    c1Ini := toString(c1);
    crear_cola_2(c2); // c2 = [4, 5, 6]
    c2Ini := toString(c2);
    crear_cola_suma_1(cCorrecta); // cCorrecta = [5, 7, 9]
    WriteLn('  Colas a sumar: c1 = ', toString(c1), ', c2 = ', toString(c2)); // Imprimir colas a sumar
    sumar_colas_1(c1, c2, c3);   // c3 = suma de c1 y c2
    resultado := toString(c3);
    WriteLn('  Test 1 (Ej 4.1): Resultado = ', resultado, ', Correcto = ', toString(cCorrecta) , ' El ejercicio funciona ', bool_to_str(resultado = toString(cCorrecta)));
    WriteLn('  Estado colas iniciales sin modificar: ',  bool_to_str((c1Ini = toString(c1)) and (c2Ini = toString(c2))));

    // Test 2 para Ejercicio 4.1
    crear_cola_3(c1); // c1 = [1, 2]
    c1Ini := toString(c1);
    crear_cola_4(c2); // c2 = [4, 5]
    c2Ini := toString(c2);
    crear_cola_suma_2(cCorrecta); // cCorrecta = [5, 7]
    WriteLn('  Colas a sumar: c1 = ', toString(c1), ', c2 = ', toString(c2)); // Imprimir colas a sumar
    sumar_colas_1(c1, c2, c3);   // c3 = suma de c1 y c2
    resultado := toString(c3);
    WriteLn('  Test 2 (Ej 4.1): Resultado = ', resultado, ', Correcto = ', toString(cCorrecta) , ' El ejercicio funciona ', bool_to_str(resultado = toString(cCorrecta)));
    WriteLn('  Estado colas iniciales sin modificar: ',  bool_to_str((c1Ini = toString(c1)) and (c2Ini = toString(c2))));

end;


procedure test_sumar_colas_ej_4_2();
var
    c1, c2, c3, cCorrecta: tCola;
    resultado, c1Ini, c2Ini: string;
begin
    WriteLn('Ejercicio 4.2: Sumar colas de diferente tamaño');

    // Test 1 para Ejercicio 4.2
    crear_cola_5(c1); // c1 = [1, 2, 3]
    c1Ini := toString(c1);
    crear_cola_6(c2); // c2 = [4, 5]
    c2Ini := toString(c2);
    crear_cola_suma_5(cCorrecta); // cCorrecta = [5, 7, 3]
    WriteLn('  Colas a sumar: c1 = ', toString(c1), ', c2 = ', toString(c2)); // Imprimir colas a sumar
    sumar_colas_2(c1, c2, c3);   // c3 = suma de c1 y c2
    resultado := toString(c3);
    WriteLn('  Test 1 (Ej 4.2): Resultado = ', resultado, ', Correcto = ', toString(cCorrecta) , ' El ejercicio funciona ', bool_to_str(resultado = toString(cCorrecta)));
    WriteLn('  Estado colas iniciales sin modificar: ',  bool_to_str((c1Ini = toString(c1)) and (c2Ini = toString(c2))));


    // Test 2 para Ejercicio 4.2
    crear_cola_7(c1); // c1 = [1, 2]
    c1Ini := toString(c1);
    crear_cola_8(c2); // c2 = [4, 5, 6]
    c2Ini := toString(c2);
    crear_cola_suma_6(cCorrecta); // cCorrecta = [5, 7, 6]
    WriteLn('  Colas a sumar: c1 = ', toString(c1), ', c2 = ', toString(c2)); // Imprimir colas a sumar
    sumar_colas_2(c1, c2, c3);   // c3 = suma de c1 y c2
    resultado := toString(c3);
    WriteLn('  Test 2 (Ej 4.2): Resultado = ', resultado, ', Correcto = ', toString(cCorrecta) , ' El ejercicio funciona ', bool_to_str(resultado = toString(cCorrecta)));
    WriteLn('  Estado colas iniciales sin modificar: ',  bool_to_str((c1Ini = toString(c1)) and (c2Ini = toString(c2))));
end;


begin
    test_sumar_colas_ej_4_1();
    WriteLn(''); // Separador entre ejercicios
    test_sumar_colas_ej_4_2();
    readln;
end.
