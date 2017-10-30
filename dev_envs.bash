#----Node.js enviromental variable
export NODE_ENV="development"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

#----Python
# install all packages in a req file
pip_install_save() {
    package_name=$1
    requirements_file=$2
    if [[ -z $requirements_file ]]
    then
        requirements_file='./requirements.txt'
    fi
    pip install $package_name && pip freeze | grep -i $package_name >> $requirements_file
}

export PATH="/usr/local/opt/python/libexec/bin:$PATH"

#----Google
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dominiccabral/google-cloud-sdk/path.bash.inc' ]; then source '/Users/dominiccabral/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dominiccabral/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/dominiccabral/google-cloud-sdk/completion.bash.inc'; fi

