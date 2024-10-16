# Ejercicios en dart

### Ejercicio 1: Clases y Objetos

Define una clase Persona con atributos, nombre y edad. Crea una instancia de esta clase e imprime sus valores.
Agrega un método para mostrar los detalles de la persona.

``` Dart
class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void detalles() {
    print('Nombre: $nombre, Edad: $edad');
  }
}


void main() {

  Persona persona = Persona('Milko', 22);
  
  persona.detalles();

}

```

### Ejercicio 2: Constructores nombrados y @override

Crea una clase Empleado que herede de Persona. Agrega un constructor nombrado que incluya nombre, edad y un nuevo atributo, cargo. Sobrescribe el método de mostrar detalles para incluir el cargo del empleado.

``` Dart
class Empleado extends Persona {
  String cargo;

  Empleado(String nombre, int edad, this.cargo) : super(nombre, edad);

  @override
  void detalles() {
    print('Nombre: $nombre, Edad: $edad, Cargo: $cargo');
  }
}

void main() {
  Empleado empleado = Empleado('Milko', 22, 'Gerente');
  
  empleado.detalles();
}

```

### Ejercicio 3: Aserciones y Clases Abstractas

Define una clase abstracta Animal con un método comer(). Crea una subclase Perro que implemente este método.
Agrega una aserción en el constructor de Perro para asegurarte de que la edad del perro sea mayor que 0.

```Dart
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


void main() {
  Perro perro = Perro('fran', -2);
  
  perro.comer();
}

```


### Ejercicio 4: Extensiones y Enumeraciones

Crea una enumeración DiaSemana con los días de la semana.
Define una extensión sobre int que devuelva true si el número es par. Úsalo para verificar si un número ingresado por el usuario es par.

```Dart
enum DiaSemana { lunes, martes, miercoles, jueves, viernes, sabado, domingo }

void main() {
  DiaSemana hoy = DiaSemana.lunes;

  print('Hoy es: $hoy');
}

```
```Dart
extension IntExtension on int {
  bool esPar() {
    return this % 2 == 0;
  }
}

void main() {
  int numero = 4;
  
  if (numero.esPar()) {
    print('True');
  } else {
    print('falce');
  }
}
```

### Ejercicio 5: Mixins y Factory constructor

Crea un mixin Nadador con un método nadar(). Agrégalo a una clase Delfín que herede de la clase abstracta Animal.
Define un Factory constructor en una clase Vehículo que devuelva una instancia de diferentes tipos de vehículos dependiendo del tipo ingresado (e.g., "auto", "moto").

```Dart

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

void main() {
  Delfin delfin = Delfin();
  delfin.nadar();
  delfin.comer();
}
```

```Dart


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

```
