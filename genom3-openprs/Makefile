# robotpkg Makefile for:	architecture/genom
# Created:			Anthony Mallet on Sun, 28 Jan 2007
#

PKGREVISION=	2
DISTNAME=	genom3-openprs-1.0.7
CATEGORIES=	architecture
MASTER_SITES=	${MASTER_SITE_OPENROBOTS:=genom3-openprs/}
MASTER_REPOSITORY= ${MASTER_REPOSITORY_OPENROBOTS_TRAC}genom3-openprs

MAINTAINER=	felix@laas.fr
#HOMEPAGE=	https://homepages.laas.fr/mallet/soft/architecture/genom3
COMMENT=	GenoM3 template for OpenPRS client

LICENSE=	2-clause-bsd

GNU_CONFIGURE=	yes
NOT_FOR_PLATFORM=	# empty

# for checkout target
AUTORECONF_SCRIPT=	${SH}
AUTORECONF_ARGS=	${WRKSRC}/bootstrap.sh

include ../../wip/transgen3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../architecture/genom3/depend.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
