match(n) detach delete(n);

CREATE (Bertoldo:Cliente {nombre:'Bertoldo', edad:33})
CREATE (Herminia:Cliente {nombre:'Herminia', edad:34})
CREATE (Aniceto:Cliente {nombre:'Aniceto', edad:49})
CREATE (Calixta:Cliente {nombre:'Calixta', edad:19})
CREATE (Melibeo:Cliente {nombre:'Melibeo', edad:43})
CREATE (Genara:Cliente {nombre:'Genara', edad:46})
CREATE (Amadea:Cliente {nombre:'Amadea', edad:33})
CREATE (Clotilde:Cliente {nombre:'Clotilde', edad:19})
CREATE (Tiburcio:Cliente {nombre:'Tiburcio', edad:24})
CREATE (Demetrio:Cliente {nombre:'Demetrio', edad:18})
CREATE (Nicodemo:Cliente {nombre:'Nicodemo', edad:51})
CREATE (TV:Producto {id:1,descr:'TV 3D, 200 pulgadas', precio:4000})
CREATE (Maleta:Producto {id:2,descr:'Maleta inteligente, lava la ropa', precio:370})
CREATE (Tostadora:Producto {id:3,descr:'Tostadora 5G, unta la mantequilla sola', precio:230})
CREATE (Clotilde)-[:BAD {id:1}]->(TV),
       (Clotilde)-[:BAD {id:2}]->(Maleta),
       (Clotilde)-[:BAD {id:3}]->(Tostadora),
       (Clotilde)-[:APOYA {id:4}]->(Melibeo),
       (Clotilde)-[:APOYA {id:5}]->(Melibeo),
       (Bertoldo)-[:BAD {id:6}]->(TV),
       (Bertoldo)-[:BAD {id:7}]->(Maleta),
       (Nicodemo)-[:BAD {id:8}]->(TV),
       (Nicodemo)-[:GOOD {id:9}]->(Maleta),
       (Nicodemo)-[:BAD  {id:10}]->(Tostadora),
       (Demetrio)-[:GOOD {id:11}]->(TV),
       (Demetrio)-[:APOYA {id:12}]->(Tiburcio),
       (Demetrio)-[:BAD {id:13}]->(Tostadora),
       (Tiburcio)-[:GOOD {id:14}]->(TV),
       (Tiburcio)-[:GOOD {id:15}]->(Maleta),
       (Tiburcio)-[:BAD {id:16}]->(Tostadora),
       (Amadea)-[:BAD {id:17}] ->(TV),
       (Amadea)-[:APOYA {id:18}] ->(Clotilde),
       (Amadea)-[:BAD {id:19}]->(Tostadora),
       (Genara)-[:BAD {id:20}]->(TV),
       (Genara)-[:APOYA {id:21}]->(Amadea),
       (Genara)-[:BAD {id:22}]->(Maleta),
       (Genara)-[:BAD {id:23}]->(Tostadora),
       (Melibeo)-[:BAD {id:24}]->(TV),
       (Melibeo)-[:APOYA {id:25}]->(Genara),
       (Melibeo)-[:BAD {id:26}]->(Tostadora),
       (Calixta)-[:GOOD {id:27}]->(TV),
       (Calixta)-[:APOYA {id:28}]->(Genara),
       (Calixta)-[:BAD {id:29}]->(Tostadora),
       (Aniceto)-[:GOOD {id:30}]->(TV),
       (Aniceto)-[:APOYA {id:31}]->(Genara),
       (Aniceto)-[:BAD {id:32}]->(Tostadora),
       (Aniceto)-[:GOOD {id:33}]->(Maleta)


