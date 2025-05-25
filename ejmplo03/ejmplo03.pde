int cantidad = 100;
String[] clases = {"rect_a", "rect_b", "rect_c", "rect_d", "acu_a", "acu_b"};

void setup() {
  size(200, 200);
  background(50,80,1);
  noLoop();
  generarTriangulos();
}

void generarTriangulos() {
  for (String clase : clases) {
    for (int i = 0; i < cantidad; i++) {
      background(255);
      fill(random(100, 255), random(100, 255), random(100, 255));
      noStroke();

      // Generar triángulo con orientación y tipo según la clase
      if (clase.startsWith("rect")) {
        dibujarTrianguloRectangulo(clase);
      } else {
        dibujarTrianguloAcutangulo(clase);
      }

      save("data/" + clase + "_" + nf(i, 3) + ".png");
    }
  }
}

void dibujarTrianguloRectangulo(String clase) {
  int x = int(random(50, 150));
  int y = int(random(50, 150));
  int size = int(random(30, 60));

  if (clase.equals("rect_a")) {
    triangle(x, y, x + size, y, x, y - size); // arriba
  } else if (clase.equals("rect_b")) {
    triangle(x, y, x - size, y, x, y - size); // izquierda
  } else if (clase.equals("rect_c")) {
    triangle(x, y, x - size, y, x, y + size); // abajo
  } else if (clase.equals("rect_d")) {
    triangle(x, y, x + size, y, x, y + size); // derecha
  }
}

void dibujarTrianguloAcutangulo(String clase) {
  int x = int(random(50, 150));
  int y = int(random(50, 150));
  int base = int(random(40, 70));
  int altura = int(random(40, 70));
  int desplazamiento = int(random(10, 30));

  if (clase.equals("acu_a")) {
    triangle(x, y, x + base / 2, y - altura, x + base, y); // isósceles
  } else if (clase.equals("acu_b")) {
    triangle(x, y, x + base, y, x + desplazamiento, y - altura); // escaleno
  }
}
