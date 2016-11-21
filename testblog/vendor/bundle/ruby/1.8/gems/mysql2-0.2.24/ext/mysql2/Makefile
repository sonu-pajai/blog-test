
SHELL = /bin/sh

#### Start of system configuration section. ####

srcdir = .
topdir = /usr/lib/ruby/1.8/i686-linux
hdrdir = $(topdir)
VPATH = $(srcdir):$(topdir):$(hdrdir)
prefix = $(DESTDIR)/usr
exec_prefix = $(prefix)
includedir = $(prefix)/include
rubylibdir = $(libdir)/ruby/$(ruby_version)
bindir = $(exec_prefix)/bin
sharedstatedir = $(prefix)/com
localedir = $(datarootdir)/locale
sitearchdir = $(sitelibdir)/$(sitearch)
vendorlibdir = $(vendordir)/$(ruby_version)
infodir = $(prefix)/share/info
sbindir = $(exec_prefix)/sbin
docdir = $(datarootdir)/doc/$(PACKAGE)
localstatedir = $(DESTDIR)/var
vendordir = $(libdir)/ruby/vendor_ruby
libexecdir = $(prefix)/lib/ruby1.8
htmldir = $(docdir)
sysconfdir = $(DESTDIR)/etc
archdir = $(rubylibdir)/$(arch)
sitedir = $(DESTDIR)/usr/local/lib/site_ruby
oldincludedir = $(DESTDIR)/usr/include
psdir = $(docdir)
datadir = $(datarootdir)
libdir = $(exec_prefix)/lib
sitelibdir = $(sitedir)/$(ruby_version)
pdfdir = $(docdir)
datarootdir = $(prefix)/share
dvidir = $(docdir)
mandir = $(prefix)/share/man
vendorarchdir = $(vendorlibdir)/$(sitearch)

CC = gcc
LIBRUBY = $(LIBRUBY_SO)
LIBRUBY_A = lib$(RUBY_SO_NAME)-static.a
LIBRUBYARG_SHARED = -l$(RUBY_SO_NAME)
LIBRUBYARG_STATIC = -l$(RUBY_SO_NAME)-static

RUBY_EXTCONF_H = 
CFLAGS   =  -fPIC -fno-strict-aliasing -g -g -O2  -fPIC $(cflags) -Wall -funroll-loops 
INCFLAGS = -I. -I. -I/usr/lib/ruby/1.8/i686-linux -I. -I/usr/include/mysql
DEFS     = -D_FILE_OFFSET_BITS=64
CPPFLAGS = -DHAVE_MYSQL_H -DHAVE_ERRMSG_H -DHAVE_MYSQLD_ERROR_H -D_FORTIFY_SOURCE=2 -D_FILE_OFFSET_BITS=64 -D_FORTIFY_SOURCE=2
CXXFLAGS = $(CFLAGS) 
ldflags  = -L. -Wl,-Bsymbolic-functions -Wl,-z,relro -rdynamic -Wl,-export-dynamic -Wl,-rpath,/usr/lib/i386-linux-gnu
dldflags = 
archflag = 
DLDFLAGS = $(ldflags) $(dldflags) $(archflag)
LDSHARED = $(CC) -shared
AR = ar
EXEEXT = 

RUBY_INSTALL_NAME = ruby1.8
RUBY_SO_NAME = ruby1.8
arch = i686-linux
sitearch = i686-linux
ruby_version = 1.8
ruby = /usr/bin/ruby1.8
RUBY = $(ruby)
RM = rm -f
MAKEDIRS = mkdir -p
INSTALL = /usr/bin/install -c
INSTALL_PROG = $(INSTALL) -m 0755
INSTALL_DATA = $(INSTALL) -m 644
COPY = cp

#### End of system configuration section. ####

preload = 

libpath = . $(libdir)
LIBPATH =  -L. -L$(libdir)
DEFFILE = 

CLEANFILES = mkmf.log
DISTCLEANFILES = 

extout = 
extout_prefix = 
target_prefix = /mysql2
LOCAL_LIBS = 
LIBS = $(LIBRUBYARG_SHARED) -L/usr/lib/i386-linux-gnu -lmysqlclient -lpthread -lz -lm -lrt -ldl  -lpthread -lrt -ldl -lcrypt -lm   -lc
SRCS = result.c client.c mysql2_ext.c infile.c
OBJS = result.o client.o mysql2_ext.o infile.o
TARGET = mysql2
DLLIB = $(TARGET).so
EXTSTATIC = 
STATIC_LIB = 

BINDIR        = $(bindir)
RUBYCOMMONDIR = $(sitedir)$(target_prefix)
RUBYLIBDIR = /Disk250/disk1/testblog/vendor/bundle/ruby/1.8/gems/mysql2-0.2.24/lib$(target_prefix)
RUBYARCHDIR = /Disk250/disk1/testblog/vendor/bundle/ruby/1.8/gems/mysql2-0.2.24/lib$(target_prefix)

TARGET_SO     = $(DLLIB)
CLEANLIBS     = $(TARGET).so $(TARGET).il? $(TARGET).tds $(TARGET).map
CLEANOBJS     = *.o *.a *.s[ol] *.pdb *.exp *.bak

all:		$(DLLIB)
static:		$(STATIC_LIB)

clean:
		@-$(RM) $(CLEANLIBS) $(CLEANOBJS) $(CLEANFILES)

distclean:	clean
		@-$(RM) Makefile $(RUBY_EXTCONF_H) conftest.* mkmf.log
		@-$(RM) core ruby$(EXEEXT) *~ $(DISTCLEANFILES)

realclean:	distclean
install: install-so install-rb

install-so: $(RUBYARCHDIR)
install-so: $(RUBYARCHDIR)/$(DLLIB)
$(RUBYARCHDIR)/$(DLLIB): $(DLLIB)
	$(INSTALL_PROG) $(DLLIB) $(RUBYARCHDIR)
install-rb: pre-install-rb install-rb-default
install-rb-default: pre-install-rb-default
pre-install-rb: Makefile
pre-install-rb-default: Makefile
$(RUBYARCHDIR):
	$(MAKEDIRS) $@

site-install: site-install-so site-install-rb
site-install-so: install-so
site-install-rb: install-rb

.SUFFIXES: .c .m .cc .cxx .cpp .C .o

.cc.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cxx.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.cpp.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.C.o:
	$(CXX) $(INCFLAGS) $(CPPFLAGS) $(CXXFLAGS) -c $<

.c.o:
	$(CC) $(INCFLAGS) $(CPPFLAGS) $(CFLAGS) -c $<

$(DLLIB): $(OBJS) Makefile
	@-$(RM) $@
	$(LDSHARED) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LOCAL_LIBS) $(LIBS)



$(OBJS): ruby.h defines.h
