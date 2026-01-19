""" example code"""
# user@ubuntu:~$ sudo apt install python3-pil
# pip3 install pillow
from PIL import Image
im = Image.open("bride.jpg")
im.rotate(45).show()


im = Image.open("example.jpg")
new_im = im.resize((640,480))
new_im.save("example_resized.jpg")


im = Image.open("example.jpg")
new_im = im.rotate(90)
new_im.save("example_rotated.jpg")


im = Image.open("example.jpg")
im.rotate(180).resize((640,480)).save("flipped_and_resized.jpg")

""" submit code"""
#!/usr/bin/env python3
import os
from PIL import Image
file_name = os.listdir("images")
current_path = os.getcwd()
folder_name = "images"
fullname = os.path.join(current_path, folder_name)

# if os.path.isdir("opt") == False:
#     os.mkdir("opt")
#     os.chdir("opt")
#     if os.path.isdir("icons") == False:
#         os.mkdir("icons")
# os.chdir(current_path)

for origin_fig in file_name:

    fig_loc = os.path.join(fullname, origin_fig)
    try:
        im = Image.open(fig_loc)
        if im.mode != "RGB":
            im = im.convert("RGB")
        new_im = im.rotate(90).resize((128, 128)).save(f"/opt/icons/{origin_fig}", format = "jpeg")
        # 注意：上述是存到linux上root以下的opt/icons，不是現行資料夾下面的/opt/icons
    except:
        pass

