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

## Errores Hallados Durante el Desarrollo
Durante el desarrollo del proyecto se presentaron algunos errores que permitieron mejorar el enfoque general:
***Error al guardar imágenes en Processing***
 Al principio las imágenes se guardaban fuera de la carpeta `data`, lo cual causaba problemas al cargar el dataset.

 *Solucion*:  Se corrigió la ruta y se verificó que las imágenes se guardaran correctamente dentro de `ejmplo03/data`.

***Tamaño de las imágenes inconsistente***: Algunas imágenes no tenían el tamaño estándar de 64x64 px.

*Solución*: Se ajustó el tamaño del `canvas` en Processing para asegurar uniformidad.

***Modelo no detectaba correctamente algunas clases***En las primeras versiones, el modelo confundía clases similares como `rect_a` y `acu_a`.

*Solución*: Se generaron imágenes más variadas con colores, posiciones y rotaciones aleatorias para mejorar la generalización del modelo.

***Carga del modelo fallida en HTML***: El navegador no cargaba el modelo debido a rutas incorrectas o permisos.

*Solución*: Se revisó la estructura de carpetas y se usó un servidor local para probar correctamente (`Live Server` o similar).

Estos errores permitieron aprender sobre la importancia del preprocesamiento de datos, organización de archivos y pruebas iterativas del modelo.

## Creditos
desarrollado por [Sandra de la cruz](https://github.com/Sandra120704/reconocimiento.git)
Curso: TALLER DE DESARROLLO DE APLICACIONES CON MACHINE LEARN
