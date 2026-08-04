# No funciona así

Nueve formas de construir un segundo cerebro que no sirve.

Las cometí todas. Algunas dos veces. Varias costaron dinero o le llegaron a un usuario
real antes de que yo me diera cuenta.

Esta es la parte del repo que no vas a encontrar en un tutorial, porque para escribirla
hay que haber roto cosas en producción.

---

## 1 · Confundir organizar con tener un sistema

**El síntoma:** llevas tres semanas diseñando la estructura de carpetas. Tienes etiquetas,
colores, un índice hermoso. Cuando alguien pregunta qué hace tu sistema, la respuesta es
"guarda todo lo importante".

**Por qué falla:** un archivero no toma decisiones. Puedes tener diez años de notas
perfectamente clasificadas y seguir empezando cada día desde cero, porque nada de eso
te dice qué hacer hoy.

Lo peor es que *se siente* productivo. Organizar da una satisfacción inmediata que
construir no da, y por eso mucha gente se queda ahí para siempre.

**Qué hacer:** antes de mover una sola carpeta, escribe qué le vas a **preguntar** al
sistema. Si no hay pregunta, no hay sistema. Y si nada de lo que guardas se convierte
en acción, no eres dueña de un segundo cerebro: eres dueña de un baúl.

---

## 2 · Escribir a mano lo que debería calcularse

**El síntoma:** tienes un archivo con el estado de tu negocio, tus métricas o tus
prioridades, y lo actualizas tecleando.

**Por qué falla:** el día que lo escribes es correcto. Al tercer día ya miente. Y como
lo escribiste tú, con tu propia letra y tu propia confianza, le vas a creer.

Un dato viejo con formato de conclusión es peor que no tener nada, porque no se ve viejo.

**Qué hacer:** separa lo que **se acumula** (los hechos: lo que pasó, cuánto, cuándo) de
lo que **se concluye** (el estado, la tendencia, la prioridad). Lo primero se guarda. Lo
segundo se **genera** cada vez que lo pides, desde lo primero.

Regla dura: si tu agente puede calcularlo, tú no lo escribes. Nunca.

---

## 3 · Depender de que te acuerdes de alimentarlo

**El síntoma:** el sistema funciona cuando le dedicas tiempo. Tienes un bloque agendado
para "actualizar mi segundo cerebro". Llevas semanas sin ejecutarlo y ya no quieres abrirlo,
porque abrirlo significa ponerte al corriente.

**Por qué falla:** no es falta de disciplina, es aritmética. Van a existir días malos,
semanas de examen, meses en que todo se junta. Y son justo los días en que más lo
necesitas. Un sistema que se cae ahí se cae cuando importa.

Yo tuve bloques de cierre de día agendados durante meses. Nunca los ejecuté. Ni una vez.

**Qué hacer:** que la información entre por donde ya trabajas, no por un lugar aparte.
Y que el contexto se cargue **solo** al abrir la sesión, sin que tú lo pidas.

En este método eso lo resuelven [los dos hooks](plantillas/hooks/): uno carga tu estado
al empezar, otro graba dónde quedaste al terminar. Ninguno de los dos necesita que te
acuerdes de nada. Son diez líneas de shell y son la pieza que mantiene vivo todo lo demás.

---

## 4 · Construir lo que suena bien

**El síntoma:** leíste sobre una técnica nueva y pasaste el domingo implementándola.
Tu sistema tiene funciones que usaste una vez, el día que las construiste.

**Por qué falla:** cada pieza que agregas es mantenimiento que se cobra para siempre.
Un sistema personal que exige mantenimiento se convierte en un segundo trabajo, y los
segundos trabajos se abandonan.

**Qué hacer:** la regla de las dos veces. Después de hacer algo a mano, pregúntate si
el sistema pudo haberlo hecho más fácil. La primera vez, anótalo y no construyas nada —
una fricción que pasó una vez es un evento, no un patrón. **Si vuelve a doler igual,
ahí sí se construye.**

Que el trabajo pida la funcionalidad, nunca al revés. Es la única regla que impide que
esto crezca hasta ahogarte.

---

## 5 · Automatizar antes de auditar

**El síntoma:** quieres automatizar un proceso que hoy haces a mano, y lo primero que
abres es la herramienta de automatización.

**Por qué falla:** **automatizar sin auditar solo escala el caos.** Si el proceso manual
tiene tres excepciones no escritas y un criterio que solo vive en tu cabeza, lo que vas
a automatizar es un proceso incompleto — pero ahora corriendo cien veces más rápido y
sin nadie mirando.

