PREFIX=${CURDIR}/debian/openapp-phpmyadmin-installer

install:
# bin
	mkdir -p $(PREFIX)/usr/bin
	cp openapp-phpmyadmin-passwd $(PREFIX)/usr/bin

#openapp-backupmodule
	mkdir -p $(PREFIX)/usr/lib/openapp-backup/modules
	cp openapp-backup/* $(PREFIX)/usr/lib/openapp-backup/modules
	chmod +x $(PREFIX)/usr/lib/openapp-backup/modules

#man
	mkdir -p $(PREFIX)/usr/share/man/man1
	cp debian/openapp-phpmyadmin-passwd.1 $(PREFIX)/usr/share/man/man1

uninstall:
# bin
	rm -rf $(PREFIX)/usr/bin/openapp-phpmyadmin-passwd
	rm -rf $(PREFIX2)/usr/lib/openapp-backup/modules/openapp-phpmyadmin-installer
	rm -rf $(PREFIX)/usr/share/man/man1/openapp-phpmyadmin-passwd.1.gz

clean:
	-echo "NOP"

 

