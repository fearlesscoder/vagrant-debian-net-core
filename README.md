
This is a barebones debian jessie based vagrant vm you can use to test deploying .net core developed applications to linux.

##How to use:
- clone this repo
- dotnet publish your .net core app to a folder off the root of this repo (i.e. dotnet publish -o /ssd/src/vagrant/debian-netcore/website/) 
- vagrant up
- vagrant ssh
- cd /vagrant/website
- dotnet <name of executable>
- from host machine you should see the app on http://localhost:8001

