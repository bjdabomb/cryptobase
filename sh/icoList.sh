#! /bin/bash
################################
#    ICO LIST                  #
################################################################################
#------------------------------------------------------------------------------#
#
# Query a list of every upcoming ICO launch
# Query a list of every live ICO currently in progress
# Query every completed ICO and the related performance stats
#
# Developed by h8rt3rmin8r
# Email: 161803398@email.tg
# PGP: https://h8rt3rmin8r.com
#
#------------------------------------------------------------------------------#
################################
#    VARIABLES                 #
################################
#------------------------------------------------------------------------------#

# PROJECT TAG
PRO="icolist-"

# DATE-TIME VARIABLE
DATE="-`date '+%Y%m%d%H%M%S'`"

# API ENDPOINT ROOT (AND ALL-INCLUSIVE ICO LISTING)
X='https://api.icowatchlist.com/public/v1/'

# ICO GROUPINGS
PEND=upcoming
LIVE=live
COMP=finished

# ADDITIONAL COMPONANTS
JSON='.json'

#------------------------------------------------------------------------------#
################################
#    FUNCTIONS                 #
################################
#------------------------------------------------------------------------------#
# ALL ICOs
curl -Ss ${X} | jq '.' >> .archive/${PRO}all${DATE}${JSON}
# PENDING ICOs
curl -Ss ${X}${PEND} | jq '.' >> .archive/${PRO}${PEND}${DATE}${JSON}
# LIVE ICOs
curl -Ss ${X}${LIVE} | jq '.' >> .archive/${PRO}${LIVE}${DATE}${JSON}
# COMPLETED ICOs
curl -Ss ${X}${COMP} | jq '.' >> .archive/${PRO}${COMP}${DATE}${JSON}
#------------------------------------------------------------------------------#
################################################################################
                                                 ###                         ###
                                                 ### "think outside the box" ###
                                                 ###   ($) ¯\_(ツ)_/¯ (฿)    ###
                                                 ###                         ###
                                                 ###############################
