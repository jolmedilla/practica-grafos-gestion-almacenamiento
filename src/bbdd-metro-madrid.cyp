match(n) detach delete(n);

CREATE (Legazpi:Estacion {nombre: 'Legazpi'})
CREATE (Delicias:Estacion {nombre: 'Delicias'})
CREATE (Palos:Estacion {nombre: 'Palos de la Frontera'})
CREATE (Embajadores:Estacion {nombre: 'Embajadores'})
CREATE (Lavapies:Estacion {nombre: 'Lavapiés'})
CREATE (Sol:Estacion {nombre: 'Sol'})
CREATE (Callao:Estacion {nombre: 'Callao'})
CREATE (Espanya:Estacion {nombre: 'Plaza de España'})
CREATE (VenturaRodriguez:Estacion {nombre: 'Ventura Rodríguez'})
CREATE (Arguelles:Estacion {nombre: 'Argüelles'})
CREATE (Moncloa:Estacion {nombre: 'Moncloa'})

CREATE (Cuatrocaminos:Estacion {nombre: 'Cuatro Caminos'})
CREATE (Canal:Estacion {nombre: 'Canal'})
CREATE (Quevedo:Estacion {nombre: 'Quevedo'})
CREATE (SanBernardo:Estacion {nombre: 'San Bernardo'})
CREATE (Noviciado:Estacion {nombre: 'Noviciado'})
CREATE (SantoDomingo:Estacion {nombre: 'SantoDomingo'})
CREATE (Opera:Estacion {nombre: 'Ópera'})
CREATE (Sevilla:Estacion {nombre: 'Sevilla'})
CREATE (BancoEspanya:Estacion {nombre: 'Banco de España'})
CREATE (Retiro:Estacion {nombre: 'Retiro'})
CREATE (Vergara:Estacion {nombre: 'Príncipe de Vergara'})
CREATE (Goya:Estacion {nombre: 'Goya'})
CREATE (ManuelBecerra:Estacion {nombre: 'ManuelBecerra'})

CREATE (RiosRosas:Estacion {nombre: 'Ríos Rosas'})
CREATE (Iglesia:Estacion {nombre: 'Iglesia'})
CREATE (Bilbao:Estacion {nombre: 'Bilbao'})
CREATE (Tribunal:Estacion {nombre: 'Tribunal'})
CREATE (GranVia:Estacion {nombre: 'Gran Vía'})
CREATE (Tirso:Estacion {nombre: 'Tirso de Molina'})
CREATE (AntonMartin:Estacion {nombre: 'Antón Martín'})

CREATE (Linea1:Linea {id:1, rutas:[1,2]})
CREATE (Linea2:Linea {id:2, rutas:[3,4]})
CREATE (Linea3:Linea {id:3, rutas:[5,6]})

//Linea 1
CREATE (Cuatrocaminos)-[:CONNECTS {id:47,ruta:1,tiempo:1}]->(RiosRosas),
       (RiosRosas)-[:CONNECTS {id:48,ruta:1,tiempo:1}]->(Iglesia),
       (Iglesia)-[:CONNECTS {id:49,ruta:1,tiempo:1}]->(Bilbao),
       (Bilbao)-[:CONNECTS {id:50,ruta:1,tiempo:1}]->(Tribunal),
       (Tribunal)-[:CONNECTS {id:51,ruta:1,tiempo:1}]->(GranVia),
       (GranVia)-[:CONNECTS {id:52,ruta:1,tiempo:1}]->(Sol),
       (Sol)-[:CONNECTS {id:53,ruta:1,tiempo:1}]->(Tirso),
       (Tirso)-[:CONNECTS {id:54,ruta:1,tiempo:1}]->(AntonMartin),
       (Cuatrocaminos)<-[:CONNECTS {id:55,ruta:1,tiempo:1}]-(RiosRosas),
       (RiosRosas)<-[:CONNECTS {id:56,ruta:1,tiempo:1}]-(Iglesia),
       (Iglesia)<-[:CONNECTS {id:57,ruta:1,tiempo:1}]-(Bilbao),
       (Bilbao)<-[:CONNECTS {id:58,ruta:1,tiempo:1}]-(Tribunal),
       (Tribunal)<-[:CONNECTS {id:59,ruta:1,tiempo:1}]-(GranVia),
       (GranVia)<-[:CONNECTS {id:60,ruta:1,tiempo:1}]-(Sol),
       (Sol)<-[:CONNECTS {id:61,ruta:1,tiempo:1}]-(Tirso),
       (Tirso)<-[:CONNECTS {id:62,ruta:1,tiempo:1}]-(AntonMartin)


