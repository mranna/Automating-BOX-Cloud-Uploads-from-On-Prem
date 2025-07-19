#Environment Setup
#1. Install Node.js
    Downloaded from https://nodejs.org (LTS version)
#2. Install Box CLI globally
    mkdir ~/.npm-global
    npm config set prefix ~/.npm-global
    echo 'export PATH=$HOME/.npm-global/bin:$PATH' >> ~/.zshrc
    source ~/.zshrc
    npm install -g box-cli
#3. Handled "self-signed certificate" error in dev
    export NODE_EXTRA_CA_CERTS=<<Your CA root certificate>>  #Best practice, Assign the org's root CA.
    Using openssl s_client = showcerts -connect api.box.com:443, save the certificate in a crt file. 
#4. Create a BOX JWT App
   Scopes: read/write, manage users,
   Generate: Public/Private Key
   Download: config.json
   Authorize the Platform App.  
#5. Configure BOX CLI with the JWT App
   box configure:environments:add sandbox-env --file ~/box-cli/config.json
   box configure:environments:set sandbox-env
#6. Create a folder on BOX via CLI
   box folders: create 0 "Test folder"
#7. Collaborate my admin BOX user to view the folder in the UI
   box collaborations:create --folder <folder_id> --role editor --user-id <User ID>
#8. Upload files from local computer to BOX (Mac)
   box files:upload ~/exports/report.csv --parent-id <folder_id>
#9. Automatically upload a new version if the file already existed
   box files:upload-new-version ~/exports/report.csv --file-id <file_id>
