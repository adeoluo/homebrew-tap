# Records docs/demo/audit.gif from a real run: `vhs docs/demo/audit.tape` from the repo root.
Output docs/demo/audit.gif
Set WaitTimeout 180s
Set WaitPattern /\$\s*$/
Set Shell "bash"
Set FontSize 15
Set Width 1300
Set Height 560
Set Padding 18
Set Theme "Catppuccin Mocha"
Set TypingSpeed 22ms

Hide
Type `export PS1='$ ' HOMEBREW_NO_AUTO_UPDATE=1 HOMEBREW_NO_ENV_HINTS=1 && brew style adeoluo/tap >/dev/null 2>&1; clear` Enter
Sleep 2s
Sleep 2s
Type `clear` Enter
Sleep 1s
Show
Type `brew tap-info adeoluo/tap` Enter
Wait
Sleep 2s
Type `brew style adeoluo/tap 2>/dev/null` Enter
Wait
Sleep 2s
