# 1 · Las cuatro naturalezas

**El modelo de información. Es la pieza que ordena todo lo demás.**

Casi todos los sistemas personales se organizan por **tema** (trabajo, salud, proyectos)
o por **proyecto**. Los dos se rompen igual: cuando llega información nueva, no sabes
dónde va, porque toca tres temas a la vez.

Este método organiza por otra cosa: **cómo se comporta la información**.

---

## Las cuatro

Toda información es **una y solo una** de estas. Antes de escribir cualquier archivo,
decides cuál es.

| | Se comporta | Quién escribe | Ejemplo |
|---|---|---|---|
| **CONTEXTO** | Se **lee**. Cambia lento. | Tú | Cómo funciona tu negocio, quiénes son tus clientes, tus criterios |
| **DATA** | Se **acumula**. Cambia a diario. | El sistema y tú | Lo que pasó: llamadas, ventas, entregas, notas crudas |
| **INTELIGENCIA** | Se **genera**. Nunca a mano. | Solo el agente | El estado, el tablero, la conclusión, la prioridad |
| **OPERACIÓN** | Se **ejecuta**. | Tú y el agente | Los comandos, las rutinas, los automatismos |

```
contexto/       lo que sabes
data/           lo que pasó
inteligencia/   lo que se concluye  ← nunca se teclea
operacion/      lo que se ejecuta
```

---

## La regla dura

**`inteligencia/` jamás se escribe a mano.** Se calcula desde CONTEXTO + DATA, cada vez
que la pides.

Si estás escribiendo tu tablero a mano, no tienes un tablero: tienes una nota que ya
está desactualizada. Y como la escribiste tú, le vas a creer.

Esta es la regla que más gente rompe, porque escribir la conclusión es rápido y calcularla
exige haber guardado bien los hechos. Es exactamente por eso que funciona: **te obliga a
que la base esté bien.**

---

## Por qué esto importa más de lo que parece

Cuando la naturaleza está clara, tres cosas se resuelven solas:

1. **Dónde va cada cosa.** Deja de ser una decisión. Te preguntas cómo se comporta y ya.
2. **Qué se puede automatizar.** Lo que se acumula se captura solo. Lo que se concluye se genera solo. **Lo único que exige tu cabeza es el contexto** — tus criterios. Ahí es donde vale la pena tu tiempo, y solo ahí.
3. **Qué se borra.** La data cruda se destila y se vacía. El contexto se actualiza. La inteligencia se regenera y por eso es desechable.

---

## Aplicado a un negocio

La misma partición sirve para pensar cualquier operación, no solo tu carpeta:

| Naturaleza | La pregunta |
|---|---|
| CONTEXTO | ¿Qué **sabe** el negocio? (criterios, reglas, precios, políticas) |
| DATA | ¿Qué **acumula**? (conversaciones, pedidos, pagos, tickets) |
| INTELIGENCIA | ¿Qué **deduce**? (este cliente vale la pena, este canal no sirve) |
| OPERACIÓN | ¿Qué **ejecuta**? (contestar, agendar, cobrar, escalar a un humano) |

Si alguna de las cuatro está vacía, ahí está tu cuello de botella. Casi siempre es la
primera: el negocio *sabe* cosas que nunca se escribieron, y por eso nada de lo demás
puede correr sin el dueño.

---

## Dos carpetas de apoyo

- **`raw/`** — la bandeja de entrada. Todo lo crudo cae aquí y se **vacía** al destilarlo. Si `raw/` crece, el sistema se está tapando.
- **`museo/`** — patrones, no eventos. Lo que aprendiste sobre ti o sobre tu operación después de que algo pasó tres veces. Es lo único que no se borra nunca.

→ Siguiente: [el ciclo del dato](02-el-ciclo-del-dato.md), que es qué le pasa a la
información desde que entra.
