# Install [de]activate scripts.
for F in activate deactivate; do
  mkdir -p "${PREFIX}/etc/conda/${F}.d"
  cp "${RECIPE_DIR}/${F}-${PKG_NAME}.sh" "${PREFIX}/etc/conda/${F}.d"
  cp "${RECIPE_DIR}/${F}-${PKG_NAME}.bat" "${PREFIX}/etc/conda/${F}.d"
done
