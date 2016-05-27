# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="candy"
ZSH_THEME="cordial"
DISABLE_UPDATE_PROMPT=true

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export EDITOR=vim

alias mci="mvn clean install "
alias mcl="mvn clean install -PskipLangsomTest"
alias muci="mvn -U clean install"
alias mcit="mvn clean install -DskipTests"
alias mucit="mvn -U clean install -DskipTests"
alias mucidb="mvn clean install -Pliquibase-update -Dliquibase.dropFirst=true"
alias mucitdb="mvn clean install -DskipTests -Pliquibase-update -Dliquibase.dropFirst=true"
alias mcito="mvn clean install -DskipTests -o"
alias mt="mvn test -Dlogback.configurationFile=/home/developer/config/my-logback.xml -Dtest="
alias mjaxb="mvn clean generate-sources"
alias liquibase-update="mvn process-test-resources -Pliquibase-update"
alias liquibase-update-dropfirst="mvn process-test-resources -Pliquibase-update -Dliquibase.dropFirst=true"
alias authorsfile-update="cd ~/projects_deps/util && git spull"
alias liquibase-dropall="liquibase --driver=oracle.jdbc.OracleDriver --classpath=/home/developer/.m2/repository/com/oracle/ojdbc7/12.1.0.2/ojdbc7-12.1.0.2.jar --url=jdbc:oracle:thin:@uil0mag-st-f-utv-db02.skead.no:1521:mastfu --username=aopo_st_f_utv --password=aopo_st_f_utv dropAll"
alias aopo_stfutv_dropall="liquibase --driver=oracle.jdbc.OracleDriver --classpath=/home/developer/.m2/repository/com/oracle/ojdbc7/12.1.0.2/ojdbc7-12.1.0.2.jar --url=jdbc:oracle:thin:@uil0mag-st-f-utv-db02.skead.no:1521:mastfu --username=aopo_st_f_utv --password=aopo_st_f_utv dropAll"
alias aoda_stfutv_dropall="liquibase --driver=oracle.jdbc.OracleDriver --classpath=/home/developer/.m2/repository/com/oracle/ojdbc7/12.1.0.2/ojdbc7-12.1.0.2.jar --url=jdbc:oracle:thin:@uil0mag-st-f-utv-db02.skead.no:1521:mastfu --username=aoda_st_f_utv --password=utvp4ss dropAll"
alias aopo_stnutv_dropall="liquibase --driver=oracle.jdbc.OracleDriver --classpath=/home/developer/.m2/repository/com/oracle/ojdbc7/12.1.0.2/ojdbc7-12.1.0.2.jar --url=jdbc:oracle:thin:@uil0mag-st-n-utv-db02.skead.no:1521:mastnu --username=aopo_st_n_utv --password=aopo_st_n_utv dropAll"
alias aopo_stnutv_update="liquibase --driver=oracle.jdbc.OracleDriver --classpath=/home/developer/.m2/repository/com/oracle/ojdbc7/12.1.0.2/ojdbc7-12.1.0.2.jar --url=jdbc:oracle:thin:@uil0mag-st-n-utv-db02.skead.no:1521:mastnu --username=aopo_st_n_utv --password=aopo_st_n_utv --changeLogFile=/home/developer/projects-git/a-ordning-produksjonsoppfoelging/a-ordning-produksjonsoppfoelging-database/src/main/database/migrations/dbVersion.xml update"
alias aopo_stfutv_update="liquibase --driver=oracle.jdbc.OracleDriver --classpath=/home/developer/.m2/repository/com/oracle/ojdbc7/12.1.0.2/ojdbc7-12.1.0.2.jar --url=jdbc:oracle:thin:@uil0mag-st-f-utv-db02.skead.no:1521:mastfu --username=aopo_st_f_utv --password=aopo_st_f_utv --changeLogFile=/home/developer/projects-git/a-ordning-produksjonsoppfoelging/a-ordning-produksjonsoppfoelging-database/src/main/database/migrations/dbVersion.xml update"
alias aopo_lokal_dropall="liquibase --driver=oracle.jdbc.OracleDriver --classpath=/home/developer/.m2/repository/com/oracle/ojdbc7/12.1.0.2/ojdbc7-12.1.0.2.jar --url=jdbc:oracle:thin:@uil0mag-utvikler-db01.skead.no:1521:magciutv --username=AOPO_k73748 --password=AOPO_K73748 dropAll"
alias aoda_lokal_dropall="liquibase --driver=oracle.jdbc.OracleDriver --classpath=/home/developer/.m2/repository/com/oracle/ojdbc7/12.1.0.2/ojdbc7-12.1.0.2.jar --url=jdbc:oracle:thin:@uil0mag-utvikler-db01.skead.no:1521:magciutv --username=AODA_k73748 --password=AODA_K73748 dropAll"
alias oppslagstjenesten_fallback_stfutv='mvn ske.registry:registry-maven-plugin:1.3.0:run -Dsikkerhet.sts.rest.sikkerhetspolicy=deaktivert -Dregistry.delegering="[{\"uri\":\"http://uil0mag-st-f-utv-app02.skead.no:20000/registry\",\"urn\": [\"*\"]}]"'
alias oppslagstjenesten_fallback_stnutv='mvn ske.registry:registry-maven-plugin:1.3.0:run -Dsikkerhet.sts.rest.sikkerhetspolicy=deaktivert -Dregistry.delegering="[{\"uri\":\"http://uil0mag-st-n-utv-app02.skead.no:20000/registry\",\"urn\": [\"*\"]}]"'
alias oppslagstjenesten_fallback_stfutv_CLASSIC="mvn ske.registry:registry-maven-plugin:1.2.9:run -Dsikkerhet.sts.rest.sikkerhetspolicy=deaktivert -Dregistry.fallback.url=http://uil0mag-st-f-utv-app02.skead.no:20000/registry -Dregistry.fallback.urn.whitelist=\"*\""
alias oppslagstjenesten_fallback_stfutv_sikker="mvn registry:run -Dsikkerhet.sts.rest.sikkerhetspolicy=aktivert -Dsikkerhet.utsted.saml.url=http://tia1dp01:11100/felles/sikkerhet/stsSikkerhet/v2/utstedSaml -Dsikkerhet.valider.saml.url=http://tia1dp01:11100/felles/sikkerhet/stsSikkerhet/v2/validerSaml -Dregistry.fallback.url=http://uil0mag-st-f-utv-app02.skead.no:20000/registry -Dregistry.fallback.urn.whitelist=\"*\""

