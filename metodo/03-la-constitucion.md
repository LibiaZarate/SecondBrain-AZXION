# 3 · La constitución

**El archivo que se lee siempre, antes que nada.**

Es el kernel del sistema. Define quién es el agente, cómo trabaja contigo, qué no debe
hacer nunca, y en qué orden arranca cada sesión.

En Claude Code este archivo se llama `CLAUDE.md` y se carga automáticamente. Si usas otro
agente, es el archivo de instrucciones de sistema. El nombre no importa; la función sí.

Plantilla lista para llenar: [`plantillas/CLAUDE.md`](../plantillas/CLAUDE.md).

---

## Qué lleva

| Sección | Qué resuelve |
|---|---|
| **Orden de arranque** | Qué archivos lee el agente antes de trabajar, en qué orden. Sin esto, cada sesión empieza sin memoria. |
| **Quién eres tú** | Tu rol, tu contexto, tus restricciones reales (tiempo, energía, capacidad). |
| **Reglas de interacción** | Cómo te habla, qué no hace sin permiso, cuándo pregunta. Las no negociables. |
| **El modelo de información** | Las [cuatro naturalezas](01-las-cuatro-naturalezas.md) y dónde vive cada cosa. |
| **Los comandos** | Qué existe y para qué sirve cada uno. |
| **La memoria** | Qué se guarda al cerrar y quién lo escribe. |
| **La línea roja** | Lo que nunca entra al repositorio. Credenciales, datos de terceros. |

---

## La regla que la gobierna

> **Mantenerla corta. Si crece, deja de leerse.**

No es minimalismo. Es costo: este archivo se carga **en cada sesión**, así que su tamaño
es un impuesto permanente. Y pasado cierto punto, las reglas compiten entre ellas y las
del medio dejan de pesar.

**Dos niveles que se apilan:**

- **Siempre presente** — la constitución. Corta, no negociable.
- **Bajo demanda** — el detalle. Documentos aparte que el agente abre cuando la tarea lo pide.

Cada vez que quieras agregar una regla, pregúntate qué sale. Si la respuesta es "nada",
probablemente no era una regla, era una preferencia.

---

## Las reglas que más rinden

De todo lo que he escrito en la mía, estas cuatro son las que más cambian el resultado:

1. **Feedback directo, cero suavizado.** Si algo está mal, se dice primero. Un agente que te valida no te sirve — para eso ya te tienes a ti.
2. **Plan → confirmación → ejecución.** No ejecuta sin que confirmes. Esta sola regla te ahorra el 90% de los desastres.
3. **Pregunta antes de generar.** Si no pregunta, va a asumir valores por defecto y va a escribir *sus* reglas, no las tuyas.
4. **Una sola fuente de verdad.** Si algo no está documentado, no se asume: se consulta.

---

## Por qué esto es lo mismo que vender

Si algún día quieres construir esto para un negocio que no es el tuyo, la constitución
es el entregable real.

Un negocio corre sobre criterios que viven en la cabeza del dueño: a quién le da prioridad,
cuándo hace una excepción, qué nunca hace. Nada de eso está escrito. Por eso el negocio
no puede operar sin él, y por eso su IA "no entiende".

Escribir esos criterios de forma que **un humano nuevo o una IA podrían ejecutarlos igual
de bien** es el trabajo entero. Lo demás es plomería.

Y hay una regla de oro cuando lo haces para alguien más: **nunca le dejes a la IA
intuición sobre criterios que no están definidos.** Si no está escrito, no lo inventa:
se lo pasa a un humano. La derivación es el escudo.

→ Siguiente: [la regla de crecimiento](04-la-regla-de-crecimiento.md).
