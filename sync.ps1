$source = "C:\Users\richa\AppData\Local\FactoryGame\Saved\SaveGames\server\DimmsDaleDiddyDome_autosave_0.sav"
$dest = "C:\SatisfactoryMap\public\latest.sav"
$repo = "C:\SatisfactoryMap"

while ($true) {
    Copy-Item $source $dest -Force

    cd $repo
    git add public/latest.sav
    git commit -m "Auto update: $(Get-Date -Format u)" --allow-empty
    git push origin master

    Start-Sleep -Seconds 300
}
