const fs = require('fs');
const path = require('path');

const basePath = path.join(__dirname, 'ejmplo03', 'data');
const clases = ['acu_a', 'acu_b', 'rect_a', 'rect_b', 'rect_c', 'rect_d'];
const totalImgs = 100;

for (const clase of clases) {
  for (let i = 0; i < totalImgs; i++) {
    const index = i.toString().padStart(3, '0');
    const fileName = `${clase}_${index}.png`;
    const filePath = path.join(basePath, fileName);

    if (!fs.existsSync(filePath)) {
      console.log(`Falta: ${fileName}`);
    }
  }
}

console.log('Revisión terminada.');
