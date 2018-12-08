rem Install [de]activate scripts.
for %%F in (activate deactivate) do (
  if not exist "%PREFIX%\etc\conda\%%F.d" mkdir "%PREFIX%\etc\conda\%%F.d"
  if errorlevel 1 exit 1

  copy "%RECIPE_DIR%\%%F-%PKG_NAME%.bat" "%PREFIX%\etc\conda\%%F.d"
  if errorlevel 1 exit 1

  copy "%RECIPE_DIR%\%%F-%PKG_NAME%.sh" "%PREFIX%\etc\conda\%%F.d"
  if errorlevel 1 exit 1
)
