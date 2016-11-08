###------------------------------------   git setting begin ----------------------------------###

#Identity
git config --global user.name "xianghuy"
git config --global user.email xianghuy@opera.com
#editor
git config --global core.editor vim

#color ui
git config --global color.ui true

#color whitespace and table
git config --global core.whitespace trailing-space,space-before-tab,indent-with-non-tab

# alias
#git config --global alias.st status
#git config --global alias.br branch
#git config --global alias.co checkout
#git config --global alias.ci commit


# --> git prompt
#if [ -f ~/.git-prompt.sh ]; then
#    source ~/.git-prompt.sh
#    export PS1='\[\e]0;\w\a\]\n\[\033[01;32m\]\u@\h\[\033[01;34m\] \w$(__git_ps1 " (%s)")\n\[\033[1;$((31+3*!$?))m\]\$\[\033[00m\] '
#else
#    which git && echo wget --no-check-certificate https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh -O ~/.git-prompt.sh
#fi


# -->git diff
git config --global diff.tool bcompare
git config --global merge.tool bcompare
git config --global difftool.prompt false
git config --global mergetool.prompt false

# quick co
git_co_to_btsid() {
	git co taskbranch/TLJ-$1
}

alias gcot='git_co_to_btsid'

###------------------------------------ git setting end ----------------------------------###



###------------------------------------ path setting begin ----------------------------------###
export PATH=$PATH:~/bin:/opt/genymotion
export ANDROID_SDK_DIR=~/Android/Sdk
export ANDROID_HOME=$ANDROID_SDK_DIR
export ANDROID_NDK_DIR=~/Android/Ndk
export ANDROID_NDK_HOME=$ANDROID_NDK_DIR
export PATH=$PATH:$HOME/bin:$ANDROID_SDK_DIR/tools/:$ANDROID_SDK_DIR/platform-tools/:$ANDROID_NDK_DIR

export CVSROOT=:ext:yunx@cvs.oslo.osa/var/cvs/cvsroot
export CVS_RSH=ssh

export GCC_THREADS=8
ccache -M 24G > /dev/null
export USE_CCACHE=1
export ICECC_THREADS=40
export CC="ccache gcc"
export CXX="ccache g++"
if [ -f "/usr/bin/ccache" ]; then
    export ANDROID_GOMA_WRAPPER="/usr/bin/ccache"
fi
###------------------------------------ path setting end ----------------------------------###

###-------------------------------------go settings begin---------------------------------###
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/GoProject
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
###-------------------------------------go settings end-----------------------------------###

###------------------------------------ utils setting begin ----------------------------------###
alias gno='gnome-open'
alias gm='genymotion'
alias ai='adb -d install -r'
alias aie="adb -e install -r"
alias al='adb -d logcat -vtime'
alias ale='adb -e logcat -vtime'
alias adb_refresh='sudo $ANDROID_SDK_DIR/platform-tools/adb kill-server && sudo $ANDROID_SDK_DIR/platform-tools/adb start-server'

alias boost_cinstall='adb uninstall com.oupeng.pass && ant clean && ant sdebug && ai builds/OperaPass-debug.apk'
alias boost_install='adb uninstall com.oupeng.pass && ant sdebug -Doupeng.use.testserver=false&& ai builds/OperaPass-debug.apk'
alias boost_lint='lint --disable InvalidPackage,MissingTranslation,ContentDescription,HardcodedText --html result.html android'

alias next_cinstall='adb uninstall com.opera.max && ./gradlew clean && ./gradlew maxDebug && adb install -r build/outputs/apk/OperaMax-6.0.0-arm-oupengmax-debug.apk'
alias next_install='./gradlew maxDebug && adb install -r build/outputs/apk/OperaMax-6.0.0-arm-oupengmax-debug.apk'
alias next_build='./gradlew maxDebug'

alias startss="sudo sslocal -c ~/.bash.d/ss.json -d start"
alias stopss="sudo sslocal -c ~/.bash.d/ss.json -d stop"

alias o12r="make clean && make all DEBUG=NO UI_DEBUG=NO TARGET_ARCHS=armv5 USE_MINI_PACKAGE_NAME=YES PRODUCT=oupeng REPACKAGE_APK=YES BETA=NO"
alias o12b="make all USE_MINI_PACKAGE_NAME=YES BETA=NO && adb install -r bin/upload/oupeng-*-debug*.apk"
###------------------------------------ utils setting end ----------------------------------###

###------------------------------------ java setting begin ---------------------------------###
JAVA_HOME=/usr/lib/jvm/java-7-oracle/
###------------------------------------ java setting begin ---------------------------------###


###-------------------------------------python begin --------------------------------------###
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
###-------------------------------------python end-----------------------------------------###

###------------------------------------find-----------------------------------------------###
f () {

    local res=~/.findr

    find . -name $@ | tee $res

    local lines=$(cat $res | wc -l)

    if [ $lines -eq 1 ];then

        echo -n "  [Only one! \"e\"-> vi, \"q\"-> quit, \"d\"-> del] : "

        read -k 1 cmd

        echo ""

        case $cmd in

            "q")

                return

                ;;

            "e")

                vi $(cat $res)

                ;;

            "d")

                rm $(cat $res)

                ;;

        esac

    fi

}
###-------
