In the home folder, the root file for the vim setup should be called "vimfiles".

In windows 7, you should create a symbolic link to _vimrc and _gvimrc, using the mklink utility (admin rights required)

Command-T
---------
Namespace alike conflicts with ruby.vim in vim-ruby/ftplugin: https://wincent.com/issues/1752
To install after installing the submodules, you should proceed like this:
- open command-t.vba in Vim
- source the file by using ":so %"
- this will install the necessary files for the C extension in your runtime path (:echo &rtp)
- go to the sourced files folder
- "ruby extconf.rb"
- "make"

That should do the trick.