**Qué hacer:** primero mapea lo que pasa hoy de verdad (no lo que crees que pasa), incluidas
las excepciones y el "depende". Después escríbelo. Hasta entonces, automatiza.

Si al escribirlo descubres que no puedes explicar cómo decides algo, ese es exactamente
el punto que no se automatiza todavía.

---

## 6 · Darle permiso de escritura a un agente autónomo

**El síntoma:** configuras una rutina que revisa algo sola y le das permisos amplios
"para que no tenga que estar aprobando cada cosa".

**Por qué falla:** me pasó. Dejé corriendo un monitor con permiso de escritura sobre un
sistema en producción. Encontró un problema real, decidió que la solución era obvia, y
**publicó el cambio a producción él solo.** El diagnóstico era correcto. La decisión de
publicar no le tocaba.

Un agente no distingue entre "puedo hacer esto" y "me corresponde hacer esto". Esa
frontera existe solo si tú la escribes.

**Qué hacer:** separa leer de escribir. **Analizar, diagnosticar y proponer: autónomo.
Cualquier cosa que toque producción, dinero o a otra persona: gate humano, siempre.**

No es desconfianza en el modelo. Es que el costo de los dos errores no es simétrico:
un diagnóstico equivocado se descarta; un cambio equivocado en producción ya le llegó
a alguien.

---

## 7 · Construir sobre la forma que supusiste

**El síntoma:** sabes cómo se ve la salida de ese proceso. Construyes la siguiente pieza
encima. Todo tiene sentido y todo está coherente.

**Por qué falla:** la forma real era distinta. Y como todo lo demás encajaba lógicamente,
el error no apareció hasta que le llegó a un usuario real.

Los modelos empeoran esto: están entrenados para sonar coherentes. Una explicación
convincente de por qué algo funciona no es evidencia de que funcione.

**Qué hacer:** córrelo y **mira la salida real** antes de construir encima. Nunca simules
la forma que supones que tiene un dato: pídele al sistema el dato de verdad.

Y cuando tu agente te diga que ya lo arregló, pídele la evidencia. "Ya quedó" no es un
resultado, es una opinión.

---

## 8 · La constitución que creció hasta que nadie la lee

**El síntoma:** tu archivo de instrucciones tiene 900 líneas. Le has ido agregando cada
aclaración durante meses. Y el agente empieza a ignorar cosas que están escritas ahí.

**Por qué falla:** ese archivo se carga en **cada** sesión, así que su tamaño es un
impuesto que pagas siempre. Pasado cierto punto las reglas compiten entre ellas, y las
del medio dejan de pesar. Una regla que no se aplica es peor que una que no existe:
crees que estás cubierta.

**Qué hacer:** la constitución se mantiene **corta a propósito**. Si crece, deja de leerse.

Dos niveles: lo que se lee siempre (corto, no negociable) y lo que se lee bajo demanda
(el detalle, en archivos aparte que el agente abre cuando hace falta). Cada vez que
agregues una regla, pregúntate qué sale.

---

## 9 · Meter credenciales al repositorio

**El síntoma:** el sistema funciona, lo subes a GitHub para respaldarlo, y el archivo de
configuración con las llaves se va con todo lo demás.

**Por qué falla:** lo hice. Un repositorio público mío tiene una llave de base de datos
en el historial. **Y borrar el archivo no la borra** — queda en los commits anteriores
para siempre. La única salida real es rotar la llave.

**Qué hacer:** un `.gitignore` con `.env` desde el **primer** commit, antes de que exista
nada que proteger. Las llaves viven en variables de entorno, jamás en un archivo versionado.

Y la regla que las cubre a todas: **entra la lógica, nunca el dato.** Tu sistema puede
saber cómo decides sin guardar la información privada de nadie. Esa separación es la que
te deja compartir tu método sin exponer tu negocio — este repo existe gracias a ella.

---

## Lo que tienen en común

Siete de los nueve son la misma cosa vista de distinto ángulo:

> **Confundir lo que se siente productivo con lo que produce.**

Organizar se siente bien. Agregar funciones se siente bien. Automatizar rápido se siente
bien. Escribir tus conclusiones a mano se siente bien.

Lo que de verdad mueve —definir cómo decides, escribir lo que solo está en tu cabeza,
verificar contra la realidad— casi siempre se siente lento.

Esa asimetría es la trampa. Todo el método está diseñado alrededor de ella.

→ Si te reconociste en varios, [empieza aquí](EMPIEZA-AQUI.md).
