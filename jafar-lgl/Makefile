# robotpkg Makefile for:	wip/jafar-lgl
# Created:			Redouane Boumghar on Thu, 17 Mar 2011
#

VERSION=		1.7.1
DISTNAME=		jafar-lgl-${VERSION}
PKGREVISION=	2
CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=jafar-lgl/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/jafar/jafar/modules/lgl

MAINTAINER=		jafar@laas.fr
HOMEPAGE=		https://intranet.laas.fr/intranet/robots/wiki/Jafar
COMMENT=		Laas Graph Library. Build navigation graphs from a georeferenced raster image.
LICENSE=		isc

USE_PKGLOCALEDIR=	yes

CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DGDAL_CONFIG=${PREFIX.gdal}/bin/gdal-config

PKG_SUPPORTED_OPTIONS+=		qdisplay
PKG_OPTION_DESCR.qdisplay=	Enable jafar module qdisplay support.
define PKG_OPTION_SET.qdisplay
  CMAKE_ARGS+=			-DHAVE_MODULE_QDISPLAY=ON
  include ../../graphics/jafar-qdisplay/depend.mk
endef
define PKG_OPTION_UNSET.qdisplay
  CMAKE_ARGS+=			-DHAVE_MODULE_QDISPLAY=OFF
endef


include ../../devel/jafar-kernel/depend.mk

include ../../devel/boost-headers/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/gdal.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/language/fortran.mk
include ../../mk/robotpkg.mk
