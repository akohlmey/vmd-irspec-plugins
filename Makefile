# -*- Makefile for VMD IR-spec plugins
SHELL=/bin/sh

# adjust configuration flags below
# VMDDIR is the location of VMD installation
# (the "lib" folder, not the "vmd" command)
#VMDDIR=/usr/local/lib/vmd
VMDDIR=$(HOME)/.local/lib/vmd
# ARCH is the VMD binary architecture
# (the suffix of executables VMDDIR, e.g. LINUX for vmd_LINUX)
ARCH=LINUXAMD64
##################
# compiler flags
# comment, if you don't want to include OpenMP parallelism
OPENMP=-fopenmp
CFLAGS=-O2 -Wall -fPIC $(OPENMP)
CC=gcc
SHLD=gcc -shared
# Tcl library
TCLLIB=$(shell pkg-config tcl --libs)
TCLINC=$(shell pkg-config tcl --cflags) -I.
TCLLDFLAGS= -L.

####################################
# no user servicable parts below
LOPTO=-o
COPTO=-o
CCFLAGS=$(CFLAGS)
CXXFLAGS=$(CFLAGS)
PLUGINDIR=$(VMDDIR)/plugins
TCLSHLD=$(SHLD) $(OPENMP)
export
####################################

default: plugins 

compile:
	mkdir -p compile

clean:
	rm -rvf compile

plugins: compile
	@for d in irspecgui signalproc; do pushd $$d ; \
		make dynlibs bins ; \
	popd ; done

install:
	@for d in irspecgui signalproc; do pushd $$d ; \
		make distrib ; \
	popd ; done
