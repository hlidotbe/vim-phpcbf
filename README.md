# Vim phpcbf

The **Vim phpcbf** plugin runs [phpcbf](https://github.com/squizlabs/PHP_CodeSniffer/wiki/Fixing-Errors-Automatically) and displays the results in Vim.

## Requirements

Please note that the current version of the Vim phpcbf plugin requires phpcbf installed on the system.

## Installation

Obtain a copy of this plugin and place `phpcbf.vim` in your Vim plugin directory.

## Usage

You can use the `:Phpcbf` command to run phpcbf and display the results.

You can also use the `:phpcbf` command together with options. For example, `:Phpcbf -l`, `:Phpcbf -n` and so on.

### Configuration File

To run with the specified configuration file, add the following line to your `.vimrc` file:

```viml
let g:vimphpcbf_config = '/path/to/phpcbf.yml'
```

### Keyboard Shortcuts

The plugin registers `<Leader>bf` in normal mode
for triggering it easily. You can disable these default mappings by setting
`g:vimphpcbf_keymap` in your `.vimrc` file, and then remap them differently.

For instance, to trigger phpcbf by pressing `<Leader>r` you can put the following in
your `.vimrc`:

```viml
let g:vimphpcbf_keymap = 0
nmap <Leader>bf :Phpcbf<CR>
```

## License

The Vim phpcbf plugin is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).