alias zup="source ~/.zshrc"
alias zed="vim ~/.zshrc"
alias vdiff="vimdiff -c 'set diffopt+=iwhite'"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(command-not-found cp cpanm encode64 git git-extras gitfast git-flow git-remote-branch history history-substring-search mvn ssh-agent themes)
plugins=(git themes mvn)
source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
export IBUS_ENABLE_SYNC_MODE=1
#export JAVA_HOME_8=/home/andre/dev/jdk1.8.0_74
export JAVA_HOME_8=/home/andre/dev/jdk1.8.0_92
export JAVA_HOME=$JAVA_HOME_8
alias javahome8="export JAVA_HOME=$JAVA_HOME_8"
alias javahome="echo $JAVA_HOME"
export GROOVY_HOME=/home/andre/dev/groovy-2.4.6
#export M2_HOME=/home/andre/dev/apache-maven-3.1.1
export M2_HOME=/home/andre/dev/apache-maven-3.3.9
export GRADLE_HOME=/home/andre/dev/gradle-2.13
export NPM_HOME=/home/andre/npm
export PATH=$NPM_HOME/bin:$JAVA_HOME/bin:$GROOVY_HOME/bin:$GRADLE_HOME/bin:$M2_HOME/bin:/home/andre/bin:/u01/app/oracle/product/11.2.0/xe/bin:/usr/lib/jvm/java/bin:/usr/lib/liquibase:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

release-feature() {
	mvn versions:set -DnewVersion=feature-$1-$2 -DgenerateBackupPoms=false && mvn clean deploy -Pleveransepakke -DskipTests && git stash
}

release-bugfix() {
	mvn versions:set -DnewVersion=bugfix-$1-$2 -DgenerateBackupPoms=false && mvn clean deploy -Pleveransepakke -DskipTests && git stash
}

sett-versjon() {
	mvn versions:set -DnewVersion=$1 -DgenerateBackupPoms=false		
}

add-author() {
  setopt verbose
  if [[ $# -eq 0 ]] ; then
    echo 'Usage: addauth <brukernavn>'
    return 1
  fi

  authorsfile="/home/andre/dev/authors.txt"
  echo "Legger til $1 i $authorsfile"
  echo "$1 = $1, $1 <$1@skatteetaten.no>" >> $authorsfile
  eval "/home/andre/bin/oppdater-git-authors"
  echo "OK."
  unsetopt verbose
}
