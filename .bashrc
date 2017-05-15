alias gr='git checkout master; git pull origin master; git checkout -; git rebase -i master; '
alias grd='git checkout development; git pull origin development; git checkout -; git rebase -i development; '
alias gif='/opt/gif_me.sh'

export VISUAL=vim
export EDITOR="$VISUAL"
export JAVA_HOME=/opt/java/jdk1.8.0_73
export ANDROID_HOME=/home/michael/android-sdk-linux
export GRADLE_HOME=/usr/lib/gradle-2.5
export M2_HOME=/opt/apache-maven-3.3.9
export M2=$M2_HOME/bin
export PATH=$PATH:/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
export PATH=$PATH:$JAVA_HOME/bin:$GRADLE_HOME/bin:/usr/lib/android-studio/bin:$M2

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
