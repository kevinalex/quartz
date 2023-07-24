#!/bin/bash

# Ruta de la carpeta fuente que deseas copiar
source_folder="/home/adminkev/Documents/obsidianvault1/Kevin"

# Ruta de la carpeta destino donde se copiarán los archivos
destination_folder="/home/adminkev/Documents/quartz/content"


# Comprobamos si la carpeta fuente existe
if [ ! -d "$source_folder" ]; then
    echo "La carpeta fuente no existe."
    exit 1
fi

# Comprobamos si la carpeta destino existe, si no, la creamos
if [ ! -d "$destination_folder" ]; then
    mkdir -p "$destination_folder"
fi

# Copiamos los archivos y carpetas de la carpeta fuente a la carpeta destino
# utilizando rsync con la opción "--exclude-from" para excluir los archivos especificados en "export-ignore.txt"
rsync -av --exclude-from='/home/adminkev/Documents/obsidianvault1/export-ignore.txt' "$source_folder/" "$destination_folder/"

echo "Copia completada."
