#!/usr/bin/env bash
# Hook SessionEnd — graba dónde quedaste al cerrar la sesión.
#
# Es mecánico a propósito: no razona, solo vuelca el estado de git con una marca de
# tiempo. Es la red de seguridad para cuando el agente (o tú) olvide cerrar bien.
#
# Instalación: .claude/hooks/frontera.sh + entrada SessionEnd en .claude/settings.json

set -euo pipefail

# El hook recibe un JSON por stdin que aquí no necesitamos.
cat >/dev/null || true

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$(pwd)}"
FRONTERA="$PROJECT_DIR/memoria/frontera.md"
mkdir -p "$(dirname "$FRONTERA")"

TS="$(date '+%Y-%m-%d %H:%M')"
LAST_COMMIT="$(cd "$PROJECT_DIR" && git log -1 --oneline 2>/dev/null || echo 'sin commits')"
CHANGED="$(cd "$PROJECT_DIR" && git status --short 2>/dev/null | head -20 || true)"

{
  echo ""
  echo "## $TS"
  echo "- Último commit: $LAST_COMMIT"
  if [ -n "$CHANGED" ]; then
    echo "- Cambios sin commitear:"
    echo '```'
    echo "$CHANGED"
    echo '```'
  else
    echo "- Sin cambios pendientes de commit."
  fi
} >> "$FRONTERA"
