// EJERCICIO 2

// Apartado 1.1: Nombre de clientes que han dado buenas opiniones de productos con precio 4.000
MATCH (c:Cliente)-[:GOOD]->(:Producto {precio:4000}) RETURN c.nombre AS `Nombre`

// Apartado 1.2: Circuitos de relaciones APOYA que empiecen y terminen en el mismo Cliente

// Solución general, sin especificar ningún Cliente concreto
MATCH path=(c:Cliente)-[:APOYA*]->(c:Cliente) RETURN nodes(path)

// Solución que toma con entrada los clientes encontrados en el apartado 1.1
// Nótese que no existe ninguno con un circuito de relaciones de tipo APOYA
MATCH (c:Cliente)-[:GOOD]->(:Producto {precio:4000})
WITH c
MATCH path=(c:Cliente)-[:APOYA*]->(c:Cliente) RETURN nodes(path)

// Apartado 1.3: Añadir relacióm APOYA entre Demetrio y Genara
// Podemos implementarlo de dos maneras diferentes:

//Opción 1: Utilizando la cláusula MERGE para lograr unicidad tanto en nodos como en la relación
MERGE (d:Cliente{nombre:"Demetrio"}) MERGE (g:Cliente {nombre:"Genara"}) MERGE (d)-[:APOYA]->(g) RETURN d,g

//Opción 2: Creando primero una restricción de unicidad en los nodos y la cláusula MERGE para la relación
//CREATE CONSTRAINT FOR (c:Cliente) REQUIRE c.nombre IS UNIQUE;

//MERGE (d:Cliente{nombre:"Demetrio"})-[:APOYA]->(g:Cliente{nombre:"Genara"}) RETURN d,g