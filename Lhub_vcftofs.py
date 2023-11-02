"""
1D Models 
Run on Lithasia hubrichti from the Black River, Mississippi
"""

"""
Importing required modules within ipython
"""
import dadi
import numpy
from numpy import array
import pylab
import vcf
import matplotlib
matplotlib.use("AGG")

"""
Create SFS beforehand using easySFS
A) the projection value comes from the easySFS --projection function
B) easySFS outputs dadi .sfs files
"""
dd = dadi.Misc.make_data_dict(filename="Lhub_Multi_R100.txt")
fs = dadi.Spectrum.from_data_dict(dd, ['Black'], [12], polarized=False)
fs.to_file('Lhub_Multi.fs')



