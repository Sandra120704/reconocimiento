int cantidad = 100;
String[] clases = {"rec_arr", "rec_izq", "rec_aba", "rec_der", "acu_iso",  "acu_esca" 
};
void setup() {
  size(64, 64);
  background(50, 80, 1);
  noLoop();
  generarTriangulos();
}

void generarTriangulos() {
  for (String clase : clases) {
    for (int i = 0; i < cantidad; i++) {
      background(255);
      fill(random(100, 255), random(100, 255), random(100, 255));
      noStroke();

      if (clase.startsWith("rec")) {
        dibujarRectangulo(clase);
      } else {
        dibujarAcutangulo(clase);
      }

      save("data/" + clase + "_" + nf(i, 3) + ".png");
    }
  }
}

void dibujarRectangulo(String clase) {
  int x = int(random(15, 45));
  int y = int(random(15, 45));
  int s = int(random(10, 25));

  if (clase.equals("rec_arr")) {
    triangle(x, y, x + s, y, x, y - s);
  } else if (clase.equals("rec_izq")) {
    triangle(x, y, x - s, y, x, y - s);
  } else if (clase.equals("rec_aba")) {
    triangle(x, y, x - s, y, x, y + s);
  } else if (clase.equals("rec_der")) {
    triangle(x, y, x + s, y, x, y + s);
  }
}

void dibujarAcutangulo(String clase) {
  int x = int(random(15, 45));
  int y = int(random(15, 45));
  int b = int(random(20, 35));
  int h = int(random(20, 35));
  int d = int(random(5, 15));

  if (clase.equals("acu_iso")) {
    triangle(x, y, x + b / 2, y - h, x + b, y);
  } else if (clase.equals("acu_esca")) {
    triangle(x, y, x + b, y, x + d, y - h);
  }
}
