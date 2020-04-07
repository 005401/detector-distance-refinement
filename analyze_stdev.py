import sys
import numpy as np
import matplotlib.pyplot as plt
import math  

detz=[]
a=[]
std=[]

run = sys.argv[1]

with open('out-geom-ref.txt') as fa:
   for line_aa in fa.readlines():
      line_aa = line_aa.strip()
      col1,col2,col3 = line_aa.split()
      
      detz.append(float(col1))
      a.append(float(col2)) 
      std.append(float(col3)) 



#fit to the dist points
fit=np.polyfit(detz, std, 2)
tif=np.poly1d(fit)

crit = tif.deriv().r
r_crit = crit[crit.imag==0].real
test = tif.deriv(2)(r_crit) 

x_min = r_crit[test>0]
y_min = tif(x_min)
print x_min

print '%s %.2f' % (run , round(x_min,2))

with open('run_'+str(run)+'_detz-from-fit.txt', 'w') as f:
   f.write('%.2f\n' % round(x_min,2))

plt.scatter(detz, std, s=1, label="500 frames, detz= %.2f" %(x_min))
plt.plot(detz,tif(detz))
plt.plot( x_min, y_min, 'o' )
plt.legend()
plt.title(str(run))
plt.xlabel('Detector distance')
plt.ylabel('stdev of A-axis (nm)')
plt.savefig('run_'+str(run)+'_fit.png', dpi=300)
