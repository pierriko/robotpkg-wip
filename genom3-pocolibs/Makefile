# robotpkg Makefile for:	architecture/genom
# Created:			Anthony Mallet on Sun, 28 Jan 2007
#

DISTNAME=	genom3-pocolibs-1.7
CATEGORIES=	architecture
MASTER_SITES=	${MASTER_SITE_OPENROBOTS:=genom3-pocolibs/}
MASTER_REPOSITORY= ${MASTER_REPOSITORY_OPENROBOTS}genom3/genom3-pocolibs

MAINTAINER=	mallet@laas.fr
HOMEPAGE=	http://www.openrobots.org/wiki/genom3
COMMENT=	GenoM3 template for pocolibs-based components

LICENSE=	2-clause-bsd

GNU_CONFIGURE=	yes
NOT_FOR_PLATFORM=	# empty

DEPEND_ABI.pocolibs=	pocolibs>=2.12

include ../../middleware/pocolibs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../architecture/genom3/depend.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