// Linea 2
CREATE (Cuatrocaminos)-[:CONNECTS {id:21,ruta:3,tiempo:2}]->(Canal),
       (Canal)-[:CONNECTS {id:22,ruta:3,tiempo:1}]->(Quevedo),
       (Quevedo)-[:CONNECTS {id:23,ruta:3,tiempo:2}]->(SanBernardo),
       (SanBernardo)-[:CONNECTS {id:24,ruta:3,tiempo:2}]->(Noviciado),
       (Noviciado)-[:CONNECTS {id:25,ruta:3,tiempo:2}]->(SantoDomingo),
       (SantoDomingo)-[:CONNECTS {id:26,ruta:3,tiempo:2}]->(Opera),
       (Opera)-[:CONNECTS {id:27,ruta:3,tiempo:2}]->(Sol),
       (Sol)-[:CONNECTS {id:28,ruta:3,tiempo:2}]->(Sevilla),
       (Sevilla)-[:CONNECTS {id:29,ruta:3,tiempo:2}]->(BancoEspanya),
       (BancoEspanya)-[:CONNECTS {id:30,ruta:3,tiempo:2}]->(Retiro),
       (Retiro)-[:CONNECTS {id:31,ruta:3,tiempo:2}]->(Vergara),
       (Vergara)-[:CONNECTS {id:32,ruta:3,tiempo:2}]->(Goya),
       (Goya)-[:CONNECTS {id:33,ruta:3,tiempo:2}]->(ManuelBecerra),
       (Cuatrocaminos)<-[:CONNECTS {id:34,ruta:4,tiempo:1}]-(Canal),
       (Canal)<-[:CONNECTS {id:35,ruta:4,tiempo:2}]-(Quevedo),
       (Quevedo)<-[:CONNECTS {id:36,ruta:4,tiempo:2}]-(SanBernardo),
       (SanBernardo)<-[:CONNECTS {id:37,ruta:4,tiempo:2}]-(Noviciado),
       (Noviciado)<-[:CONNECTS {id:38,ruta:4,tiempo:2}]-(SantoDomingo),
       (SantoDomingo)<-[:CONNECTS {id:39,ruta:4,tiempo:2}]-(Opera),
       (Opera)<-[:CONNECTS {id:40,ruta:4,tiempo:2}]-(Sol),
       (Sol)<-[:CONNECTS {id:41,ruta:4,tiempo:2}]-(Sevilla),
       (Sevilla)<-[:CONNECTS {id:42,ruta:4,tiempo:2}]-(BancoEspanya),
       (BancoEspanya)<-[:CONNECTS {id:43,ruta:4,tiempo:2}]-(Retiro),
       (Retiro)<-[:CONNECTS {id:44,ruta:4,tiempo:2}]-(Vergara),
       (Vergara)<-[:CONNECTS {id:45,ruta:4,tiempo:2}]-(Goya),
       (Goya)<-[:CONNECTS {id:46,ruta:4,tiempo:2}]-(ManuelBecerra)

// Linea 3
CREATE (Legazpi)-[:CONNECTS {id:1,ruta:5,tiempo:3}]->(Delicias),
       (Delicias)-[:CONNECTS {id:2,ruta:5,tiempo:3}]->(Palos),
       (Palos)-[:CONNECTS {id:3,ruta:5,tiempo:3}]->(Embajadores),
       (Embajadores)-[:CONNECTS {id:4,ruta:5,tiempo:3}]->(Lavapies),
       (Lavapies)-[:CONNECTS {id:5,ruta:5,tiempo:3}]->(Sol),
       (Sol)-[:CONNECTS {id:6,ruta:5,tiempo:3}]->(Callao),
       (Callao)-[:CONNECTS {id:7,ruta:5,tiempo:3}]->(Espanya),
       (Espanya)-[:CONNECTS {id:8,ruta:5,tiempo:3}]->(VenturaRodriguez),
       (VenturaRodriguez)-[:CONNECTS {id:9,ruta:5,tiempo:3}]->(Arguelles),
       (Arguelles)-[:CONNECTS {id:10,ruta:5,tiempo:3}]->(Moncloa),
       (Legazpi)<-[:CONNECTS {id:11,ruta:6,tiempo:3}]-(Delicias),
       (Delicias)<-[:CONNECTS {id:12,ruta:6,tiempo:3}]-(Palos),
       (Palos)<-[:CONNECTS {id:13,ruta:6,tiempo:3}]-(Embajadores),
       (Embajadores)<-[:CONNECTS {id:14,ruta:6,tiempo:3}]-(Lavapies),
       (Lavapies)<-[:CONNECTS {id:15,ruta:6,tiempo:3}]-(Sol),
       (Sol)<-[:CONNECTS {id:16,ruta:6,tiempo:3}]-(Callao),
       (Callao)<-[:CONNECTS {id:17,ruta:6,tiempo:3}]-(Espanya),
       (Espanya)<-[:CONNECTS {id:18,ruta:6,tiempo:3}]-(VenturaRodriguez),
       (VenturaRodriguez)<-[:CONNECTS {id:19,ruta:6,tiempo:3}]-(Arguelles),
       (Arguelles)<-[:CONNECTS {id:20,ruta:6,tiempo:3}]-(Moncloa)