# :wrench: `dotfiles`

These are the `dotfiles` and packages I use.
Feel free to do pull requests and other suggestions.

Files:
- `.bashrc`: general `bash` configuration file.
- `.bash_profile`: imports `.bashrc`, since macOS uses the first to load the bash profile.
- `.bash/`: folder with general `bash` configurations, import by `.bashrc`.
- `.curlrc`: `curl` configuration file.
- `.gitconfig`: general Git configuration file.
- `.gitignore_global`: files that Git will ignore.
- `.vimrc`: general Vim configuration file.
- `.vim/`: folder with Vim plugins and themes.
- `.Xresources`: X11 terminal configuration file.
- `.ssh/`: folder with SSH configuration.
- `.utils/`: folder with some utilities.
- `Vouga.itermcolors`: iTerm 2 color theme.
- `Vouga.terminal`: macOS Terminal.app color theme.

Just clone the contents of the repository to your ```$HOME``` folder.
```
git clone https://github.com/pbmartins/dotfiles ~/
```

Don't forget to edit your git personal info using:
```
git config --global user.name "Your Name Here"
git config --global user.email youremail@example.com
```

To apply Vim preferences and install packages, just run:
```
vim +PluginInstall +qall
```

or open Vim window and run:
```
:PluginInstall
```

Check these repositories from where I got some ideas:  
[Ricardo Jesus](https://github.com/RJ-Jesus/dotfiles)  
[Brooke Kuhlmann](https://github.com/bkuhlmann/dotfiles)

Pedro Martins, 2018
