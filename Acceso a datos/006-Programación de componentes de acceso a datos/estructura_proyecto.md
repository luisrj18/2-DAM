# Estructura del Proyecto

- **147-Acabamos Modularizacion/**
    - **api/**
        - formulariosimulacro.html
        - index.php
        - ip.php
        - **inc/**
            - damepedidos.php
            - error.php
            - insertarcliente.php
    - **cliente/**
        - estilologin.css
        - index.php
        - login.js
        - **aplicaciones/**
            - **cms/**
            - **crm/**
            - **rrhh/**
            - **tiendaonline/**
        - **bi/**
            - download.php
            - ejecuta.php
            - index.html
        - **escritorio/**
            - comportamiento.js
            - estilo.css
            - index.html
            - **img/**
                - icono.png
                - iconosesion.png
                - LOGO LUROJI.jpeg
        - **img/**
            - LOGO LUROJI.jpeg
            - LUROJI.jpg
            - lurojilogo.png
        - **inc/**
            - blacklist.php
            - blacklist.txt
            - bloqueoip.php
            - esfirefox.php
            - geolocip.php
            - idiomas.php
            - morir.php
            - whitelist.php
        - **supercontrolador/**
            - comportamiento.js
            - estilo.css
            - index.php
            - **apps/**
                - apps.json
                - **clientes/**
                    - **ficha_de_cliente/**
                        - index.html
                    - **historico_de_compra/**
                        - index.html
                - **pedidos/**
                    - **detalle_de_pedido/**
                        - index.html
                    - **factura_del_pedido/**
                        - index.html
            - **ayuda/**
                - index.php
                - **materiales/**
                    - **1-Introduccion/**
                        - luroji.txt
                    - **2-Interfazynavegacion/**
                        - interfazynavegacion.txt
                    - **3-Funcionalidadesclave/**
                        - funcionalidades.txt
                    - **4-Soluciones de problemas/**
                        - soluciones.txt
                    - **5-Soporte/**
                        - tecnicoycontacto.txt
            - **img/**
                - icono.png
                - iconoborrar.png
                - iconoborrar2.png
                - iconocorreo.png
                - iconodocumento.png
                - iconoimprimir.png
                - iconoinforme.png
                - iconolupa.png
                - iconotabla.png
            - **js/**
                - cargaDatosColeccion.js
                - cargaDatosTabla.js
                - convierteTipoDato.js
                - funciones.js
                - poblarMenuNavegacion.js
                - pueblaTabla.js
            - **lib/**
                - **jvampliador/**
                    - jvampliador.css
                    - jvampliador.js
                    - personalizada.ttf
                - **JVGrafica/**
                    - JVGrafica.js
                - **jvtabla/**
                    - jvtabla.css
                    - jvtabla.js
                - **jvtooltip/**
                    - jvtooltip.css
                    - jvtooltip.js
                - **jvwysiwyg/**
                    - jvwysiwyg.css
                    - jvwysiwyg.js
                - **selectjv/**
                    - selectjv.css
                    - selectjv.js
            - **modulos/**
                - **cabecera/**
                    - cabecera.css
                    - cabecera.js
                    - cabecera.php
                - **cabeza/**
                    - cabeza.css
                    - cabeza.js
                    - cabeza.php
                - **cierre/**
                    - cierre.css
                    - cierre.js
                    - cierre.php
                - **email/**
                    - email.css
                    - email.js
                    - email.php
                - **librerias/**
                    - librerias.css
                    - librerias.js
                    - librerias.php
                - **modal/**
                    - modal.css
                    - modal.js
                    - modal.php
                - **navegacion/**
                    - navegacion.css
                    - navegacion.js
                    - navegacion.php
                - **piedepagina/**
                    - piedepagina.css
                    - piedepagina.js
                    - piedepagina.php
                - **principal/**
                    - principal.css
                    - principal.js
                    - principal.php
                - **seccionprincipal/**
                    - seccionprincipal.css
                    - seccionprincipal.js
                    - seccionprincipal.php
        - **traducciones/**
            - en.json
            - es-ES.json
    - **documentacion/**
        - 001-diagrama de flujo.svg
        - 002-diagrama de pila cliente servidor
        - 002-diagrama de pila cliente servidor.svg
        - 003-diagrama de pila cliente servidor con clase.svg
    - **endpointpublico/**
        - index.php
    - **formularios/**
        - envia.php
        - estilo.css
        - importar.php
        - index.php
        - panel.php
        - view.php
        - **docs/**
            - **clientes/**
                - 1738860101.json
                - 1738862542.json
            - **productos/**
                - 1738860280.json
                - 1738862506.json
        - **forms/**
            - clientes.json
            - productos.json
        - **lib/**
            - **jvvalidador/**
                - jvvalidador.css
                - jvvalidador.js
    - **servidor/**
        - ConectaMongo.php
        - ConexionDB.php
        - index.php
        - **anterior/**
            - columnas_tabla.php
            - datos_tabla.php
            - eliminar_dato.php
            - insertar.php
            - lista_aplicaciones.php
            - lista_tablas.php
            - log.txt
            - loginusuario.php
        - **lib/**
            - codificador.php
    - **utilidades/**
        - **importador/**
            - 001-leer archivo de excel.py
            - 002-leer contenido con pandas.py
            - 003-a diccionario.py
            - 004-navego por las claves.py
            - 005-saco los datos de las claves.py
            - 006-comentarios.py
            - 007-comienzo formateo de la peticion.py
            - 008-modifico el codigo para dos peticiones.py
            - 009-me conecto a la base de datos.py
            - 010-comentamos el codigo.py
            - 011-leemos el archivo del mapeado.py
            - 012-formateamos peticion.py
            - 013-repaso el diccionario.py
            - 014-inserto en MySQL.py
            - 015-ahora averiguo el id del cliente.py
            - 016-ahora averiguo la longitud de los datos.py
            - 017-crear interfaz de usuario.py
            - 018-creo variables.py
            - 019-llamo a la funcion con parametros.py
            - 020-comentarios.py
            - clientes.xlsx
            - mapeado.csv

# Documentación de Archivos

## api\formulariosimulacro.html

En este archivo creamos un simulacro para probar la API que hemos desarrollado para CRIMSON

## cliente\estilologin.css

Archivo que contiene los estilos generales aplicados en el login de la aplicación

## cliente\supercontrolador\js\cargaDatosTabla.js

CREO UNA FUNCIÓN PARA CARGAR DINÁMICAMENTE TABLAS /////////////////////////////////////////////

## cliente\supercontrolador\js\pueblaTabla.js

CREO UNA FUNCIÓN PARA POBLAR EL CONTENIDO DE LAS TABLAS /////////////////////////////////////////////

## cliente\supercontrolador\modulos\cabecera\cabecera.css

Estilos titulotabla

## cliente\supercontrolador\modulos\cabecera\cabecera.js

En este archivo encontramos las siguientes funciones:
	1.-Función de imprimir
	2.-Mostrar el panel de lógica de negocio
	3.-Mostrar la ayuda
	4.-Recargar la web al pulsar en el título

## cliente\supercontrolador\modulos\modal\modal.js

CLICK VENTANA MODAL PARA INSERTAR /////////////////////////////////////////////

## utilidades\importador\001-leer archivo de excel.py

pip install pandas

## utilidades\importador\002-leer contenido con pandas.py

pip install pandas
pip install openpyxl

## utilidades\importador\003-a diccionario.py

pip install pandas
pip install openpyxl

## utilidades\importador\004-navego por las claves.py

pip install pandas
pip install openpyxl

## utilidades\importador\005-saco los datos de las claves.py

pip install pandas
pip install openpyxl

## utilidades\importador\006-comentarios.py

pip install pandas                                    # Instalo esta librería para poder leer una gran cantidad de origenes de datos
pip install openpyxl                                  # Instalo esta librería para poder leer archivos nativos de Office

## utilidades\importador\007-comienzo formateo de la peticion.py

pip install pandas                                            # Instalo esta librería para poder leer una gran cantidad de origenes de datos
pip install openpyxl                                          # Instalo esta librería para poder leer archivos nativos de Office

## utilidades\importador\008-modifico el codigo para dos peticiones.py

pip install pandas                                                # Instalo esta librería para poder leer una gran cantidad de origenes de datos
pip install openpyxl                                              # Instalo esta librería para poder leer archivos nativos de Office

## utilidades\importador\009-me conecto a la base de datos.py

pip install pandas                                                # Instalo esta librería para poder leer una gran cantidad de origenes de datos
pip install openpyxl                                              # Instalo esta librería para poder leer archivos nativos de Office

## utilidades\importador\010-comentamos el codigo.py

pip install pandas                                                # Instalo esta librería para poder leer una gran cantidad de origenes de datos
pip install openpyxl                                              # Instalo esta librería para poder leer archivos nativos de Office

