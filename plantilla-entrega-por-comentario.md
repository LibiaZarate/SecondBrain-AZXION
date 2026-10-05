---
name: entrega-por-comentario
description: Entrega un recurso por mensaje directo a quien comenta una palabra clave en una publicación de Instagram, deja activo el disparador para quienes comenten después, y responde en público cada comentario avisando que revise sus mensajes. Úsalo siempre que el dueño de la cuenta diga algo como «en tal publicación van a comentar X palabra, manda este recurso», «ya comentaron X y no se les mandó», «prende el disparador de esta palabra», «mándales este enlace por mensaje» o «contéstales en los comentarios», aunque no nombre ninguna herramienta.
---

# Entrega por comentario — recurso por mensaje + respuesta pública

> Plantilla de AZXION · libia zárate · azxion.com
> Pégala en tu propio asistente y adáptala. Las reglas valen para cualquier herramienta;
> lo único que cambia son los comandos de la plataforma que uses como puente.

## Qué resuelve

Publicas algo que pide comentar una palabra. Quien la comenta debe recibir **dos cosas**:

1. **El recurso por mensaje directo.** Ahí vive el valor y ahí empieza la conversación.
2. **Una respuesta pública en su comentario.** El mensaje directo cae en *solicitudes* si la persona no te sigue, y mucha gente no las revisa. La respuesta pública es lo que convierte un envío en una entrega, y de paso quien pasa por los comentarios ve que sí entregas.

Las dos, siempre. Un disparador que solo manda el mensaje privado parece que funciona y deja gente fuera en silencio.

## Antes de configurar nada

Completa esto. Si algo queda vacío, no sigas: el hueco se va a esconder tres pasos adelante.

| Dato | Tu valor |
|---|---|
| Cuenta de Instagram (profesional: creador o empresa) | |
| Plataforma puente con acceso por programa | |
| Publicación: su identificador | |
| Palabra clave | |
| Enlace del recurso (permanente y público) | |
| Texto del mensaje directo | |
| Frases de respuesta pública (varias, para que no se lean iguales) | |

**La plataforma puente debe poder hacer cuatro cosas.** Si le falta una, no sirve para esto:
leer comentarios **con paginación**, responder comentarios en público, enviar mensajes
directos, y crear disparadores de comentario a mensaje.

## El orden que no se rompe

Cada paso tiene una comprobación. Si no pasa, detente.

1. **Conecta la cuenta profesional a la plataforma puente.** → Comprueba: lista tus publicaciones reales con sus identificadores.
2. **Genera la llave de acceso por programa** y guárdala fuera de cualquier carpeta que se comparta o se versione. → Comprueba: una consulta de solo lectura responde.
3. **Publica el recurso en una dirección permanente.** → Comprueba: **ábrelo en una ventana privada, sin tu sesión**. Si pide acceso, no sigues. Un documento restringido responde igual que uno abierto; lo que cambia es lo que ve la otra persona.
4. **Elige la palabra y escribe el mensaje.** → Comprueba: la palabra no aparece dentro de palabras comunes, y el mensaje no vende nada todavía.
5. **Publica la pieza y después crea el disparador**, con el mensaje privado y la respuesta pública. → Comprueba: queda activo. El disparador solo se puede crear cuando la publicación ya existe, porque antes no tiene identificador.
6. **Atiende a mano a quien comentó antes de que el disparador existiera.** → Comprueba: cada comentario tiene respuesta visible en la publicación.
7. **Deja una revisión periódica** que recorra todas tus palabras activas y reponga lo que falte. → Comprueba: termina diciendo cero pendientes, verificado contra la publicación.

**El paso 7 es el que convierte esto en un sistema.** Sin él tienes una automatización que
solo cubre lo que pasó después de encenderla, y te enteras de los huecos cuando alguien se queja.

## Las reglas de ejecución

Cuando te pidan atender una palabra, haz esto en orden:

