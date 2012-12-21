# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc 
fi
# User specific environment and startup programs

PATH=$PATH:$HOME/bin
export PATH

set -o vi
export EDITOR=vi
export PERL5LIB=$HOME/perl/lib:$HOME/trunk/perl/lib:$HOME/perl/lib/perl5:$HOME/perl/lib/perl5/auto:$HOME/perl/share/perl5:$HOME/trunk/perl/Catalyst/Catal/lib
export LANG=ja_JP.utf8

# subversion
export SVN_EDITOR=vi

export ORACLE_BASE=/u01/app/oracle/112
export ORACLE_HOME=/u01/app/oracle/112/product/11.2.0/dbhome_1
export ORACLE_SID=ora112
export PATH=$PATH:$ORACLE_HOME/bin
export NLS_LANG=Japanese_Japan.AL32UTF8
export LD_LIBRARY_PATH=$ORACLE_HOME/lib

export PATH=$PATH:/usr/local/mysql/bin

export CATAL_HOME=$HOME/trunk/perl/Catalyst/Catal
alias catalserver="export DBIC_TRACE=1;$CATAL_HOME/script/catal_server.pl -r"
export PERL5LIB=$PERL5LIB:/home/msasaki/Dropbox/Scripts/Perl/lib
export PATH=$PATH:/home/msasaki/Dropbox/bin
export PAGER=less
export PERL5LIB=$PERL5LIB:~/perl5/lib/perl5
export PATH=$PATH:~/perl5/bin
export PATH=$PATH:/home/msasaki/.vim/bundle/perlomni.vim/bin

#nohup conky &
alias gvim='gvim --remote-tab-silent'

HISTSIZE=50000
HISTFILESIZE=50000

# sasaki
