# oh-my-posh
$base = Split-Path -Path (Split-Path -Path (Get-Command oh-my-posh).Path -Parent) -Parent # Find the path to oh-my-posh
oh-my-posh init pwsh --config "$base\themes\catppuccin.omp.json" | Invoke-Expression

# Zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# Admin
function GoAdmin { Start-Process pwsh –Verb RunAs }

# PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

# PSReadLine
Set-PSReadLineOption -PredictionViewStyle ListView

# Clone a GitHub repo interactively using gh and fzf
function Select-GhClone {
    [CmdletBinding()]
    param(
        [switch]$Org
    )

    # Helper: Prompt and exit on empty selection
    function Ensure-Selection($selection, $message) {
        if (-not $selection) {
            Write-Host $message -ForegroundColor Yellow
            return $false
        }
        return $true
    }

    if ($Org) {
        # Select organization
        $selectedOrg = gh org list | fzf --prompt "Select organization: "
        if (-not (Ensure-Selection $selectedOrg "No organization selected. Aborting.")) { return }

        # Select repo from organization
        $selectedRepo = gh repo list $selectedOrg --limit 100 | fzf --prompt "Select repo: "
        if (-not (Ensure-Selection $selectedRepo "No repository selected. Aborting.")) { return }

        $repoName = $selectedRepo.Split()[0]
        gh repo clone $repoName
    }
    else {
        # Select repo from user (authenticated user)
        $selectedRepo = gh repo list --limit 100 | fzf --prompt "Select repo: "
        if (-not (Ensure-Selection $selectedRepo "No repository selected. Aborting.")) { return }

        $repoName = $selectedRepo.Split()[0]
        gh repo clone $repoName
    }
}

Set-Alias ghclone Select-GhClone


function Get-BWPassword {
    param(
        [string]$site
    )
    bw get password $site | clip
}

Set-Alias getbwpass Get-BWPassword


function Get-BWName {
    param(
        [string]$keyword
    )
    bw list items --search $keyword | ConvertFrom-Json | Select-Object -ExpandProperty name
}

Set-Alias getbwname Get-BWName