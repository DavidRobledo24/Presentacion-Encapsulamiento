class Producto {
  // Propiedades privadas
  String _nombre;
  double _precio;
  int _stock;

  // Constructor
  Producto(this._nombre, this._precio, this._stock);

  // Getters
  String get nombre => _nombre;
  double get precio => _precio;
  int get stock => _stock;

  // Setters
  set nombre(String newName) {
    if (newName.isNotEmpty) {
      _nombre = newName;
    }
  }

  set precio(double newPrice) {
    if (newPrice > 0) {
      _precio = newPrice;
    }
  }

  set stock(int newStock) {
    if (newStock >= 0) {
      _stock = newStock;
    }
  }

  // Método para mostrar detalles del producto
  void mostrarDetalles() {
    print('Producto: $_nombre, Precio: $_precio, Stock: $_stock');
  }
}

void main() {
  // Crear una instancia de Product
  var product01 = Producto('Laptop', 999.99, 10);
  print("Primera instancia");
  product01.mostrarDetalles();
  print(" ");

  //Modificar el nombre, el precio y el stock usando setters
  // product01.nombre = 'Gaming Laptop';
  // product01.precio = 1299.99;
  // product01.stock = 5;
  // print("primera modificacion de la instancia");
  // product01.mostrarDetalles();
  // print(" ");

  // Intentar establecer un precio y stock inválidos (no se cambiarán)
  product01.precio = -100.00;
  product01.stock = -3;
  print("segunda modificacion de la instancia con parametros incompletos");
  product01.mostrarDetalles();
  print(" ");
}
