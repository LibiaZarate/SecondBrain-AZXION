# Filosofía

Seis creencias. Todo lo demás en este repo sale de aquí.

---

## 1. El manual es el producto. La IA solo lo corre.

Los agentes no fallan por el modelo. Fallan porque **no existe el manual que el modelo
debería seguir.**

Cuando alguien dice "la IA no me entendió", casi siempre significa: *nunca escribí las
reglas que quería que siguiera*. La lógica vivía en mi cabeza en forma de intuición, y
la intuición no se puede ejecutar.

Escribir ese manual es el trabajo. Conectarlo a un modelo es lo fácil.

**Corolario incómodo:** si tu sistema depende de un modelo específico, no tienes un
sistema — tienes una suscripción. El manual sobrevive al cambio de modelo.

---

## 2. Si depende de tu voluntad, se muere.

Todo sistema personal que requiere que te acuerdes de alimentarlo termina abandonado.
No por falta de disciplina: por aritmética. Los días malos existen y son justo los días
en que más lo necesitas.

Por eso la información entra **por el mismo lugar por el que ya trabajas**, y el contexto
se carga **solo**. Si tengo que abrir una app aparte para "actualizar mi sistema", ya
perdí.

La prueba: tuve bloques de cierre de día agendados durante meses. Nunca los ejecuté.
El sistema no cambió cuando me volví más disciplinada — cambió cuando dejó de necesitar
mi disciplina.

---

## 3. La inteligencia se calcula. Nunca se escribe a mano.

Si estás escribiendo tu tablero de control a mano, no tienes un tablero: tienes una nota
que ya está desactualizada.

Todo lo que sea una conclusión —el estado del negocio, qué va bien, qué está estancado—
se **deriva** de la información base cada vez que lo pides. Nunca se teclea.

El día que escribes una conclusión a mano, tu sistema empieza a mentirte con tu propia
letra. Y le vas a creer, porque la escribiste tú.

---

## 4. Se construye lo que dolió. Nunca lo que suena bien.

La forma más rápida de matar un sistema personal es convertirlo en un segundo trabajo.

La regla: después de hacer algo a mano, pregúntate si el sistema pudo haberlo hecho más
fácil. **Si te dolió dos veces igual, se construye. Si solo suena interesante, no se toca.**

Que el trabajo pida la funcionalidad. Nunca al revés.

Esto es lo único que ha impedido que mi sistema crezca hasta volverse inmantenible. No
es una preferencia estética: es supervivencia.

---

## 5. Verifica contra la realidad, no contra tu suposición.

La cosa más cara que he aprendido, y la aprendí en producción.

Asumí cómo se veía la salida de un proceso, construí encima de esa suposición, y estuvo
mal. El error no se veía en ningún lado hasta que le llegó a una persona real.

Desde entonces: **nada se da por bueno porque tenga sentido.** Se corre, se mira la salida
real, y se compara. Que una explicación sea coherente no la hace cierta — sobre todo
cuando viene de un modelo que está entrenado para sonar coherente.

Aplícalo también hacia adentro: si tu agente te dice que arregló algo, pide la evidencia.

---

## 6. Cada error se vuelve un candado permanente.

Un sistema que comete el mismo error dos veces no está aprendiendo, está repitiendo.

Cuando algo falla, no basta con arreglarlo: se escribe **qué falló, por qué, y cuál es
la regla nueva que lo impide.** Esa regla entra al manual. La próxima vez el sistema ya
no puede volver a caer ahí, aunque tú lo hayas olvidado.

Con el tiempo eso forma una memoria de errores que vale más que cualquier documentación:
es lo único que un sistema copiado no tiene, porque nadie puede heredar tus cicatrices.

---

## El hilo que las une

Las seis dicen lo mismo desde ángulos distintos:

> **Un sistema sirve en la medida en que funciona cuando tú no estás
> pensando en él.**

Cuando estás cansada. Cuando es viernes. Cuando pasó algo y no tienes cabeza. Ahí se
mide si construiste un sistema o un pasatiempo.

→ Sigue con [los errores](NO-FUNCIONA-ASI.md), que es la versión negativa de todo esto.
