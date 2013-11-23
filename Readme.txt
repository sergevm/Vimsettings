WINDOWS SETUP
-------------

In the home folder, the root file for the vim setup should be called "vimfiles".
You should create a symbolic link to _vimrc and _gvimrc, using the mklink utility (admin rights required).

For javascript linting, I'm currently using JSHint (http://jshint.com). You have to install it globally (npm install jshint), and create .jshintrc files in the root folders under which you want the same set of rules applied. Myself, I added the sample configuration from JSHint in my home folder, and e.g. in a node project I copy this file to the root of the project, and set e.g. the environment var "node" to "true" (doh). I also don't like the forced 4 space indentation, so I remove that entry.
