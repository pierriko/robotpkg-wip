# robotpkg Makefile for:	wip/jafar-rednav
# Created:			Redouane Boumghar on Thu, 17 Mar 2011
#

VERSION=		0.9
DISTNAME=		jafar-rednav-${VERSION}
CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=jafar-rednav/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/jafar/modules/rednav

MAINTAINER=		redouane.boumghar@laas.fr
HOMEPAGE=		https://intranet.laas.fr/intranet/robots/wiki/Jafar
COMMENT=		Cooperative navigation mission library
LICENSE=		isc

USE_PKGLOCALEDIR=	yes

CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include


include ../../devel/jafar-kernel/depend.mk
include ../../wip/jafar-lgl/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/language/fortran.mk
include ../../mk/robotpkg.mk
