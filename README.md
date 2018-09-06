After building the image and connecting to the container,
users need to enable supertab of vim, do vim plugin and youcompleteme installation once.

#### Vim Plugin Installation ####
In terminal type:
vim<Enter>
:PluginInstall<Enter> (respect the capitalization)
:q!<Enter> (after installation)
:q!<Enter> (exit vim)
cd /root/<Enter>
#### Enable supertab ####
In terminal type:
cd /root/.vim/bundle/supertab/plugin<Enter>
vim supertab.vim<Enter>
:source %<Enter>
:wq!<Enter>
cd /root/<Enter>
#### YouCompleteMe ####
In terminal type:
cd /root/.vim/bundle/YouCompleteMe<Enter>
./install.py --clang-completer<Enter> (for c++ language)
cd /root/<Enter>

# IDE_for_cpp_with_vim
