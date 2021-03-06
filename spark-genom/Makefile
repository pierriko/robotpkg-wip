# Created:			Severin Lemaignan on Fri, 24 Sep 2010
#

DISTNAME=		spark-genom-3.8
CATEGORIES=		knowledge
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=spark-genom/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS_TRAC}spark-genom

MAINTAINER=		robotpkg@laas.fr
COMMENT=		Spatial Reasoning and Knowledge module

#spark-genom is currently GPL because it depends on BioMove3D that depends itself 
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=		gnu-gpl-v2


#######################
#### SPARK OPTIONS ####
#######################

PKG_OPTIONS_OPTIONAL_GROUPS=	robot
PKG_OPTIONS_GROUP.robot=	hrp2 pr2

##
## HRP2
##
PKG_OPTION_DESCR.hrp2=	Compile SPARK with support for HRP2

define PKG_OPTION_SET.hrp2
  GENOM_ARGS+= -DHRP2
  include ../../wip/gest-genom/depend.mk
  include ../../robots/hrp2-genom/depend.mk
endef

##
## PR2
##
PKG_OPTION_DESCR.pr2=	Compile SPARK with support for PR2

define PKG_OPTION_SET.pr2
  GENOM_ARGS+= -DPR2
  GENOM_ARGS+= -DUSE_GLUT
  include ../../interfaces/openrobots-pose/depend.mk
  include ../../wip/jointStateMapper/depend.mk
endef

##
## Simulation
##
PKG_SUPPORTED_OPTIONS+=	simulation
PKG_OPTION_DESCR.simulation=	Compile SPARK for simulation only
PKG_OPTION_SET.simulation:=	GENOM_ARGS+= -DSIMULATION

##
## Ontology server
##
PKG_SUPPORTED_OPTIONS+=	oro
#PKG_SUGGESTED_OPTIONS+=	oro
PKG_OPTION_DESCR.oro=	Enable the support of ORO ontology server

define PKG_OPTION_SET.oro
  GENOM_ARGS+= -DORO
  include ../../knowledge/liboro/depend.mk
endef

##
## USE_MIGHTABILITY_MAPS option
##
PKG_SUPPORTED_OPTIONS+=	mightability
PKG_OPTION_DESCR.mightability=	Enable  mightabilities functions

define PKG_OPTION_SET.mightability
   GENOM_ARGS+= -DUSE_MIGHTABILITY_MAPS
endef

PKG_SUGGESTED_OPTIONS+= mightability

##
## Attentional
##
PKG_SUPPORTED_OPTIONS+=	attentional
PKG_OPTION_DESCR.attentional=	Compile SPARK with the attentional plugin
define PKG_OPTION_SET.attentional
  GENOM_ARGS+= -DATTENTIONAL
  include ../../wip/attentional-genom/depend.mk
endef

#####################

GENOM_MODULE=		spark

## BioMove3D dependency
## Build BioMove3D with the "Jido" profile to get all required options for
# HRI with BioMove3D
REQD_BUILD_OPTIONS.BioMove3D:=	jido

include ../../wip/libmove3d/depend.mk
include ../../wip/libmove3d-hri/depend.mk

include ../../architecture/genom/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../image/viman-genom/depend.mk
include ../../image/niut-genom/depend.mk
include ../../interfaces/genBasic-genom/depend.mk
include ../../interfaces/genHum-genom/depend.mk
include ../../localization/mocap-genom/depend.mk
include ../../localization/pom-genom/depend.mk
include ../../manipulation/genManip-genom/depend.mk
include ../../math/t3d/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
