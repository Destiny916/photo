#!/usr/bin/env bash
set -euo pipefail
repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
install -d -m 700 "$HOME/.local/bin" "${XDG_CONFIG_HOME:-$HOME/.config}/codex-imagegen"
install -m 700 "$repo_dir/bin/codex-imagegen" "$HOME/.local/bin/codex-imagegen"
credentials="${XDG_CONFIG_HOME:-$HOME/.config}/codex-imagegen/credentials"
if [[ ! -e "$credentials" ]]; then
  install -m 600 "$repo_dir/config/credentials.example" "$credentials"
  printf '%s\n' "Created $credentials; replace YOUR_API_KEY before use."
fi
printf '%s\n' "Installed $HOME/.local/bin/codex-imagegen"
