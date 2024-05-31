//Clase Persona
class Persona {
  String _nombre;
  String _apellido;
  int _edad;

//Constructor
  Persona(this._nombre, this._apellido, this._edad);

//Metodo get
  String get nombre => _nombre;
  String get apellido => _apellido;
  int get edad => _edad;

//Metodo set
  set nombre(String newName) {
    if (newName.isNotEmpty) {
      _nombre = newName;
    }
  }

  set apellido(String newApellido) {
    if (newApellido.isNotEmpty) {
      _apellido = newApellido;
    }
  }

  set edad(int newEdad) {
    if (newEdad > 0) {
      _edad = newEdad;
    }
  }

//Metodo informacion
  void informacion() {
    print("Nombre: $_nombre, Apellido: $_apellido, Edad: $_edad");
  }
}

void main() {
  var persona01 = Persona('Santiago', 'Hoyos', 24);
  print("Primera Instancia.");
  persona01.informacion();
  print("");

  persona01.nombre = "Santiagooo";
  persona01.apellido = "Montoya";
  persona01.edad = 25;
  print("Primera Modificacion.");
  persona01.informacion();
  print("");

  persona01.apellido = "221";
  persona01._edad = -1344;
  print("Modificacion con parametros invalidos.");
  persona01.informacion();
  print("");
}
