venv\Scripts\activate.ps1

Remove-Item dist -Recurse -ErrorAction Ignore

pyinstaller.exe --noconfirm --windowed --add-data "data/*;data/" --copy-metadata pyproj .\dcs_wp_editor.py

$compress = @{
  Path = "dist\dcs_wp_editor"
  CompressionLevel = "Fastest"
  DestinationPath = "dcs_wp_editor.zip"
}

Compress-Archive @compress

Remove-Item dist -Recurse -ErrorAction Ignore