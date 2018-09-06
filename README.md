Thank to Docker and Vim, we can create an image of ubuntu and easily install Vim as IDE for C++.

Check that you already have docker installed.
After cloning the repository, open your terminal (or power shell in window) and type `cd IDE_for_cpp_with_vim`.
After that, you can build an image of docker by typing `docker build -t name_of_the_image .` in terminal (do not forget the dot `.` at the end).
Then, you have to run a container of docker by typing `docker run -it --name name_of_the_container name_of_the_image`. The `name_of_the_image` must be the same as when you build the image.

After building the image and connecting to the container,
users need to enable supertab of vim, do vim plugin and youcompleteme installation once.

#### Vim Plugin Installation ####
In terminal type:
`vim<Enter>`
`:PluginInstall<Enter> (respect the capitalization)`
`:q!<Enter>` (after installation)
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
