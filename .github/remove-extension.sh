#!/usr/bin/env bash
jq -c "del(.customizations.vscode.extensions | select(. == \"$1\"))" devcontainer-feature.json > tmp.$$.json && mv tmp.$$.json devcontainer-feature.json