Description
=========
This is an unofficial beamer latex theme with the Radboud University colours. See [example](example.pdf) for a preview.

Installation
=========

Installing themes is always a PITA for new users, and even for seasoned users with little experience in developing styles and installing them user- or system-wide, it can be hard to find some comforting texts on the internet that can help you.

The (for me) easy way was to add the directory with the style files to the search path (which can be shown with `kpsepath | tr ':' '\n'`). I first cloned the repository to my computer (`/Users/louis/presentations/rured/`). Then I filled the variable `TEXINPUTS: TEXINPUTS=/Users/louis/presentations/rured:`. If you add it in your `~/.profile` or `~/.bashrc` with `export`, it is even persistent ;-)

Then we run `sudo mktexlsr` and `sudo texhash`. To see whether it all works, try `kpsewhich beamerthemerured.sty`. For me it replied with `/Users/louis/presentations/rured/beamerthemerured.sty`

