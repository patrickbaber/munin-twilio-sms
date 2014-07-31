#!/bin/bash

#Author: Patrick Baber
#License: GPL version 3

#Script sends a message via the SMS service provider Twilio. It needs a verified Twillio account and charged balance within.

#Phone number of recipient as string in international format, e.g. +4930123456
phone_to="+4930123456"

#Phone number of sender as string in international format, e.g. +4930123456
phone_from="+12243771556"

#Message length
message_length=160

#Sid of your personal Twilio account
sid="your-sid"

#Auth token of your personal Twilio account
auth_token="your-auth-token"

#STDIN from munin
stdin=`cat /dev/stdin`

command="curl -X POST 'https://api.twilio.com/2010-04-01/Accounts/$sid/Messages.json' \
--data-urlencode 'To=$phone_to'  \
--data-urlencode 'From=$phone_from'  \
--data-urlencode 'Body=${stdin:0:$message_length}' \
-u $sid:$auth_token"

eval "$command"

exit 0
