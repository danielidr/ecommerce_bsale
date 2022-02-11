## Desafio Bsale

Landing page que muestra productos agrupados por la categoría a
la que pertenecen.

Tiene un buscador donde se pueden encontrar los productos por su nombre mediante una API rest.

Esta aplicación se conecta de forma remota a la base de datos.

## Pre-requisitos
Ruby `2.5.3`<br/>
Rails `5.2.6`<br/>
mysql2

## API rest

Endpoint para obtener productos ordenados por categoria:
https://calm-hollows-79894.herokuapp.com/api/v1/all_categories

Endpoint para buscar productos por nombre:
https://calm-hollows-79894.herokuapp.com/api/v1/by_name/:nombre

Endpoint para buscar productos por categoria:
https://calm-hollows-79894.herokuapp.com/api/v1/by_category/:nombre_de_categoria

Endpoint para buscar productos por rango de precio:
https://calm-hollows-79894.herokuapp.com/api/v1/by_category/:precio1/:precio2

## Deployment:

### Clonar repositorio:
```
git clone https://github.com/danielidr/ecommerce_bsale
```
### Iniciar el servidor
```
rails s
```

### Heroku
https://https://calm-hollows-79894.herokuapp.com/