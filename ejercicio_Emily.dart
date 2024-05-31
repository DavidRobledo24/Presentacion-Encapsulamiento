//informacion de la mascota

class Mascotas{
  String nombreMascota;
  String edadMascota;
  String raza;
  Medicamento tratamiento;
  Cuidador nombreCuidador;

  Mascotas(this.nombreMascota, this.edadMascota, this.tratamiento, this.nombreCuidador, this.raza);

  String imprimirMascota(){
    return "Nombre: $nombreMascota; Raza: $raza, Edad: $edadMascota; Medicamento: ${tratamiento.nombreMedicamento}, Cuidador: ${nombreCuidador.nombre}";
  }

}

//informacion del medicamento a dar

class Medicamento{
    int _cantidad;
    String _identificador;
    String _nombreMedicamento;
    String _fechaVencimiento;

    Medicamento(this._cantidad,this._identificador, this._nombreMedicamento, this._fechaVencimiento);

  //llamados de getters
    int get cantidad{
      return _cantidad;
    }

    String get identificador{
      return _identificador;
    }

    String get nombreMedicamento{
      return _nombreMedicamento;
    }
     
    String get fechaVencimiento{
      return _fechaVencimiento;
    }

    //llamados setters
    set cantidad(int valor){
      _cantidad=valor;
    }

    set identificador(String valor){
      _identificador=valor;
    }

    set nombreMedicamento(String valor){
      _nombreMedicamento=valor;
    }

    set fechaVencimiento(String valor){
      _fechaVencimiento=valor;
    }

    String imprimirMedicamento(){
      return "Cantidad: $cantidad; ID: $identificador; Medicamento: $nombreMedicamento, Fecha V: $fechaVencimiento";
    }

    //parametros por valor
    int aumentoCantidad(int valor){
      return cantidad+valor;
    }

}

//dueño de la mascota

class Cuidador{
  String _documento;
  String nombre;
  String edad;
  String _telefono;

  Cuidador(this._documento, this.nombre, this.edad, this._telefono);

  //llamado getters
  String get documento{
    return _documento;
  }

  String get telefono{
    return _telefono;
  }

  //llamados setters
  set documento(String valor){
    _documento=valor;
  }

  set telefono(String valor){
    _telefono=valor;
  }

  //parametros por referencia
  void correcionDatos(Cuidador datos){
      _documento=datos.documento;
      nombre=datos.nombre;
      edad=datos.edad;
      _telefono=datos.telefono;
  }

   String imprimir(){
    return "Nombre: $nombre; Edad: $edad; Telefono: $telefono, ID: $documento";
  }

}

//programa simulando el movimiento de datos de una mascoa dentro de una veterinaria

void main(){

  //crear medicamento
  Medicamento medicamento=new Medicamento(12, "1234", "Paracetamol", "5/2026");

  //Crear dueño
  Cuidador cuidador=new Cuidador("203651", "Juanito Perez", "45", "352569825");

  //Crear Mascota
  Mascotas mascota= new Mascotas("Luxe", "5 meses", medicamento, cuidador, "Sabueso/perro");

  //impresion inicial
  print(mascota.imprimirMascota());
  print(medicamento.imprimirMedicamento());
  print(cuidador.imprimir());

  //impresion del setter 
  print("Documento del cuidador: "+cuidador.documento);

  print("-----------------------------------");

  //modificar algun dato
  medicamento.cantidad=40;

  //parametro por valor
  print("por dentro de la función ${medicamento.aumentoCantidad(9)}");
  print("por fuera de la función ${medicamento.cantidad}");
  medicamento.fechaVencimiento="11/2024";

  //parametro por referencia
  Cuidador datosCorregidos=new Cuidador("74185", "Miles", "20", "3256987741");

  cuidador.correcionDatos(datosCorregidos);

  //impresion final
  print(mascota.imprimirMascota());
  print(medicamento.imprimirMedicamento());
  print(cuidador.imprimir());

}

