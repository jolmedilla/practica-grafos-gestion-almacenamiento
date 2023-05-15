
MATCH (l:Linea), (:Estacion {nombre:'Sol'})-[c:CONNECTS]-() WHERE c.ruta IN l.rutas RETURN distinct(l.id) AS `Lineas que pasan por Sol`

// Búsqueda de camino más corto entre Quevedo y Legazpi por número de tramos
MATCH
  (Quevedo:Estacion {nombre: 'Quevedo'}),
  (Legazpi:Estacion {nombre: 'Legazpi'}),
  camino =shortestPath((Quevedo)-[:CONNECTS*]->(Legazpi))
WITH camino
UNWIND relationships(camino) as tramo
MATCH (l:Linea)
  WHERE tramo.ruta IN l.rutas
RETURN l.id AS Linea, startNode(tramo).nombre AS `Comienzo de tramo`, endNode(tramo).nombre AS `Final de tramo`, tramo.tiempo+' minutos' AS `Duración del tramo`

// Duración del camino más corto entre Quevedo y Legazpi por número de tramos
MATCH
  (Quevedo:Estacion {nombre: 'Quevedo'}),
  (Legazpi:Estacion {nombre: 'Legazpi'}),
  camino =shortestPath((Quevedo)-[:CONNECTS*]->(Legazpi))
RETURN reduce(duracion = 0, r IN relationships(camino) | duracion + r.tiempo) AS `Duración del trayecto más corto, por nº de tramos, entre Quevedo y Legazpi`

// Búsqueda de camino más corto entre Quevedo y Legazpi por duración del trayecto
MATCH (Quevedo:Estacion {nombre: 'Quevedo'}),
      (Legazpi:Estacion {nombre: 'Legazpi'}),
      camino = (Quevedo)-[:CONNECTS*]->(Legazpi)
WITH reduce(duracion = 0, r IN relationships(camino) | duracion + r.tiempo) AS duracion, camino
ORDER BY duracion LIMIT 1
WITH camino
UNWIND relationships(camino) as tramo
MATCH (l:Linea)
  WHERE tramo.ruta IN l.rutas
RETURN l.id AS Linea, startNode(tramo).nombre AS `Comienzo de tramo`, endNode(tramo).nombre AS `Final de tramo`, tramo.tiempo+' minutos' AS `Duración del tramo`

// Duración del camino más corto entre Quevedo y Legazpi por duración del trayecto
MATCH (Quevedo:Estacion {nombre: 'Quevedo'}),
      (Legazpi:Estacion {nombre: 'Legazpi'}),
      camino = (Quevedo)-[:CONNECTS*]->(Legazpi)
WITH reduce(duracion = 0, r IN relationships(camino) | duracion + r.tiempo) AS duracion, camino
  ORDER BY duracion LIMIT 1
RETURN duracion AS `Duración del trayecto más corto, por tiempo, entre Quevedo y Legazpi`
