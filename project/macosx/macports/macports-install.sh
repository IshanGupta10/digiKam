#!/bin/sh

# Copyright (c) 2013-2015, Gilles Caulier, <caulier dot gilles at gmail dot com>
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.
#

# Pre-processing checks

. ../common/common.sh
CommonChecks

# Update Macports installation

port -v selfupdate

InstallCorePackages

# Mysql support

#port install mysql5

# Packages not functionnals currently. Install Hugin through DMG installer from project web site

#port -v install hugin-app
#port -v install enblend

# Extra packages to hack code

#port install mc
#port install valgrind
#port install kate
#port install konsole
#port install kdeutils4

# Prepare KDE background process to run applications

launchctl load -w /Library/LaunchAgents/org.freedesktop.dbus-session.plist
/opt/local/bin/kbuildsycoca4
