#!/bin/bash
rm patch/*.patch
diff -Naur pi-gen/stage1/01-sys-tweaks/files/fstab patch/stage1/01-sys-tweaks/files/fstab > patch/fstab.patch
diff -Naur pi-gen/export-image/prerun.sh patch/export-image/prerun.sh > patch/prerun.sh.patch 
diff -Naur pi-gen/export-image//03-set-partuuid/00-run.sh patch/export-image/03-set-partuuid/00-run.sh > patch/00-run.sh.patch 
