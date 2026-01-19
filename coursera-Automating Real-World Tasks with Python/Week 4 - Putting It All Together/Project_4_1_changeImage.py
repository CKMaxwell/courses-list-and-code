#!/usr/bin/env python3
import os
from PIL import Image

path = "supplier-data/images/"
pictures = os.listdir(path)

for pic in pictures:
  if 'tiff' in pic:
    #grab the picture name without the .tiff extension
    file_name = os.path.splitext(pic)[0]
    # print(file_name)
    outfile = "supplier-data/images/" + file_name + ".jpeg"
    try:
      Image.open(path + pic).convert("RGB").resize((600,400)).save(outfile, format="jpeg")
    except IOError:
      print("cannot convert", pic)

