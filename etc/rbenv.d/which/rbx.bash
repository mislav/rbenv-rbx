if [ ! -x "$RBENV_COMMAND_PATH" ] && [[ $RBENV_VERSION == "rbx-2"* ]]; then
  if [[ $RBXOPT == "-X"* ]]; then
    rbx_mode="${RBXOPT:2:4}"
  else
    # FIXME: this can vary depending on the default mode that Rubinius was compiled with!
    rbx_mode=1.9
  fi
  export RBENV_COMMAND_PATH="${RBENV_ROOT}/versions/${RBENV_VERSION}/gems/${rbx_mode}/bin/${RBENV_COMMAND}"
fi
