#! /bin/bash
INTERVAL="15m"
CRON="*/15 * * * *"
######################
#    GOOGLE TRENDS   #
################################################################################
#------------------------------------------------------------------------------#
#
# 20171128
# h8rt3rmin8r
# 161803398@email.tg
#
# SOURCE: 
# https://trends.google.com/trends/hottrends/visualize/internal/data
#
# SEE ALSO:
# /internal/_static/b154148768.400825652504127208/locale/en/locale.json
#
#------------------------------------------------------------------------------#
################################
#    VARIABLES                 #
################################
#------------------------------------------------------------------------------#

# INTERVAL SCRIPT ROTATION SETTINGS (COPPIED FROM ABOVE)
# INTERVAL="15m"
# CRON="*/15 * * * *"

# PROJECT TAG
PRO="google-trends-"

# DATE-TIME VARIABLE
DATE="`date '+%Y%m%d%H%M%S'`"

# ARCHIVE FILE TYPES
JSON=".json"

#------------------------------------------------------------------------------#
################################
#    FUNCTIONS                 #
################################
#------------------------------------------------------------------------------#

curl -Ss 'https://trends.google.com/trends/hottrends/visualize/internal/data' \
    -H 'Host: trends.google.com' \
    -H 'Accept: */*' \
    -H 'Accept-Language: en-US,en;q=0.5' \
    -H 'Referer: https://trends.google.com/trends/hottrends/visualize?ncol=9&neat=true&nrow=9' \
    -H 'Connection: keep-alive' \
    -H 'If-None-Match: "uXfd9R/MItVMZYgkH5Fd/g"' \
    -H 'Cache-Control: max-age=0' | jq '.' >> .archive/${PRO}${DATE}${JSON}

#------------------------------------------------------------------------------#

################################################################################
                                                 ###                         ###
                                                 ### "think outside the box" ###
                                                 ###   ($) ¯\_(ツ)_/¯ (฿)    ###
                                                 ###                         ###
                                                 ###############################
