# Vim phpcbf

The **Vim phpcbf** plugin runs [phpcbf](https://github.com/squizlabs/PHP_CodeSniffer/wiki/Fixing-Errors-Automatically) and displays the results in Vim.

## Requirements

Please note that the current version of the Vim phpcbf plugin requires phpcbf installed on the system.

## Installation

Obtain a copy of this plugin and place `phpcbf.vim` in your Vim plugin directory.

## Usage

You can use the `:phpcbf` command to run phpcbf and display the results.

You can also use the `:phpcbf` command together with options. For example, `:phpcbf -l`, `:phpcbf -a` and so on.

### Configuration File

To run with the specified configuration file, add the following line to your `.vimrc` file:

```viml
let g:vimphpcbf_config = '/path/to/phpcbf.yml'
```

### Keyboard Shortcuts

Credit for Shortcuts: [Ack.vim](https://github.com/mileszs/ack.vim)

In the quickfix window, you can use:

    o    to open (same as enter)
    go   to preview file (open but maintain focus on ack.vim results)
    t    to open in new tab
    T    to open in new tab silently
    h    to open in horizontal split
    H    to open in horizontal split silently
    v    to open in vertical split
    gv   to open in vertical split silently
    q    to close the quickfix window

Additionally, the plugin registers `<Leader>ru` in normal mode
for triggering it easily. You can disable these default mappings by setting
`g:vimphpcbf_keymap` in your `.vimrc` file, and then remap them differently.

For instance, to trigger phpcbf by pressing `<Leader>r` you can put the following in
your `.vimrc`:

```viml
let g:vimphpcbf_keymap = 0
nmap <Leader>bf :phpcbf<CR>
```

## License

The Vim phpcbf plugin is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).
