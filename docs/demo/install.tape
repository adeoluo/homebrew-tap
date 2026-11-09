# Records docs/demo/install.gif from a real run: `vhs docs/demo/install.tape` from the repo root.
Output docs/demo/install.gif
Set WaitTimeout 180s
Set WaitPattern /\$\s*$/
Set Shell "bash"
Set FontSize 15
Set Width 1300
Set Height 480
Set Padding 18
Set Theme "Catppuccin Mocha"
Set TypingSpeed 22ms

Hide
Type `export PS1='$ ' HOMEBREW_NO_AUTO_UPDATE=1 HOMEBREW_NO_ENV_HINTS=1 && clear` Enter
Sleep 10s
Show
Type `brew info --formula adeoluo/tap/corpus-dedup | head -n 3` Enter
Wait
Sleep 2s
Type `vectordb --version && corpus-dedup --version && agent-sandbox --version` Enter
Wait
Sleep 2s
