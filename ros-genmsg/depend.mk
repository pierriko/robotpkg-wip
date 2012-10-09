# robotpkg depend.mk for:	interface/ros-genmsg
# Created:			Anthony Mallet on Mon,  8 Oct 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ROS_GENMSG_DEPEND_MK:=	${ROS_GENMSG_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-genmsg
endif

ifeq (+,$(ROS_GENMSG_DEPEND_MK)) # -----------------------------------------

PREFER.ros-genmsg?=	robotpkg

DEPEND_USE+=		ros-genmsg

DEPEND_ABI.ros-genmsg?=	ros-genmsg>=0.3.10
DEPEND_DIR.ros-genmsg?=	../../wip/ros-genmsg

SYSTEM_SEARCH.ros-genmsg=\
	'share/genmsg/stack.xml:/<version>/s/[^0-9.]//gp'	\
	'lib/pkgconfig/genmsg.pc:/Version/s/[^0-9.]//gp'

endif # ROS_GENMSG_DEPEND_MK -----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}