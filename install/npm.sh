#!/bin/sh

#
# This script configures my Node.js development setup. Note that
# nvm is installed by the Homebrew install script.
#
# Also, I would highly reccomend not installing your Node.js build
# tools, e.g., Grunt, gulp, WebPack, or whatever you use, globally.
# Instead, install these as local devDepdencies on a project-by-project
# basis. Most Node CLIs can be run locally by using the executable file in
# "./node_modules/.bin". For example:
#
#     ./node_modules/.bin/webpack --config webpack.local.config.js
#

if test ! $(which nvm)
then
  echo "Installing a stable version of Node..."

  # Install the stable version of node.
  nvm install 6.6.0

  # Switch to the installed version
  nvm use 6.6.0

  # Use the stable version of node by default.
  nvm alias default 6.6.0
fi

# All `npm install <pkg>`` commands will pin to the version that was available at the time you run the command
npm config set save-exact = true

# Globally install with npm
packages=(
    diff-so-fancy
)

npm install -g "${packages[@]}"
