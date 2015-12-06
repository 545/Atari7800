import sys

source_fname = sys.argv[1]
dest_fname = ''.join(source_fname.split('.')[:-1]) + '.coe'

print dest_fname

coe_header = """memory_initialization_radix=16;
memory_initialization_vector=
"""

with open(source_fname, 'rb') as f:
    with open(dest_fname, 'w') as out:
        out.write(coe_header)
        f.seek(128)
        for c in f.read():
            out.write('%02x,\n' % (ord(c)))
        out.seek(out.tell() - 2)
        out.write(';\n')
