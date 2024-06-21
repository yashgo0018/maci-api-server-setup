# MACI API Deployment Setup

Steps to deploy the project:

- Update these variables in the `~/.bashrc` file: TAG=latest, SERVER_URL=${domain name}
- Create the Diffie-Hellman key for ssl using `mkdir dhparam && sudo openssl dhparam -out ./dhparam/dhparam-2048.pem 2048`
- Create the env files for the web app and the stripe sync engine, `touch .web-app.env`
- Update the env variables in the .env file
- Create folder for the jwt keys and then put the `private.key` and `public.key` files in that folder, using `mkdir jwt-key` command, and then to generate new keys use `cd jwt-key && openssl genrsa -out private.key 2048 && openssl rsa -in private.key -outform PEM -pubout -out public.key` command
- Create folder for the let's encrypt cert bot verification using `mkdir web-root` command
- Run the `bash ./setup.sh` command for doing the initial setup the stop the command using `Ctrl + C`

Steps to pull the latest changes and then redeploy:

- Run the `bash ./refresh.sh` command
