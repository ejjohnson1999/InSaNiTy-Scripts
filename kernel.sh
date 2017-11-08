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

export sourcedir=~/lineage
export outdir=~/lineage/out/target/product/oneplus3
cd $sourcedir
rm -rf $outdir/*kernel*
rm -rf $outdir/boot.img
rm -rf $outdir/ramdisk.img
rm -rf $outdir/*ramdisk*
rm -rf $outdir/*boot*
sleep 1
echo "Building update.zip"
. build/envsetup.sh
sleep 1
lunch lineage_oneplus3-userdebug
sleep 1
time make -j4 bootimage
echo "Build Compleated"
cd $outdir
ls
sleep 2
echo "Upload your build lazyass"