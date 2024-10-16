

class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

 void detalles() {
    print('Nombre: $nombre, Edad: $edad');
  }
}
class Empleado extends Persona {
  String cargo;

  Empleado(String nombre, int edad, this.cargo) : super(nombre, edad);

  @override
  void detalles() {
    print('Nombre: $nombre, Edad: $edad, Cargo: $cargo');
  }
}

abstract class Animal {
  void comer();
}

class Perro extends Animal {
  String nombre;
  int edad;

  Perro(this.nombre, this.edad) : assert(edad > 0, print('La edad debe ser mayor que 0'));

  @override
  void comer() {
    print('Comiendo');
  }
  
}

enum DiaSemana { lunes, martes, miercoles, jueves, viernes, sabado, domingo }

extension IntExtension on int {
  bool esPar() {
    return this % 2 == 0;
  }
}


mixin Nadador {
  void nadar()  {
    print('Nadando');
  }
}

class Delfin extends Animal with Nadador {
  @override
  void comer() {
    print('El delfín está comiendo');
  }
}


class Vehiculo {
  String tipo;
  
  Vehiculo(this.tipo);

  factory Vehiculo.crearVehiculo(String tipo) {
    if (tipo == 'auto') {
      return Auto();
    } else if (tipo == 'moto') {
      return Moto();
    } else {
      throw 'Tipo de vehículo no soportado';
    }
  }
}

class Auto extends Vehiculo {
  Auto() : super('Auto') {
    print('Auto creado');
  }
}

class Moto extends Vehiculo {
  Moto() : super('Moto') {
    print('Moto creada');
  }
}

void main() {
  var vehiculo1 = Vehiculo.crearVehiculo('auto');
  var vehiculo2 = Vehiculo.crearVehiculo('moto');

  print(vehiculo2.tipo);
 
}
