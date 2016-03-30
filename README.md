# cuckooinstaller
-
Easy install cuckoo (http://www.cuckoosandbox.org/) on Ubuntu


Just run the cuckooinstaller.sh as high-privileged user (sudo)
Copy start-cuckoo.sh into your malware_analysis/cuckoo dir and run it as root.
This will prevent you from re-adding the hostonly inferface at every reboot.



Also, you might want to install all comunity plugins, with 
	sudo python utils/community.py -af

-


####ToDo after installation:

- Download, and install a Windows VM (Win XP SP3 is recomended): https://dev.modern.ie/tools/vms/
- Install Python 2.7: https://www.python.org/downloads/
- Install PIL Python (2.7): http://www.pythonware.com/products/pil/
- Download cuckoo agent.py, rename as agent.py and make it running at the startup: https://github.com/cuckoobox/cuckoo/blob/master/agent/agent.py
- Switch off windows firewall
- Switch off autoimatic updates


####References:
- http://cuckoo.readthedocs.org/en/latest/
- http://santi-bassett.blogspot.se/2013/01/installing-cuckoo-sandbox-on-virtualbox.html
- http://www.behindthefirewalls.com/2013/10/tatic-analysis-packed-malware-cuckoo.html


