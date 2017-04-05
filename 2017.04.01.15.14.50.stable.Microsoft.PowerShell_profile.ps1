Set-StrictMode -Version Latest
$GLOBAL:ErrorActionPreference = "Inquire"
$GLOBAL:DebugPreference = "Inquire"

$d  = "c:\users"
$n  = $env:username
$m  = "$d\$n\powershell\pShellMain.psm1"

$GLOBAL:ACTIVATE_PROMPT = $null
if ( test-path $m -PathType leaf ) {
   $GLOBAL:profilem = $m
   import-Module $m
}
$GLOBAL:ACTIVATE_PROMPT = $true
