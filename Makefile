DESTDIR = /
DOCDIR = /usr/doc/

all:
	@echo Please run: make install DESTDIR=/path/to/install

install:
	mkdir -p ${DESTDIR}/etc/loginfetch 2>/dev/null
	cp config ${DESTDIR}/etc/loginfetch/
	mkdir -p ${DESTDIR}/usr/local/bin 2>/dev/null
	cp loginfetch ${DESTDIR}/usr/local/bin/
	chmod +x ${DESTDIR}/usr/local/bin/loginfetch
	mkdir -p ${DESTDIR}${DOCDIR} 2> /dev/null
	cp README.md ${DESTDIR}${DOCDIR}/
	mkdir -p ${DESTDIR}/etc/rc.d/ 2> /dev/null
	cp -r rc.loginfetch ${DESTDIR}/etc/rc.d/
	@echo Installation complete.
