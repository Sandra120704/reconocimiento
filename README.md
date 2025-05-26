# Reconocimiento de Triángulos

## Introducción
Este proyecto es una aplicación de reconocimiento de triángulos. Se utiliza la biblioteca [ml5](https://ml5js.org/) para entrenar un modelo de ML con datos de imágenes de triángulos y luego utilizarlo para clasificar nuevas imágenes.

## Características
- Entrenamiento de un modelo de ML con datos de imágenes de triángulos.
- Clasificación de nuevas imágenes de triángulos.
- Visualización de resultados.

## Tecnologías utilizadas
- HTML
- CSS
- JavaScript
- p5.js
- ml5.js
- Modelo entrenado previamente(model.json, model_meta.json, model.weights.bin)

## Objetivos
1. Entrenar un modelo de ML con datos de imágenes de triángulos.
2. Detectar y clasificar imágenes de triángulos en diferentes clases. 

## Generación de datos

Se generaron ***600 imagenes*** de triángulos de diferentes clases.
 usando este script en Processing:

```java
String[] clases = {"rect_a", "rect_b", "rect_c", "rect_d", "acu_a", "acu_b"};
for (String clase : clases) {
  for (int i = 0; i < 100; i++) {
    // Dibuja triángulo con clase y orientación
    save("data/" + clase + "_" + nf(i, 3) + ".png");
  }
}
```
## Creditos
desarrollado por [Sandra de la cruz](https://github.com/Sandra120704/reconocimiento.git)
Curso: TALLER DE DESARROLLO DE APLICACIONES CON MACHINE LEARN
