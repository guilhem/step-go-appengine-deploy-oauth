sudo apt-get update
sudo apt-get intall unzip

cd $WERCKER_ROOT
debug 'Downloading AppEngine SDK...'

curl -O https://storage.googleapis.com/appengine-sdks/featured/go_appengine_sdk_linux_amd64-1.9.6.zip
export PATH="$PATH:$(pwd)/go_appengine"

cd $WERCKER_SOURCE_DIR

debug 'Starting deployment'
appcfg.py update ./ --oauth2_refresh_token=$WERCKER_GO_APPENGINE_DEPLOY_OAUTH_TOKEN

success 'Finished'