1. **Resuelve la publicación** por su enlace, su identificador o un pedazo de su texto. Si hay varias candidatas, pregunta en vez de adivinar.
2. **Verifica el enlace del recurso**: que abra y que no pida acceso. **Si está privado, no mandes nada** y dilo.
3. **Crea o actualiza el disparador** con el mensaje y la frase pública. Registra variantes de la palabra: con y sin acento, mayúsculas, plural y el error de dedo más probable.
4. **Lee TODOS los comentarios**, recorriendo todas las páginas. La primera suele traer una docena, y con esa sola vas a auditar una fracción creyendo que está completo.
5. **Filtra por palabra completa, no por subcadena**, y normalizando acentos antes de comparar.
6. **Cruza contra lo ya enviado** antes de mandar: el historial del disparador, tu propio registro y, como última red, el rechazo de la plataforma al duplicado.
7. **Manda el mensaje y responde en público**, variando la frase entre personas.
8. **Anota cada envío en tu registro**: quién, qué, cuándo.
9. **Verifica contra la publicación**, no contra el acuse de envío. Que la plataforma conteste «enviado» no prueba que la persona lo tenga.
10. **Reporta aparte los comentarios que se parecen y no cruzaron** (quien escribió la palabra muy distinto). No se les manda por parecido —sería adivinar—, pero tampoco se ignoran: que decida una persona.

## Lo que te va a morder

Nada de esto está en la documentación. Cada línea costó una entrega perdida o un número falso.

| El límite | Qué hacer con él |
|---|---|
| **La respuesta privada solo funciona dentro de los 7 días del comentario** | Revisar pronto y seguido. Un comentario que descubres al día ocho está perdido |
| **Una sola respuesta privada por comentario** | Sirve de red: un reintento se rechaza en vez de duplicar |
| **El mensaje cae en solicitudes** si la persona no te sigue, y no genera conversación visible hasta que responde | Por eso la respuesta pública no es opcional, y por eso tu registro propio importa |
| **La lista de comentarios viene por páginas** | Recorrer todas, siempre |
| **El historial del disparador viene recortado**: muestra las últimas entradas aunque haya mandado cientos | No usarlo como prueba de que algo falta. Para el total, el contador; para el detalle, tu registro |
| **Los disparadores buscan la palabra dentro del texto** | Elegir palabras distintivas. En tus revisiones, comparar por palabra completa |
| **Los acentos rompen las comparaciones**: una palabra con acento no contiene a la misma sin él | Normalizar antes de comparar |
| **El conteo de comentarios incluye tus respuestas** | Nunca compararlo contra tus envíos sin separarlas |
| **Nada es retroactivo** | Se cuenta desde que queda instalado |

## Cómo se escribe el mensaje

Dos tiempos, acuse corto y **una** pregunta operativa con opciones. Ejemplo de forma:

> ¡Hola! Gracias por comentar [PALABRA]
>
> Aquí está [qué es el recurso, en media línea]: [enlace]
>
> Una pregunta rápida: hoy, ¿[la pregunta], en [opción A], [opción B] o [opción C]?

**El mensaje que entrega no vende.** Una oferta dentro del mismo mensaje lo convierte en
publicidad y mata la conversación. El permiso para ofrecer va en el mensaje siguiente,
cuando la persona ya contestó. Y una pregunta con opciones se contesta con una palabra;
una pregunta abierta se queda sin contestar.

Frases para la respuesta pública, que conviene rotar: *«Listo, revisa tus DMs»* ·
*«Ya te lo mandé por DM, checa tus mensajes»* · *«Va en tu DM»* · *«Checa tu DM, ahí te lo
dejé»* · *«Ya está en tus mensajes, revisa también las solicitudes»*.

## Lo que este manual NO hace

- **No decide el recurso ni el argumento de venta.** Entrega; no vende.
- **No contesta las respuestas que llegan.** Eso lo trabaja una persona: es donde está el negocio.
- **No manda archivos adjuntos.** Instagram solo acepta texto y enlaces en el mensaje: todo viaja como enlace.

## Línea roja

Tu llave de acceso **nunca** entra a un repositorio, a un documento ni a un mensaje. Vive
en un archivo de configuración local o en una variable de entorno. Y los datos de las
personas que te comentan no salen de tu plataforma: para operar no hace falta guardar
nombres ni correos, basta el identificador del comentario.
