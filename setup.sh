#!/bin/sh
#
#
# Copyright (C) 2017 Ethan Johnson
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>

export vendordir=~/lineage/vendor
export scriptdir=~android/scripts

cd $vendordir
sleep 1
git clone git@github.com:TheMuppets/proprietary_vendor_oneplus.git oneplus
sleep 1
cd $scriptdir
echo "You're vendor's cloned"
