# robotpkg Makefile for:	architecture/genom3-ros
# Created:			Anthony Mallet on Fri, 19 Oct 2012
#

PKGREVISION=	1
DISTNAME=	genom3-ros-1.10
CATEGORIES=	architecture
MASTER_SITES=	${MASTER_SITE_OPENROBOTS:=genom3-ros/}
MASTER_REPOSITORY= ${MASTER_REPOSITORY_OPENROBOTS}genom3/genom3-ros

MAINTAINER=	mallet@laas.fr
HOMEPAGE=	http://www.openrobots.org/wiki/genom3
COMMENT=	GenoM3 template for ros-based components

LICENSE=	2-clause-bsd

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--with-boost=${PREFIX.boost-headers}

NOT_FOR_PLATFORM=	# empty

include ../../architecture/genom3/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/ros-ros/depend.mk
include ../../interfaces/ros-common-msgs/depend.mk
include ../../lang/ros-gencpp/depend.mk
include ../../lang/ros-genpy/depend.mk
include ../../middleware/ros-actionlib/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
