Trying to find a convenient way to browse through repo with fzf

`gh repo view $(gh repo list | fzf | %{$_.Split()[0]})`