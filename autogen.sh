#!/bin/sh
aclocal -Im4
autoheader
automake -a
autoconf
