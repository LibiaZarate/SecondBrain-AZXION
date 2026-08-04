# Empieza aquí

De cero a tu sistema corriendo. **La instalación son 15 minutos. Lo demás es la primera
semana de uso.**

---

## Lo que necesitas

- Un agente de código con acceso a tu carpeta. Yo uso **Claude Code**; el método funciona con cualquiera que pueda leer archivos y correr comandos.
- Git. No es opcional: es la memoria entre sesiones y tu única red de seguridad.
- Una carpeta. Nada más.

---

## Instalación — 15 minutos

### 1 · Crea la carpeta y el repositorio

```bash
mkdir mi-segundo-cerebro && cd mi-segundo-cerebro
git init
printf '.env\nnode_modules/\n.DS_Store\n' > .gitignore
git add . && git commit -m "inicio"
```

**El `.gitignore` va en el primer commit, antes de que exista nada que proteger.**
Es el [error nº 9](NO-FUNCIONA-ASI.md#9--meter-credenciales-al-repositorio) y no tiene
arreglo después.

### 2 · Copia la estructura

```bash
mkdir -p contexto data inteligencia memoria raw museo .claude/commands .claude/hooks
```

Qué va en cada una: [`plantillas/estructura/`](plantillas/estructura/README.md).

### 3 · Escribe tu constitución

Copia [`plantillas/CLAUDE.md`](plantillas/CLAUDE.md) a la raíz de tu carpeta como
`CLAUDE.md` y llena los campos entre corchetes.

**Es el único paso que no puedes saltarte ni delegar.** Son 20 minutos escribiendo quién
eres, cómo trabajas y qué no quieres que el agente haga nunca. Si lo dejas a medias, el
agente va a llenar los huecos con sus propios criterios y el sistema va a ser suyo, no tuyo.

Truco que funciona: en vez de escribirlo, dile a tu agente que te **entreviste** — una
pregunta a la vez — y que él lo redacte. Casi todos pensamos mejor hablando que escribiendo.

### 4 · Instala los comandos

```bash
cp plantillas/comandos/*.md .claude/commands/
```

Quedan disponibles como `/captura`, `/eod` y `/dolio`.

### 5 · Instala los hooks

```bash
cp plantillas/hooks/*.sh .claude/hooks/
chmod +x .claude/hooks/*.sh
```

Y crea `.claude/settings.json`:

```json
{
  "hooks": {
    "SessionStart": [{ "hooks": [{ "type": "command", "command": "bash \"$CLAUDE_PROJECT_DIR/.claude/hooks/arranque.sh\"", "timeout": 15 }] }],
    "SessionEnd":   [{ "hooks": [{ "type": "command", "command": "bash \"$CLAUDE_PROJECT_DIR/.claude/hooks/frontera.sh\"", "timeout": 15 }] }]
  }
}
```

Requiere `jq` (`brew install jq` en Mac).

**Estos dos archivos son la pieza más importante del paquete.** Uno carga tu contexto al
abrir sesión; el otro graba dónde quedaste al cerrarla. Son los que hacen que el sistema
[no dependa de que te acuerdes](NO-FUNCIONA-ASI.md#3--depender-de-que-te-acuerdes-de-alimentarlo).

### 6 · Comprueba que respira

Abre una sesión nueva y pregúntale a tu agente: *¿qué sabes de mí y de dónde lo sacaste?*

Si te contesta citando tu constitución, ya está corriendo.

---

## La primera semana

La instalación no es el trabajo. Esto sí:

**Día 1 — Un solo archivo de contexto.** Escribe en `contexto/` cómo funciona lo que
haces: qué decides a diario, con qué criterio, y qué haces cuando algo se rompe. Sin
formato bonito. Es el archivo que hace que todo lo demás sirva.

**Días 2 a 5 — Usa `/captura` con todo.** Cada nota, cada decisión, cada resultado.
No decidas dónde va nada: pégalo y deja que el agente clasifique y proponga. Vas a
descubrir que la mitad de lo que ibas a guardar no valía la pena, y eso también es
información.

**Cuando algo te dé flojera hacer a mano — `/dolio`.** No construyas nada todavía.
Regístralo. La primera vez es un evento, no un patrón.

**Al cerrar el día — `/eod`.** Cinco minutos hablando de cómo te fue. Al tercer día vas
a ver cosas de ti que no habías notado, porque alguien te las está leyendo de vuelta con
la evidencia enfrente.

**Al final de la semana, la única pregunta que importa:** *¿lo abriste sin obligarte?*

Si sí, el sistema encajó y ahora crece solo con lo que te duela.
Si no, sobra algo. Quita, no agregues.

---

## Qué NO hacer la primera semana

- **No construyas comandos nuevos.** Tres bastan. Los tuyos van a salir de lo que te duela, no de lo que imagines. Esa es [la regla de crecimiento](metodo/04-la-regla-de-crecimiento.md).
- **No rediseñes la estructura.** Va a dar comezón. Aguántate un mes: casi siempre lo que falla es que falta contexto escrito, no que sobren carpetas.
- **No metas tu vida entera de golpe.** Empieza por el área donde más te cuesta decidir. Un área que funciona vale más que cinco a medias.

---

## Si te atoras

Los tres puntos donde se cae la gente son, en orden:

1. **La constitución quedó vaga** → el agente inventa criterios. Vuelve al paso 3 y sé específica: reglas, no adjetivos.
2. **Estás organizando en vez de operar** → [error nº 1](NO-FUNCIONA-ASI.md#1--confundir-organizar-con-tener-un-sistema).
3. **Escribiste tu estado a mano** → [error nº 2](NO-FUNCIONA-ASI.md#2--escribir-a-mano-lo-que-debería-calcularse).

Casi todo lo que se rompe está en [NO-FUNCIONA-ASI](NO-FUNCIONA-ASI.md). Empieza ahí
antes de agregarle nada al sistema.
