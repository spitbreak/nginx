#!/bin/sh


NGX_TARGET=/usr/local/nginx
CUST_CONF=cust_conf
NGX_SRC=`pwd`
EXT_MODULE_DIR=$NGX_SRC/../
EXT_MODULES="echo-nginx-module     \
             lua-nginx-module      \
             ngx_devel_kit         \
             redis2-nginx-module   \
             set-misc-nginx-module"
CONFIGURE_FLAGS=""


## script start here
for module in $EXT_MODULES
do
    CONFIGURE_FLAGS="$CONFIGURE_FLAGS --add-module=$EXT_MODULE_DIR$module"
done


echo "========================================================"
echo "        COMFIGURING PHASE"
echo "========================================================"


$NGX_SRC/auto/configure $CONFIGURE_FLAGS   &&
echo
echo
echo "========================================================"
echo "        COMPILING PHASE"
echo "========================================================"


make &&
echo
echo
echo "========================================================"
echo "        INSTALLING PHASE"
echo "========================================================"


make install &&
echo
echo
echo "========================================================"
echo "        DEPLOY CUSTOM CONFIG PHASE"
echo "========================================================"
cp -r $NGX_SRC/$CUST_CONF/* $NGX_TARGET/conf
