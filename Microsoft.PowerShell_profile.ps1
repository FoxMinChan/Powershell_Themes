Set-PSReadlineOption -Color @{
    "Command" = [ConsoleColor]::Green
    "Parameter" = [ConsoleColor]::Gray
    "Operator" = [ConsoleColor]::Magenta
    "Variable" = [ConsoleColor]::White
    "String" = [ConsoleColor]::Yellow
    "Number" = [ConsoleColor]::Blue
    "Type" = [ConsoleColor]::Cyan
    "Comment" = [ConsoleColor]::DarkCyan
}
Import-Module posh-git
$GitPromptSettings.DefaultPromptPrefix.Text = "$([char]0x2192) "
$GitPromptSettings.DefaultPromptPrefix.ForegroundColor = [ConsoleColor]::Green
$GitPromptSettings.DefaultPromptPath.ForegroundColor =[ConsoleColor]::Cyan
$GitPromptSettings.DefaultPromptSuffix.Text = "$([char]0x203A) "
$GitPromptSettings.DefaultPromptSuffix.ForegroundColor = [ConsoleColor]::Magenta
$GitPromptSettings.BeforeStatus.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.BranchColor.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.AfterStatus.ForegroundColor = [ConsoleColor]::Blue
$env:TERM = 'cygwin'
$env:TERM = 'FRSX'
$global:foregroundColor = 'white'
$time = Get-Date
$psVersion= $host.Version.Major
$curUser= (Get-ChildItem Env:\USERNAME).Value
$curComp= (Get-ChildItem Env:\COMPUTERNAME).Value
Import-Module PSReadLine
function Prompt {
        $prompt_text = "White"
        $prompt_background = "DarkMagenta"
        $prompt_git_background = "Yellow"
        $prompt_git_text = "Black"
        $git_string = "";
        git branch | foreach {
                if ($_ -match "^\* (.*)"){
                        $git_string += $matches[1]
                }
        }
        $git_status = "";
        git status --porcelain | foreach {
                $git_status = $_ 
        }

        if (!$git_string)       {
                $prompt_text = "White"
                $prompt_background = "DarkMagenta"
        }

        if ($git_status){
                $prompt_git_background = "DarkGreen"
        }
$curtime = Get-Date
$path = PWD
Write-Host $path -foregroundColor $prompt_text -backgroundColor $prompt_background -NoNewLine
if ($git_string){
        Write-Host  "$([char]57520)" -foregroundColor $prompt_background -NoNewLine -backgroundColor $prompt_git_background
        Write-Host  " $([char]57504) " -foregroundColor $prompt_git_text -backgroundColor $prompt_git_background -NoNewLine
        Write-Host ($git_string)  -NoNewLine -foregroundColor $prompt_git_text -backgroundColor $prompt_git_background
        Write-Host  "$([char]57520)" -foregroundColor $prompt_git_background
}
else{
        Write-Host  "$([char]57520)" -foregroundColor $prompt_background
}
Write-Host -NoNewLine "$" -foregroundColor Green
Write-Host -NoNewLine "[" -foregroundColor Yellow
Write-Host -NoNewLine ("{0:HH}:{0:mm}:{0:ss}" -f (Get-Date)) -foregroundColor $foregroundColor
Write-Host -NoNewLine "]" -foregroundColor Yellow
Write-Host -NoNewLine "$([char]955)" -foregroundColor Green

$host.UI.RawUI.WindowTitle = "PS >> User: $curUser >> Current DIR: $((Get-Location).Path)"

Return " "
}
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
