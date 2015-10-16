import math
import numpy as np
import sys

ZP = 0x1810
DP = 0x1840

PP1 = 0x1800
PP2 = 0x1804
PP3 = 0x1808
PP4 = 0x180c

class COE(object):
    def __init__(self, filename, radix, bits, length):
        self.filename = filename
        self.radix = radix
        self.bits = bits
        self.length = length
        self.data = [0xBF for _ in xrange(length)]

    def write(self, address, data):
        self.data[address] = data

    def save(self):
        with open(self.filename, 'w') as out:
            out.write('memory_initialization_radix=%d;\n' % self.radix)
            out.write('memory_initialization_vector=\n')
            fmt = '%%0%dx' % int(math.ceil(math.log(self.radix, self.bits)))
            for i in xrange(self.length):
                out.write(fmt % self.data[i])
                if i == self.length - 1:
                    out.write(';\n')
                else:
                    out.write(',\n')

def high(addr):
    return (addr >> 8) & 0xFF

def low(addr):
    return (addr) & 0xFF

def write_zp_item(coe, zp, offset, dp):
    assert(0 <= offset <= 15)
    coe.write(zp, offset)
    coe.write(zp + 1, low(dp))
    coe.write(zp + 2, high(dp))

def write_zp(coe):
    write_zp_item(coe, ZP + 0, 15, DP)
    for i in xrange(13):
        write_zp_item(coe, ZP + 3*(i+1), 15, DP + 10)
    write_zp_item(coe, ZP + 3*14, 1, DP + 10)
    write_zp_item(coe, ZP + 3*15, 15, DP + 12)

def write_dp_item(coe, dp, palette, width, input_, pp):
    assert(1 <= width <= 31)
    coe.write(dp, low(pp))
    coe.write(dp+1, eval('0b' + np.binary_repr(palette, 3)
                              + np.binary_repr(-width, 5)))
    coe.write(dp+2, high(pp))
    coe.write(dp+3, input_)

def write_dp_null(coe, dp):
    coe.write(dp, 0)
    coe.write(dp+1, 0)

def write_dp(coe):
    write_dp_item(coe, DP + 0, 0, 4, 0, PP1)
    write_dp_item(coe, DP + 4, 1, 4, 144, PP2)
    write_dp_null(coe, DP + 8)

    write_dp_null(coe, DP + 10)

    write_dp_item(coe, DP + 12, 2, 4, 0, PP3)
    write_dp_item(coe, DP + 16, 3, 4, 144, PP4)
    write_dp_null(coe, DP + 20)

def PP1_DATA(row, col):
    return 3 if (row < (16 - col)) else 0

def PP2_DATA(row, col):
    return 3 if row < col else 0

def PP3_DATA(row, col):
    return 3 if row > col else 0

def PP4_DATA(row, col):
    return 3 if row > (16 - col) else 0

def pp_byte(row, col, fn):
    data = ''
    for c in xrange(4):
        bit = np.binary_repr(fn(row, 4*col+c))
        while len(bit) != 2:
            bit = '0' + bit
        data += bit
    return eval('0b' + data)

def write_pp_item(coe, pp, fn):
    for row in xrange(16):
        for col in xrange(4):
            coe.write(pp + col + (15-row)*256, pp_byte(row, col, fn))

def write_pp(coe):
    write_pp_item(coe, PP1, PP1_DATA)
    write_pp_item(coe, PP2, PP2_DATA)
    write_pp_item(coe, PP3, PP3_DATA)
    write_pp_item(coe, PP4, PP4_DATA)

if __name__ == '__main__':
    filename = sys.argv[1]
    coe = COE(filename, 16, 8, 65536)
    write_zp(coe)
    write_dp(coe)
    write_pp(coe)
    coe.write(4, 100)
    coe.save()
