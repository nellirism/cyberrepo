# cyberrepo
Cybersecurity Bootcamp Repository of Nell-e Medina

What did you build through Azure?




Below is a sample findings from using Kibana established through the ELK server:


Diagram :https://drive.google.com/file/d/1MAhXze4uWWBvHWH3OTnslo7gPg6GhBkC/view?usp=sharing

Kibana Findings
Source IP of the Unique Visitor using a number of bytes that is considerably higher than all other usages: 
35.143.166.159

The geo coordinates of this activity was:  
{ "lat": 43.34121, "lon": -73.6103075 }

Source Machine OS: Windows 8

URL accessed: https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-6.3.2-i686.rpm

Visitor’s traffic originated from Facebook
This event appears to be a user downloading a Linux package from the website being monitored.
Linux packages are not typically malicious but they could be. Depending on the website, this could be harmless traffic from a sysadmin performing an update.
The main concern is the referral link from Facebook, as it's probably not within compliance to post package update links on Facebook.
This user could be further investigated and monitored for suspicious activity.
