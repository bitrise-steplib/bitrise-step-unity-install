#!/bin/bash
set -e

echo "Installing Unity on macOS..."

# Check if unity_version and unity_version_changeset variables are set
if [[ -z "${unity_version}" || -z "${unity_version_changeset}" ]]; then
  echo "Error: Both unity_version and unity_version_changeset variables must be set."
  exit 1
fi

if [[ "$(uname)" != "Darwin" ]] ; then
  echo "This installation method is intended for macOS (Darwin) only."
  exit 1
fi

# Install Unity Hub using Homebrew Cask
echo "Installing Unity Hub using Homebrew Cask..."
if ! brew install --cask unity-hub; then
  echo "Error: Unity Hub installation failed."
  exit 1
fi
echo "Unity Hub Installation completed"

# Replace ${unity_version} and ${unity_version_changeset} with actual version and changeset values
echo "Installing Unity version ${unity_version} (changeset: ${unity_version_changeset})..."
if ! echo | /Applications/Unity\ Hub.app/Contents/MacOS/Unity\ Hub -- --headless install --version ${unity_version} --changeset ${unity_version_changeset}; then
  echo "Error: Unity version ${unity_version} installation failed."
  exit 1
fi
echo "Unity version ${unity_version} Installation completed."

echo "Installing iOS and Android modules for Unity version ${unity_version}..."
if ! /Applications/Unity\ Hub.app/Contents/MacOS/Unity\ Hub -- --headless install-modules --cm --version ${unity_version} -m ios android; then
  echo "Error: iOS and Android modules installation failed."
  exit 1
fi
echo "iOS and Android modules installation completed."

echo "Installation completed on macOS."
