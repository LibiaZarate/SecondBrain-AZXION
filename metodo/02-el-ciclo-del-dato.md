# 2 · El ciclo del dato

**Qué le pasa a la información desde que entra. Sin excepciones.**

```
ENTRA → TRIAGE → DESTILA → ESTANDARIZA → DERIVA → PROPAGA
```

La mayoría de los sistemas hacen los primeros tres pasos y se detienen. Los dos últimos
son los que separan un archivero de un sistema.

---

## 1 · Triage — ¿qué es esto y por qué entró?

Se clasifica por [naturaleza](01-las-cuatro-naturalezas.md), por área y por proyecto o
persona si aplica.

**Si no se puede clasificar con confianza, se pregunta.** No se adivina. Un dato mal
clasificado contamina todo lo que se derive de él después.

## 2 · Destila — el 90% es ruido

Una transcripción de una hora tiene tres frases que importan. Una conversación larga
tiene una decisión.

No se conserva el formato original, se conserva el **contenido operativo**. Guardar todo
"por si acaso" es la forma más común de volver inservible un sistema: cuando todo está
guardado, nada se encuentra.

## 3 · Estandariza — llévalo al molde

Si es un aprendizaje sobre un cliente, va con el mismo formato que el resto de aprendizajes.
Si es un dato de ventas, va con el formato de ventas.

Formato consistente = el agente puede leerlo sin instrucciones cada vez. La consistencia
no es estética: es lo que lo hace ejecutable.

## 4 · Deriva — **el paso que casi todos se saltan**

Cuatro preguntas obligatorias:

- ¿Esto **cambia algo ya escrito**? → actualiza ese archivo, no crees uno nuevo. (Archivos duplicados con verdades distintas = el sistema empieza a contradecirse.)
- ¿Esto **genera una acción**? → escríbela explícita, con dueño y fecha.
- ¿Esto **contradice** algo del sistema? → **alerta. No lo resuelvas solo.** Una contradicción es información valiosa; resolverla en silencio la destruye.
- ¿Es un **patrón o un evento**? → si ya pasó tres veces, es patrón y va al museo.

> Si de un dato no se hace nada, no tienes un sistema: tienes un baúl.

## 5 · Propaga — busca el segundo efecto

Un solo dato puede tocar cinco cosas. Hay que buscarlas activamente.

> **Ejemplo:** un cliente mueve una llamada.
> → cambia tu calendario
> → hay que cancelar lo que estaba después
> → hay que avisarle a alguien
> → cambia el plan de la semana
> → el contenido que ibas a publicar con lo que saliera de esa llamada ya no aplica

**No te quedes en el primer efecto.** Este es el único paso del ciclo que no se puede
automatizar con reglas: exige un razonador. Es, literalmente, para lo que sirve tener
un agente y no un script.

---

## Cómo se usa en la práctica

Esto no se ejecuta a mano paso por paso. Se convierte en **un comando** al que le pegas
cualquier cosa cruda y él hace el ciclo completo:
[`plantillas/comandos/captura.md`](../plantillas/comandos/captura.md).

La regla que lo hace funcionar: **tú no decides dónde va nada.** Pegas la información
cruda y el agente clasifica, destila, propone dónde va y qué se deriva. Tú solo confirmas.

En el momento en que tienes que pensar dónde guardar algo, ya perdiste — porque ese es
exactamente el momento en que decides no guardarlo.

→ Siguiente: [la constitución](03-la-constitucion.md).
