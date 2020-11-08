# Base para Actividad 5

- [Base para Actividad 5](#base-para-actividad-5)
  - [Introducción](#introducción)
  - [Nota importante](#nota-importante)
  - [Ejecución](#ejecución)
    - [Local](#local)
    - [Docker](#docker)

## Introducción

Repositorio base para el desarrollo de la actividad 5 sobre tests de mutación del ramo *IIC3745 - Testing*. Este contiene:

- Configuraciones para `rspec`, `simplecov` y `mutant`
- Código base y una bateria pequeña de pruebas bajo cobertura de linea de *SimpleCov*
- Configuraciones de *Docker* para evitar errores de compatibilidad.

## Nota importante

El *codebase* fue pensado bajo una filosofía *plug & play*. Es decir, se creó para evitar que tuvieran que lidiar con la compatibilidad entre versiones de *Ruby* / *RSpec* / *mutant* y la configuración de esta última gema.

Por lo anterior, se debe utilizar `ruby v2.6.6` (más info [en este link](https://github.com/mbj/mutant#ruby-versions)) y es **CRUCIAL QUE NO MODIFIQUEN LO SIGUIENTE**:

- Las versiones de las gemas
- Las ubicaciones de los archivos
- Las configuraciones en `.rspec` o `spec/spec_helper.rb`

Dicho de otro modo, lo único que pueden modificar son los archivos de `./app` o `./spec/dcc_burger_spec.rb`.

Cualquier configuración que no siga las instrucciones anteriores puede traer incompatibilidades entre `mutant` y `rspec`, esto agrega mucha complejidad la realización de la actividad y puede traer problemas en la corrección (revisar sección *Formato de entrega* del enunciado).

## Ejecución

Se ha dispuesto de dos sets de instrucciones para la ejecución de los tests normales y de mutación del repositorio (local y con *Docker*).

Se recomienda usar *Docker* para evitar cualquier problema de compatibilidad, pero la modalidad local debiera funcionar si no tienen nada raro instalado.

Si tienen cualquier problema con la ejecución, siéntanse libres de plantear su duda en el [foro del curso](https://github.com/IIC3745-2020-2/syllabus/issues)

### Local

1. Instalar `ruby@2.6.6`. Lo más simple es hacer uso de un *manager* de versiones tales como `rbenv` o `rvm`.
  
2. Instalar las gemas
   
    ```
    bundle install
    ```

3. Cambiar los permisos del "binario" para poder ejecutarlo

    ```
    chmod +x ./bin/*
    ```

Luego, ejecutar las pruebas de mutación con `./bin/mutate` y/o las pruebas normales con `rspec` o `bundle exec rspec`.

### Docker

1. Construir contenedor
   
    ```
    docker build -t iic3745-2020-2/a05-base .
    ```

2. Entrar a sesión de `bash` dentro del contenedor
   
    ```
    docker run -it --rm --name a05-base -v "$(pwd):/tester" iic3745-2020-2/a05-base
    ```

Luego, ejecutar las pruebas de mutación con `./bin/mutate` o `mutate` y/o las pruebas sin mutación con `rspec` o `bundle exec rspec`.

Para la ejecución se monta un volumen, por lo que el contenedor siempre correrá las pruebas en base a los archivos más recientes (sin necesidad de hacer `docker build` o `docker run` nuevamente).
