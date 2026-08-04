# 5 · El loop de calidad

**Cómo se mejora un sistema sin adivinar.**

```
DEFINIR el resultado deseado → MEDIR contra él → CORREGIR → REPETIR
```

Suena obvio. Casi nadie lo hace, porque el primer paso es el difícil.

---

## 1 · Definir el resultado deseado

No "que funcione bien". Algo que se pueda **verificar sin discutir**.

- ❌ *"que el sistema me ayude a organizarme"*
- ✅ *"cero mensajes sin responder en más de cinco minutos"*
- ✅ *"cada lunes sé qué pasó la semana pasada sin reconstruirlo de memoria"*

Si no puedes decir cómo se vería el fracaso, no definiste un resultado: escribiste un deseo.

## 2 · Medir contra él

Contra el resultado que escribiste, no contra tu impresión de cómo va. La impresión
depende de tu ánimo del día.

Aquí es donde sirve tener la [data separada de la inteligencia](01-las-cuatro-naturalezas.md):
los hechos están guardados, así que la medición se calcula. No se opina.

## 3 · Corregir

Lo que funcionó, se deja correr y se escala. Lo que no, **se corta**.

Cortar es la parte que duele, sobre todo si te costó construirlo. Pero un sistema que
solo acumula es el modo de fallo de la [regla de crecimiento](04-la-regla-de-crecimiento.md).

---

## La regla que sostiene el loop entero

> **Verifica contra la ejecución real, no contra tu suposición.**

Es la más cara que he aprendido y la aprendí en producción: construí encima de la forma
que **supuse** que tenía la salida de un proceso. La forma real era otra. Como todo lo
demás encajaba lógicamente, el error no apareció hasta que llegó a un usuario real.

En la práctica:

- **Nunca simules la forma de un dato.** Corre el proceso y mira la salida de verdad.
- **"Ya quedó" no es evidencia.** Es una opinión. Pide la corrida que lo demuestra.
- **Coherente ≠ correcto.** Los modelos están entrenados para sonar coherentes. Una explicación convincente de por qué algo funciona no prueba que funcione.

Esto aplica igual a tu agente que a ti. La mayoría de mis errores caros empezaron con
una explicación que sonaba bien.

---

## La bitácora de errores

**Un sistema que comete el mismo error dos veces no está aprendiendo: está repitiendo.**

Cuando algo falla, arreglarlo no basta. Se escribe:

```
QUÉ FALLÓ      el síntoma, como se vio
POR QUÉ        la causa real, no la primera explicación que sonó bien
LA REGLA       qué se hace distinto a partir de ahora
CÓMO SE VERIFICA   cómo sabemos que no volvió a pasar
```

Y **la regla entra a la constitución.** Ahí está el punto: el error deja de depender de
tu memoria y se vuelve un candado permanente del sistema.

Con el tiempo esto forma la parte más valiosa de todo tu segundo cerebro. Es lo único
que alguien no puede copiarte, porque nadie puede heredar tus cicatrices.

---

## Dónde poner el gate humano

El loop corre solo hasta cierto punto. La frontera:

| Autónomo | Gate humano |
|---|---|
| Leer, analizar, diagnosticar | Publicar a producción |
| Proponer cambios | Cualquier cosa que toque dinero |
| Generar borradores y reportes | Cualquier cosa que le llegue a otra persona |
| Detectar que algo se rompió | Decidir cómo arreglarlo en vivo |

Lo aprendí por las malas: [el monitor autónomo que publicó solo](../NO-FUNCIONA-ASI.md#6--darle-permiso-de-escritura-a-un-agente-autónomo).

El costo de los dos errores no es simétrico. Un diagnóstico equivocado se descarta;
un cambio equivocado en producción ya le llegó a alguien.

→ Con esto ya tienes el método completo. Para montarlo: [EMPIEZA-AQUI](../EMPIEZA-AQUI.md).
