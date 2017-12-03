# Documentation

## Introduction

CryptoBase is designed to be a ready-to-deploy all inclusive information dominance system for the blockchain industry. It contains an ever-increasing series of lightweight shell scripts that will instantly begin collecting publicly available social and economic intelligence which can then be analyzed in whatever manner one sees appropriate. Analysis mechanisms are not included in this project. 

## Installation & Deployment

All shell scripts included in this project can be deployed from any common Linux distribution. In most cases a system administrator must first enable the scripts to be executable in the following way:

Assuming the target script is called "example.sh", the authorization of this script would be:
```
sudo chmod +x example.sh
```
If you are attempting to authorize all scripts in a specific directory "example-directory", then use a wildcard in the command like this: 
```
cd example-directory && sudo chmod +x *
```
After all desired scripts are able to be executed you will need to automate the running of these scripts if you wish to continually run them at regular intervals. We recommend that the automation be performed by using the crontab tool which is automatically installed on most common Linux systems. You can view all current cron configurations with the crontab tool by issuing the following command in Terminal:
```
crontab -l
```
Please note that you are likely to not have any current cron configurations if this is your first time creating one, so the command above will not return any items if this is the case. To configure a cron job, use the crontab tool with the following command:
```
crontab -e
```
If the script that you are automating is named "myScript.sh" and if the script is located in a directory called "cryptobase" which is located in your user's home directory, then add the following line into the crontab file:
```
0 * * * * ~/cryptobase/myScript.sh
```
Beginning the crontab configuration with a zero ("0") will automate the intended script to run one time every hour on the hour. Other time configurations are available as well. You can read about the various configuration options in the [crontab manual pages](http://man7.org/linux/man-pages/man5/crontab.5.html). Save your adits to the crontab file by exiting the editor with [Control] + [X]. You will be prompted to save your changes, to which you type [y] and confirm the location name of the crontab file with pressing [Enter]. 

This concludes the automation process for "myScropt.sh".


## Additional Notes

All front end code can be found inside the 'docs' folder. The rest of the directories are dedicated to the various processes and functions of the back end. 

## Attribution

CryptoBase is produced by the blockchain research division of ResoNova International Consulting, LLC. The company website may be found at [ResoNova.com](https://resonova.com)

Contact information: 
- (Project Lead) h8rt3rmin8r - [161803398@email.tg](mailto:161803398@email.tg) [PGP Key](https://h8rt3rmin8r.com)
- (Project Assist) Benjamin Kadron - [benjamin@resonova.com](mailto:benjamin@resonova.com)

## Software License

Please take note of the following license inforamtion and include a copy of it in any modified or redistributed versions of this software.

```
Copyright 2017 ResoNova International Consulting, LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
