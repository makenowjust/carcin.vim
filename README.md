# carcin.vim

This is Vim plugin to provide utility functions for [carc.in][].

## motivation

[carc.in][] is a good webpage for sharing Crystal code.  However it is webpage, I want to use such like it in my editor.  So, I created this plugin.


## install and setting

```viml
" If you use neobundle.vim:
NeoBundle 'MakeNowJust/carcin.vim'
" If you use Vundle.vim:
Plugin 'MakeNowJust/carcin.vim'
" Or if you use another plugin manager, please install carcin.vim
```

Now, you can type `:CarcinRun` in Crystal file and run it ;)


## cooperation to [vim-quickrun][]

```viml
let g:quickrun_config = g:quickrun_config || {}
let g:quickrun_config['crystal/carcin'] = {
      \ 'runner': 'vimscript',
      \ 'command': 'CarcinRunFile',
      \ 'exec': "%C %S crystal",
      \ }
```

## document

```viml
:help carcin
```


## license

This is licensed under MIT. Please look <https://makenowjust.github.io/license/mit?2015>.


[carc.in]: http://carc.in
[vim-quickrun]: https://github.com/thinca/vim-quickrun
