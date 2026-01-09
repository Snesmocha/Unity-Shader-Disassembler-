# Unity-Shader-Disassembler-
A proof of concept for how unity shader disassembly functions used in tangent with the anime studio fork of asset studio

When using asset studio / anime studio, be sure there is a way to export .json files to grab the compressed blob

the shader itself is written into unity lzma, it's a very basic lzma modification which chunks the compression rather than write all at once... it's weird i know

# how to use
run the application with python, it will direct what needs to be installed 
```py
pip install lz4 
``` 
this will install the lzma package

once the dxbc files are extracted, be sure that the shader is in the same directory as the decompiler

note you WILL get a lot of shader permutations, this is normal in games such as zenless to prevent running extra code at runtime... yes it's dumb and leads to stutter in modern systems, too bad.

rest instructions in python 
