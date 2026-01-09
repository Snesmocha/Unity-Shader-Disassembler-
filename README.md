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


note:
- the material json matches 1 to 1 to how the cbuffer/ubo is layed out
  - as it follows layout std140, all data is always aligned to the 16 byte boundry as defined by microsoft...
- for some reason ssbo is NOT used at all in hoyo verse games
  - hoyo games are genuinely the most unoptimized piles of trash ever, seriously 120 bytes for a single vertex is ridiculous, and the paching scheme is pathetic
- this was primarily tested with umamusume pretty derby and zenless zone zero shaders, i do not know how sm6 is disassembled currently, nor am i aware of a sm6 disassembler
  - hoyo specifically nor most gacha games even use sm6 since everyone knows it's a fat piece of garbage anyways sooooooooooooooooooooooooooo
- aaaa (japanese laws are stupid), be careful if you're from a country that doesn't have proper protections against extractions of stuff 
  

if you wanna contact me join this server:


https://discord.com/invite/3p9cT4ajqy

thanks to manashiku for the original idea for disassembly of compressed to binary blob
