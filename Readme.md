# Tesseract (PDF/Image)

- Construa a imagem Docker: `docker build -t my_ocr_image .`
- Execute o container Docker: `docker run -v $(pwd):/pdf my_ocr_image python3 /ocr_script.py /pdf/seu_arquivo.pdf`
  - Exemplo (PDF): `docker run --rm -v $(pwd):/pdf my_ocr_image python3 /ocr_script.py /pdf/docker-commands-cheat-sheet-pdf.pdf`
  - Exemplo (Imagem): `docker run --rm -v $(pwd):/pdf my_ocr_image python3 /ocr_script.py /pdf/imagem1.jpg`
