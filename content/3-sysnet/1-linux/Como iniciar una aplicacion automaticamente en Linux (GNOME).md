---
title: "Como iniciar una aplicacion automaticamente en Linux (GNOME)"
tags:
- linux
---

Cuando descargamos aplicaciones ejecutables en [[3-sysnet/1-linux/Linux-MoC|Linux]],  que no se instalan en el sistema y queremos iniciarlas en el login, hay un método creando un archivo .desktop como muestro a continuación:

### Crear o utilizar el archivo.desktop:

````bash
[Desktop Entry]
Name=Start Syncthing
GenericName=File synchronization
Comment=Starts the main syncthing process in the background.
Exec=/usr/bin/syncthing serve --no-browser --logfile=default
Icon=syncthing
Terminal=false
Type=Application
Keywords=synchronization;daemon;
Categories=Network;FileTransfer;P2P

````

### Copiar el archivo: 
A alguna o todas las siguientes ubicaciones (dependiendo del sistema operativo):

1.1. `/usr/share/application`

1.2. `/usr/local/share/applications`

1.3. `~/.local/share/applications`

Fuente: https://unix.stackexchange.com/questions/393079/gtk-launch-only-works-when-present-working-directory-is-desktop

### Instalar/actualizar los cambios en gnome:

````shell
desktop-file-install --dir=/home/brenton/.local/share/applications syncthing-start.desktop
update-desktop-database /home/brenton/.local/share/applications
````
(reemplazar ubicaciones por las nuestras)

### Enlazar el archivo
A la dirección que pusimos en nuestro archivo .desktop (si aplica)

````shell
sudo ln -s /home/user/Downloads/lugar/syncthing /usr/bin/syncthing
````
Fuente: https://askubuntu.com/questions/56339/how-to-create-a-soft-or-symbolic-link

### Verificar
Con este comando, que el gnome detecta la aplicación.

````shell
gtk-launch syncthing-start.desktop
````
Fuente: https://unix.stackexchange.com/questions/305795/how-can-i-run-a-desktop-file

### Reiniciar 
Al reiniciar podemos comprobar que el servicio debe estar corriendo!. Queda pendiente el cómo detenerlo después de su ejecución.


### Otras fuentes:

https://unix.stackexchange.com/questions/141436/too-many-levels-of-symbolic-links

