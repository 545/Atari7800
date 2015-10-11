# Convert color palette image to system verilog
# Color palette at palettes.png
# Sourced from:
# http://atariage.com/forums/topic/209210-complete-ntsc-pal-color-palettes/

from scipy import misc

filename = "palettes.png"

i = misc.imread(filename)

y_start = 115
x_start = 91
y_end = 656
x_end = 814
d_x = (x_end - x_start) / 15
d_y = (y_end - y_start) / 15

rgbs = []
for x in xrange(16):
 row = []
 for y in xrange(16):
  val = i[y_start + d_y * y][x_start + d_x * x]
  row.append(val)
 rgbs.append(row)

reds = []
greens = []
blues = []

for y in xrange(16):
 for x in xrange(16):
  reds.append(rgbs[x][y][0])
  greens.append(rgbs[x][y][1])
  blues.append(rgbs[x][y][2])

s = "assign RED = {%s}[uv];"
print s % ", ".join("4'h%01x" % (red>>4) for red in reds[::-1])

s = "assign GREEN = {%s}[uv];"
print s % ", ".join("4'h%01x" % (green>>4) for green in greens[::-1])

s = "assign BLUE = {%s}[uv];"
print s % ", ".join("4'h%01x" % (blue>>4) for blue in blues[::-1])
