if status is-interactive
    # Commands to run in interactive sessions can go here
    rbenv init - fish | source
    export PATH="/usr/local/opt/libpq/bin:$PATH"
    export JAVA_HOME="/usr/local/opt/openjdk@17/bin/java"
    export ANDROID_HOME="$HOME/Library/Android/sdk"
    export PATH="$PATH:$ANDROID_HOME/emulator"
    export PATH="$PATH:$ANDROID_HOME/platform-tools"
    export REACT_EDITOR=emacsclient
end

