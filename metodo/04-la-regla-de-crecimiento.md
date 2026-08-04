# 4 · La regla de crecimiento

**No se construye lo que suena bien. Se construye lo que dolió.**

Esta es la regla que decide si tu sistema sigue vivo en seis meses o se convirtió en un
segundo trabajo que abandonaste.

---

## El mecanismo

Después de cualquier trabajo manual, una sola pregunta:

> *¿Esto lo podría haber hecho más fácil con el sistema?*

- **Sí** → se registra la fricción.
- **No** → no se toca nada.

Y luego se cuentan las veces:

| Veces | Qué se hace |
|---|---|
| **1ª** | Registrar. **No construir nada.** Una fricción que pasó una vez es un evento. |
| **2ª** | Evaluar. |
| **3ª** | Es un patrón. **Construir.** |

La disciplina está en la primera columna. Construir a la primera vez es el impulso natural
y es exactamente lo que hay que resistir.

Comando que lo implementa: [`plantillas/comandos/dolio.md`](../plantillas/comandos/dolio.md).
Registra la fricción, cuenta cuántas veces apareció y te propone qué construir solo si
ya es patrón.

---

## Qué construir, según qué dolió

| Tipo de fricción | Qué se construye |
|---|---|
| Tarea repetitiva **con criterio** | Un manual ejecutable (una *skill*) |
| Entrada de información recurrente | Un comando |
| Algo que debería pasar **sin que tú estés** | Un hook o una rutina |
| Información que buscas siempre en el mismo lado | Un archivo de contexto |
| Cálculo que haces a mano | Un generador de inteligencia |

Fíjate que en los cinco casos la solución es **pequeña**. Si tu respuesta a una fricción
es "necesito una aplicación", casi siempre es que aún no la entendiste.

---

## Por qué esta regla existe

Porque el modo de fallo más común de un sistema personal no es que sea malo. Es que
**crece hasta que mantenerlo cuesta más de lo que devuelve.**

Cada pieza que agregas se cobra para siempre: hay que entenderla, actualizarla y arreglarla
cuando se rompa. Una función que usas una vez al mes tiene costo de mantenimiento
permanente y beneficio ocasional.

Mi filtro fue brutal y no lo elegí yo: empecé una carrera de ingeniería con el negocio
corriendo. De golpe todo tenía que sobrevivir a semanas de cuatro horas, no de doce.
**Todo lo que pedía mantenimiento se murió solo.** Lo que quedó es lo que está en este repo.

Si tu sistema no sobrevive tu peor semana, no es tu sistema: es tu hobby de las semanas
buenas.

---

## El corolario

> **Que el trabajo pida la funcionalidad. Nunca al revés.**

Cuando el orden se invierte —cuando construyes primero y luego buscas dónde usarlo— ya
no estás construyendo un sistema para trabajar. Estás trabajando para el sistema.

→ Siguiente: [el loop de calidad](05-el-loop-de-calidad.md).
