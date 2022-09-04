![foca-monje-mauritania-kTJB--620x349@abc](https://user-images.githubusercontent.com/110724649/188311666-d6742476-eef7-4635-b2c6-a2426e4fa37a.jpg)


# Proyecto semana 4, ETL.

## La finalidad de este proyecto es realizar cada uno de los pasos del concepto ETL: extraer, transformar y cargar datos. 
Como instrucciones se tiene:
 -Utilizar mínimo dos metodos de etracción de datos
 -Utilizar mínimo tres fuentes diferentes desde donde extraer los datos.
 -Llevar los resultados a una base de datos como SQL


En este caso, las fuentes han sido la página web de la UICN de españa, la página web "http://www.vertebradosibericos.org", que recoge una enciclopedia digital de los vertebrados de España, y para terminar wikipedia y un documento del BOE.

Respecto a los métodos de extracción el primero ha sido a partir de una base de datos de excel descargada en la página web de la UICN, y el segundo ha sido mediante scrapeo de las páginas web restantes. El scrapeo ha sido realizado con BeautifulSoup y con Selenium.

El proceso de limpieza de los datos está detallado en el archivo "main_W4_mamiferos.ipynb" así como la extracción y la exportación a SQL.
El proceso realizado en SQL está detallado en el archivo "SQL-W4.sql"

La presentación del proyecto con las tablas resumen constituye el archivo "presentacion-W4.pdf"

