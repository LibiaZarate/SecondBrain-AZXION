#!/usr/bin/env bash
# Hook SessionStart — inyecta tu contexto vivo al abrir cada sesión.
#
# Esto es lo que hace que el sistema no dependa de que te acuerdes de nada:
# el agente arranca sabiendo dónde estabas, sin que se lo pidas.
#
# Instalación: .claude/hooks/arranque.sh + entrada SessionStart en .claude/settings.json
# Requiere: jq

set -euo pipefail

# El hook recibe un JSON por stdin que aquí no necesitamos.
cat >/dev/null || true

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$(pwd)}"
cd "$PROJECT_DIR"

ESTADO="$(cat memoria/estado-actual.md 2>/dev/null || echo 'SIN DATO — memoria/estado-actual.md no existe todavía.')"
FRONTERA="$(tail -60 memoria/frontera.md 2>/dev/null || echo 'SIN DATO — memoria/frontera.md no existe todavía.')"
COMMIT="$(git log -1 --oneline 2>/dev/null || echo 'sin commits')"

CTX="$(cat <<EOF
## memoria/estado-actual.md (dónde estamos, en prosa)

$ESTADO

## memoria/frontera.md (últimas entradas — lo último que pasó)

$FRONTERA

## Último commit

$COMMIT
EOF
)"

jq -n --arg ctx "$CTX" '{hookSpecificOutput: {hookEventName: "SessionStart", additionalContext: $ctx}}'
