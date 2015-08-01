# Open terminal and follow the instruction to build updated locale files for warband

# Install transifex-client and luajit packages, for example on debian,ubuntu and derivates do the following command:
sudo apt-get install transifex-client luajit

# Create transifex config
gedit ~/.transifexrc # Copy the following lines and replace username and password
[https://www.transifex.com]
hostname = https://www.transifex.com
password = p@ssword
token = 
username = user

# Enter in the folder of this README with cd command and do the follow command:
sh tx.sh

# Take the updated files in the languages folder (it,fr,es ecc..)
