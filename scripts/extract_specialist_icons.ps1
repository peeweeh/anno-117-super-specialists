# Extract lines from assets.xml containing specialist icon paths for roman_male, roman_female, celtic_male, celtic_female

$assetsPath = Join-Path $PSScriptRoot "..\..\.references-big\assets.xml"
$outputPath = Join-Path $PSScriptRoot "extracted_specialist_icons.txt"

if (Test-Path $assetsPath) {
    $matchingLines = Get-Content $assetsPath | Where-Object { $_ -match "items_specialist/(roman_male|roman_female|celtic_male|celtic_female)" }
    $matchingLines | Out-File -FilePath $outputPath -Encoding UTF8
    Write-Host "Extracted $($matchingLines.Count) lines to $outputPath"
} else {
    Write-Host "assets.xml not found at $assetsPath"
}