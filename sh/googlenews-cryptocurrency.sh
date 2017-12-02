#! /bin/bash
INTERVAL="1h"
CRON="0 * * * *"
####################################
#   GOOGLE NEWS - CRYPTOCURRENCY   #
################################################################################
#------------------------------------------------------------------------------#
#
# 20171130
# h8rt3rmin8r
# 161803398@email.tg
#
# SOURCE:
# https://news.google.com/news/rss
#
#------------------------------------------------------------------------------#
################################
#    VARIABLES                 #
################################
#------------------------------------------------------------------------------#

# INTERVAL SCRIPT ROTATION SETTINGS (COPPIED FROM ABOVE)
# INTERVAL="1h"
# CRON="0 * * * *"

# PROJECT TAG
PRO="googlenews-cryptocurrency-"

# DATE-TIME VARIABLE
DATE="`date '+%Y%m%d%H%M%S'`"

# ARCHIVE FILE TYPES
JSON=".json"
XML=".xml"

#------------------------------------------------------------------------------#
################################
#    FUNCTIONS                 #
################################
#------------------------------------------------------------------------------#

curl -Ss 'https://news.google.com/news/rss/explore/section/q/Cryptocurrency?ned=us&hl=en&gl=US' \
    -H 'Cache-Control: max-age=0' | xmlstarlet fo >> .archive/${PRO}${DATE}${XML}

#------------------------------------------------------------------------------#

################################################################################
                                                 ###                         ###
                                                 ### "think outside the box" ###
                                                 ###   ($) ¯\_(ツ)_/¯ (฿)    ###
                                                 ###                         ###
                                                 ###############################
