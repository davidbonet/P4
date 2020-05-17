#!/usr/bin/env python
import matplotlib.pyplot as plt


# LPC
X, Y = [], []
for line in open('grafics/lp_2_3.txt', 'r'):
  values = [float(s) for s in line.split()]
  X.append(values[0])
  Y.append(values[1])

plt.plot(X, Y, 'rx', markersize=4)
plt.savefig('img/lp_2_3.png')
plt.title('LPC',fontsize=20)
plt.grid()
plt.xlabel('a(2)')
plt.ylabel('a(3)')
plt.savefig('img/lp_2_3.png')
plt.show()


"""
# LPCC
X, Y = [], []
for line in open('grafics/lpcc_2_3.txt', 'r'):
  values = [float(s) for s in line.split()]
  X.append(values[0])
  Y.append(values[1])

plt.plot(X, Y, 'rx', markersize=4)
plt.savefig('img/lpcc_2_3.png')
plt.title('LPCC',fontsize=20)
plt.grid()
plt.xlabel('c(2)')
plt.ylabel('c(3)')
plt.savefig('img/lpcc_2_3.png')
plt.show()
"""

"""
# MFCC
X, Y = [], []
for line in open('grafics/mfcc_2_3.txt', 'r'):
  values = [float(s) for s in line.split()]
  X.append(values[0])
  Y.append(values[1])

plt.plot(X, Y, 'rx', markersize=4)
plt.savefig('img/mfcc_2_3.png')
plt.title('MFCC',fontsize=20)
plt.grid()
plt.xlabel('mc(2)')
plt.ylabel('mc(3)')
plt.savefig('img/mfcc_2_3.png')
plt.show()
"""



