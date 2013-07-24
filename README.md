setupRailsUbuntu.git
================

Clone and run this on a new EC2 instance running Ubuntu 12.04.2 LTS to configure both the machine and your individual development environment as follows:
```sh
cd $HOME
sudo apt-get install -y git-core
git clone https://github.com/evanrichards/setupRailsUbuntu.git
chmod 755 setupRailsUbuntu/setupRails.sh  
./setupRailsUbuntu/setupRails.sh   
```
Please note that this installation may take a while. I am expecting 15 mins from a blank machine.
As it stands now for my personal use this script installs the following and more:
<ul>
<li>Git-core</li>
<li>Curl</li>
<li>Wget</li>
<li>rvm</li>
<li>Build-essential</li>
<li>SQLite3</li>
<li>Ruby</li>
<li>Cyaml</li>
<li>Bundler</li>
<li>Rails</li>
<li>Heroku</li>
</ul>
Thanks to [this site](http://blog.coolaj86.com/articles/installing-ruby-on-ubuntu-12-04.html) for the bulk of this.
