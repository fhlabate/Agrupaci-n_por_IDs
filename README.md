# Agrupar por ID 🔍

Algo que mis profesores me han machacado mucho a la hora de hacer análisis descriptivos, es el cuidado que hay que tener a la hora de agrupar. 
En este post quiero ejemplificar de manera clara un error muy común a la hora de agrupar por un campo que puede tener repeticiones. 
Para ello creé una base de datos de ventas de dispositivos electrónicos con clientes de varias ciudades del mundo y me interesa saber en que ciudad se están generando mayores ventas.
La tendencia es agrupar por ciudad y vemos que el resultado es la ciudad de Córdoba.
Ahora bien ¿Qué pasa cuando agrupamos por ID? observamos que Córdoba tiene 3 IDs distintos 🤔
Esto es porque dicho nombre pertenece a ciudades de 3 países diferentes (Argentina, España y México)...

Hay veces que con el apuro a encontrar resultados, omitimos estos detalles y nos puede pasar también en usuarios o productos con el mismo nombre.

¿Te pasó alguna vez de haber ejecutado una agrupación incorrecta? 😲

Dejame tu comentario en la publicación de linkedin 👉
