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


JSLint
------
Not working with Windows7.
Changes made:
The .swf file was adapted to (https://github.com/jdiamond/jslint.vim/blob/aa733c02505f432f21bd858ae5aa6df72a081112/ftplugin/javascript/jslint/runjslint.wsf):

<job>
<script src="jslint-core.js" language="javascript"></script>
<script language="javascript">
/*global JSLINT load readline WScript */

var readSTDIN = function() {
    var line,
        input = [],
        emptyCount = 0,
        i;

    var stdIn = WScript.stdIn,
        stdOut = WScript.stdOut;

    while (!stdIn.atEndofStream) {
        line = stdIn.readLine();
        input.push(line);
    }

    return input.join("\n");
};

var body = readSTDIN() || arguments[0],
    ok = JSLINT(body),
    i,
    error,
    errorType,
    nextError,
    errorCount,
    WARN = 'WARNING',
    ERROR = 'ERROR';

if (!ok) {
    errorCount = JSLINT.errors.length;
    for (i = 0; i < errorCount; i += 1) {
        error = JSLINT.errors[i];
        errorType = WARN;
        if (error && error.reason && error.reason.match(/^Stopping/) === null) {
            // If jslint stops next, this was an actual error
            if (nextError && nextError.reason && nextError.reason.match(/^Stopping/) !== null) {
                errorType = ERROR;
            }
            WScript.echo([error.line, error.character, errorType, error.reason].join(":"));
        }
    }
}
</script>
</job>

The bin/jslint ruby file was adapted such that it checks the RUBY_PLATFORM on a match for /i386/i instead of /win32/i. This fixes
the problems in Windows 7
