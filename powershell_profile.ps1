oh-my-posh init pwsh --config "$env:LOCALAPPDATA\Programs\oh-my-posh\themes\atomic.omp.json" | Invoke-Expression
Invoke-Expression (& { (zoxide init powershell | Out-String) })
function GoAdmin { Start-Process pwsh –Verb RunAs }

