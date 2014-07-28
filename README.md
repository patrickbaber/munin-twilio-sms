munin Twilio SMS script
======================

This is a tiny bash script to send a munin alert via Twilio SMS service to your mobile phone. It's tested under Debian Wheezy, but with small modifications it should run on any other Linux distribution where munin runs on. The script gets the munin notification body via STDIN and sends it with curl to the Twilio API. So you have to create a Twilio account with charged balance.

Requirements
----------------------
* munin
* curl

Installation
----------------------

* munin have to be installed
* Download this bash script from your server where munin is installed or upload the script to it.
* Move it to the following folder: /usr/bin/munin/
* Change the necessary options within the file. There are described within the file.
* Give the file rights to execute from the munin user, eg. chown munin:munin /usr/lib/munin/munin-twilio-sms.sh && chmod 0755 /usr/lib/munin/munin-twilio-sms.sh
* Add the following line to your munin configuration file under /etc/munin/munin.conf: contact.twiliosms.command /usr/bin/munin/munin-twilio-sms.sh

Have fun or not with the munin warnings on your mobile phone :)
