[![wercker status](https://app.wercker.com/status/4fe42be79ba4143131566d772fbfc2bb/m "wercker status")](https://app.wercker.com/project/bykey/4fe42be79ba4143131566d772fbfc2bb)

# Go App Engine Deploy via oauth

This step deploy Go Apps to Google App Engine using OAuth2 Refresh Token.
It depends on `pjvds/setup-go-workspace` to setup the Go workspace first.

If you use email and password when deploy Go Apps to Google App Engine, you can use `pjvds/appengine-deploy`.

# Options

## required

- `token` - The OAuth2 Refresh Token of Google App Engine to use for deployment.

## Example

    deploy:
      steps:
        - pjvds/setup-go-workspace

        - taka011239/go-appengine-deploy-oauth
            token: xxxxxxxx
