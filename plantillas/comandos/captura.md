---
description: Comando por defecto — clasifica y rutea cualquier información cruda (texto, transcripción, decisión, idea, link, resultado)
---

**Uso:** `/captura` + pega cualquier información cruda.
Texto, transcripción, decisión, mensaje, idea, link, resultado, lo que sea.

**Este es el comando por defecto.** Quien lo usa no decide dónde va nada. Tú lo decides.

Info recibida:

$ARGUMENTS

---

## Qué haces

### 1 · TRIAGE
Identifica qué es y por qué entró:
- ¿Qué **naturaleza** tiene? → CONTEXTO / DATA / INTELIGENCIA / OPERACIÓN
- ¿A qué **área o proyecto** pertenece?
- ¿A qué persona o cliente, si aplica?

Si no puedes clasificarlo con confianza, **pregunta**. No adivines.

### 2 · DESTILA
Saca solo lo que importa. Si es una transcripción, el 90% es ruido.
No conserves el formato original. Conserva el **contenido operativo**.

### 3 · ESTANDARIZA
Llévalo al molde del sistema. Si es un aprendizaje sobre un proyecto, va con el mismo
formato que el resto de aprendizajes. Si es un dato recurrente, va con el formato de
ese tipo de dato.

### 4 · DERIVA
**Esta es la parte que casi todos se saltan.** Pregúntate:
- ¿Esto cambia algo que ya está escrito? → **actualiza ese archivo, no crees uno nuevo.**
- ¿Esto genera una acción? → escríbela explícita, con dueño y fecha.
- ¿Esto contradice algo del sistema? → **alerta. No lo resuelvas solo.**
- ¿Esto es un patrón o un evento? → si ya pasó tres veces, es patrón → `museo/`.

### 5 · PROPAGA
Un solo dato entrante puede tocar varias cosas. Búscalas activamente.

> Ejemplo: alguien mueve una reunión.
> → cambia el calendario
> → hay que cancelar lo que seguía
> → hay que avisarle a otra persona
> → cambia el plan de la semana
> → lo que ibas a producir con el resultado de esa reunión ya no aplica

**No te quedes en el primer efecto.**

---

## Salida

Responde siempre en este formato:

```
CLASIFICACIÓN
  Naturaleza: [CONTEXTO/DATA/INTELIGENCIA/OPERACIÓN]
  Área: [cuál]
  Proyecto/persona: [si aplica]

DESTILADO
  [lo que importa, en 3-8 líneas]

ARCHIVOS A TOCAR
  - ruta/archivo.md  →  [crear / actualizar]  →  [qué cambia]

PROPAGACIONES DETECTADAS
  - [qué más cambia por esto]

ACCIONES DERIVADAS
  - [ ] acción · dueño · cuándo

CONTRADICCIONES
  [si algo choca con lo que ya existe. Si no hay, escribe "ninguna".]
```

**Espera confirmación antes de escribir.**
