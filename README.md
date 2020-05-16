# png2sch
Convert png images to sch files. This application was created to automatically convert png files exported by Proteus into sch files for Kicad. It was tailored for the Schematics of the https://github.com/furrtek/DMG-CPU-Inside project.

# Requirements
This project is a python 2.7 project. It requires python-opencv, and that is about it.

# Usage
run ./png2sch.sh -h or python png2sch.py -h for options

png2sch.sh is hardcoded with the options that were used to produce the files in the output folder

# How it works
Each cell used in the schematics has to be manually extracted and placed in the 'zoo' folder. A kicad symbol library has to be manually built matching the cells that were extracted.

For each cell, opencv is used to recognize each shape in the input png file. The border of the cell is followed to recognize the wires position. Rules are the applied to the detected shape to check for consistency. Once the list of objects is built, wires are followed to build a list of connections. Then, each object is converted into its kicad representation in the symbol library, and serialized along the wire list to produce the sch output. A control png is generated were each recognized symbol is highlighted.

