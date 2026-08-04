# La estructura de carpetas

Siete carpetas. Ni una más al principio.

```
mi-segundo-cerebro/
├── CLAUDE.md          la constitución — se lee siempre, antes que nada
├── .gitignore         con .env desde el primer commit
├── contexto/          lo que SABES        · se lee · cambia lento
├── data/              lo que PASÓ         · se acumula · cambia a diario
├── inteligencia/      lo que se CONCLUYE  · se genera · nunca a mano
├── memoria/           dónde estás y qué decidiste
├── raw/               bandeja de entrada — se destila y se VACÍA
├── museo/             patrones, no eventos — lo único que no se borra
└── .claude/
    ├── commands/      tus comandos
    ├── hooks/         arranque.sh + frontera.sh
    └── settings.json  cablea los hooks
```

---

## Qué va en cada una

### `contexto/` — lo que sabes
Cómo funciona tu operación, tus criterios, tus clientes o proyectos, tus reglas de decisión.
**Se lee mucho, se escribe poco.** Es la carpeta que hace que el agente entienda tu mundo.

Si tu sistema no sirve, empieza mirando aquí: casi siempre está vacía.

### `data/` — lo que pasó
Los hechos. Resultados, registros, notas ya destiladas, métricas. Se acumula.
Nunca conclusiones: solo lo que ocurrió.

### `inteligencia/` — lo que se concluye
El estado, los tableros, los análisis. **Se genera con un comando, jamás se teclea.**
Todo lo de aquí es desechable: si se borra, se vuelve a calcular. Si no se puede volver
a calcular, es que no era inteligencia — era data mal guardada.

### `memoria/` — la continuidad entre sesiones
```
memoria/
├── estado-actual.md      dónde estamos, en prosa · lo escribe el agente al cerrar
├── frontera.md           lo último que pasó, mecánico · lo escribe el hook
└── decisiones/           qué se decidió, cuándo y por qué · nunca se borra
```
Es lo que convierte sesiones sueltas en un sistema con historia.

### `raw/` — la bandeja de entrada
Todo lo crudo cae aquí: audios, transcripciones, capturas, pegotes. Se destila y **se vacía**.

**Si `raw/` crece, tu sistema se está tapando.** Es el mejor indicador temprano de que algo
dejó de funcionar.

### `museo/` — los patrones
No eventos: patrones. Lo que aprendiste sobre cómo trabajas después de que algo pasó tres
veces. Aquí vive también la bitácora de errores.

Es lo único que nunca se borra, y con el tiempo es lo más valioso del sistema.

---

## Dos reglas sobre la estructura

**1. No la rediseñes el primer mes.** Va a dar comezón. Casi siempre lo que falla no es
que sobren carpetas: es que `contexto/` está vacío.

**2. Una carpeta nueva se gana, no se planea.** Si no sabes con certeza qué va adentro,
todavía no la necesitas.

---

## Los archivos vacíos del arranque

Crea estos dos desde el día 1 para que los hooks tengan dónde escribir:

```bash
mkdir -p memoria/decisiones
echo "# Estado actual\n\nRecién instalado. Sin trabajo registrado todavía." > memoria/estado-actual.md
touch memoria/frontera.md
```
