###############################################################################
# automating the installation of cuckoosandbox
sudo apt-get --yes update
sudo apt-get --yes --force-yes install python python-magic python-dpkt python-mako python-sqlalchemy python-jinja2 python-bottle -y
sudo apt-get --yes --force-yes install ssdeep python-pyrex subversion
sudo apt-get  --yes --force-yes install libfuzzy-dev
mkdir malware_analysis
cd malware_analysis
###############################################################################
# install pyssdep
svn checkout http://pyssdeep.googlecode.com/svn/trunk/ pyssdeep
cd pyssdeep
python setup.py build
sudo python setup.py install

###############################################################################
# install mongo-db and django for reporting
sudo apt-get --yes --force-yes  install python-pymongo mongodb python-django python-gridfs


sudo apt-get  --yes --force-yes install g++ libpcre3 libpcre3-dev
cd ..
###############################################################################
# getting and instal yara
wget https://github.com/plusvic/yara/archive/v3.4.0.tar.gz

tar xvfz v3.4.0.tar.gz


sudo apt-get  --yes --force-yes install libtool
sudo apt-get  --yes --force-yes install autoconf
cd yara-3.4.0
sudo ./bootstrap.sh

./configure
make
sudo make install

cd yara-python
python setup.py build
sudo python setup.py install

###############################################################################
# setting tcpdump permission
sudo apt-get  --yes --force-yes install libcap2-bin
sudo setcap cap_net_raw,cap_net_admin=eip /usr/sbin/tcpdump
sudo getcap /usr/sbin/tcpdump

###############################################################################
# install virtualbox 5
sudo echo  "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list
sudo wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get  --yes --force-yes install virtualbox-5.0
sudo apt-get install dkms


###############################################################################
# setting up cuckoo user, and git clone cuckoo
sudo useradd cuckoo
sudo usermod -a -G vboxusers cuckoo
sudo apt-get --yes --force-yes install git
cd ..
cd ..
git clone https://github.com/cuckoosandbox/cuckoo.git

sudo apt-get  --yes --force-yes install python-pip
sudo pip install python-dateutil
sudo pip install pydeep
sudo apt-get install libffi-dev
cd cuckoo
sudo pip install -r requirements.txt
sudo pip install m2crypto
###############################################################################
# enable ipv4 ip_forwarding
sudo sysctl -w net.ipv4.ip_forward=1
