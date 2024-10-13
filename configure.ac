AC_PREREQ([2.62])
AC_INIT([heirloom-yacc], [0.0.20240915], [https://github.com/mpsuzuki/heirloom-yacc/-/issues])
AM_INIT_AUTOMAKE([foreign])

# Set default prefix
AC_PREFIX_DEFAULT(["/usr/ccs"])


# Checks for programs.
AC_PROG_CC
AX_CHECK_COMPILE_FLAG([-m32],[
  CFLAGS="-m32 "${CFLAGS}
  AC_CFLAGS=${CFLAGS}
])
AC_SUBST([AC_CFLAGS])
AC_CHECK_SIZEOF([int])
AC_CHECK_SIZEOF([void*])
if test ${ac_cv_sizeof_int} != ${ac_cv_sizeof_voidp}
then
  AC_MSG_WARN([original yacc is written for ILP32 platforms, maybe you would receive compiler errors])
fi

AC_PROG_MAKE_SET
AC_PROG_RANLIB

AC_ARG_ENABLE([parser-path],[
AS_HELP_STRING([--parser-path],
               [specify the default path of the C source to insert the generated C source])
  ],[
    PARSER_PATH=${enableval}
  ],[
    PARSER_PATH='$(prefix)/lib/yaccpar'
  ])
AC_SUBST([PARSER_PATH])

AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([GNUmakefile])
AC_OUTPUT
