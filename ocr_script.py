import sys
from PIL import Image
from pdf2image import convert_from_path
import pytesseract

file_path = sys.argv[1]

if file_path.lower().endswith('.pdf'):
    images = convert_from_path(file_path)
else:
    images = [Image.open(file_path)]

for i, image in enumerate(images):
    text = pytesseract.image_to_string(image, lang='por')
    print(f"=== Página {i+1} ===")
    print(text)
