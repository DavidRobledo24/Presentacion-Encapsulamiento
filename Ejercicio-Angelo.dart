void main() {
  //Creamos instancia de la clase Auto
  Auto gtr = new Auto("GTR R35", "Nissan", "Calle");
  //Llamamos el metodo getter del la variable nombre dentro de la instancia
  print(gtr.getNombre);
  //Llamamos el setter de la variable kilometraje dentro de la instancia para asignarle un valor
  gtr.kilometraje = 2000;
  //Llamamos el metodo getter del la variable kilometraje dentro de la instancia para mostrar su valor actual
  print(gtr.kilometraje);

  print("---------------------------------------------");

  //Creamos una variable de dato primitivo para realizar el paso de parametros por valor
  int cantidadAutosParkeadero = 0;
  //La enviamos como parametro a una funcion que aumentara su valor pero solo dentro de la funcion
  aumentarCantidadAutos(cantidadAutosParkeadero);
  //Imprimimos la variable la cual solo dentro de la funcion habra sido modificada, por lo cual seguira en 0 en este caso
  print("Numero de autos afuera de la funcion por Valor: " +
      cantidadAutosParkeadero.toString());

  //Creamos una instancia de la clase parkeadero la cual tendra un contador como propiedad
  Parkeadero parkeadero = new Parkeadero();
  //Aumentamos el valor de la variable dentro de la instancia en la funcion
  agregarAutoParkeadero(parkeadero);
  //Imprimimos la variable contadora de la intancia la cual al haber sido cambiada en la funcion y haber pasado por referencia, se mantendra su cambio afuera de la funcion
  print("Numero de autos afuera de la funcion por Referencia: " +
      parkeadero.cantidadAutos.toString());
}

class Auto {
  String nombre;
  String marca;
  String tipo;
  int _kilometraje = 0;

  Auto(this.nombre, this.marca, this.tipo);

  //Metodo getter del nombre
  String get getNombre {
    return nombre;
  }

  //Metodo getter del kilometraje
  int get kilometraje {
    return _kilometraje;
  }

  //Metodo setter del kilometraje para poder asignarle un valor
  set kilometraje(int klm) {
    _kilometraje = klm;
  }
}

void aumentarCantidadAutos(int cont) {
  cont++;
  print("Numero de autos dentro de la funcion por Valor: " + cont.toString());
}

class Parkeadero {
  int cantidadAutos = 0;
}

void agregarAutoParkeadero(Parkeadero parkeadero) {
  parkeadero.cantidadAutos++;
  print("Numero de autos dentro de la funcion por Referencia: " +
      parkeadero.cantidadAutos.toString());
}
