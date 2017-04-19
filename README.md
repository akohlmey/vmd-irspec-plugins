The package contains VMD plugins related to computing spectral densities
from molecular dynamics simulation data. The package is broken down into
a graphical frontend, `irspecgui`,  written in Tk/Tcl and the  computing
and processing modules, `signalproc`, written in Tcl and compiled C code.

----

Compilation and installation:

Edit the variables in the top part of the Makefile file in this directory
to match your system. Here are some comments on their purpose:

- VMDDIR is the location of the VMD main installation. This determines where
the plugins in this package will be installed.

- ARCH is the architecture label the VMD uses. Binaries in $VMDDIR will have
the format `vmd_<ARCH>` or `tachyon_<ARCH>` or `surf_<ARCH>`

The remaining flags should work on most Linux systems.

Compilation is done with. "make" or "make plugins" and installation with
"make install". Removing temporary binaries is done with "make clean".

----

Homepage:

The main author of this package is Axel Kohlmeyer  and you can reach him
at <akohlmey@gmail.com>.  The  official  homepage  for this  project  is
https://github.com/akohlmey/vmd-irspec-plugins

----

Citing:

If needed, you can cite this VMD plugin package as:
Axel Kohlmeyer. (2017). VMD IR-spec plugins: Release 1.0 [Data set]. Zenodo. 
[![DOI](https://www.zenodo.org/badge/4368856.svg)](https://www.zenodo.org/badge/latestdoi/4368856)

