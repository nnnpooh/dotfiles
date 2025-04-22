# oh-my-posh
oh-my-posh init pwsh --config "$env:LOCALAPPDATA\Programs\oh-my-posh\themes\atomic.omp.json" | Invoke-Expression

# Zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# Admin
function GoAdmin { Start-Process pwsh –Verb RunAs }

# PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

# PSReadLine
Set-PSReadLineOption -PredictionViewStyle ListView

# Clone github repo
function Select-GhOrgRepo {
    $selectedOrg = gh org list | fzf
    if ($selectedOrg) {
        $seletedRepo = gh repo list $selectedOrg | fzf
    }
    gh repo clone $seletedRepo.Split()[0]    
}
Set-Alias ghclone Select-GhOrgRepo