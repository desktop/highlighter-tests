param (
    [Parameter(Mandatory = $true)]
    [string] $testRequiredParameter,
    [string] $testOptionalParameter = "false"

)
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
try {
    Write-Host "Required: '$testRequiredParameter' Optional: '$testOptionalParameter'"

    if ($testRequiredParameter -eq "") {
        $testOptionalParameter = "true"
    }

    exit $LASTEXITCODE
}
catch [Exception] {
    Write-Host $_.Exception.GetType().FullName, $_.Exception.Message
    exit 1
}
