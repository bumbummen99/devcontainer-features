#!/usr/bin/env bash
jq -c ".customizations.vscode.extensions |= .+ [\"$1\"]" devcontainer-feature.json > tmp.$$.json && mv tmp.$$.json devcontainer-feature.json