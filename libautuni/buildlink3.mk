# $NetBSD$

BUILDLINK_TREE+=	libautuni

.if !defined(LIBAUTUNI_BUILDLINK3_MK)
LIBAUTUNI_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libautuni+=	libautuni>=0.0.20261104
BUILDLINK_PKGSRCDIR.libautuni?=		../../autumn/libautuni
# A static library: needed to build its users only.
BUILDLINK_DEPMETHOD.libautuni?=		build

.include "../../graphics/freetype2/buildlink3.mk"
.include "../../x11/libxcb/buildlink3.mk"
.include "../../x11/pixman/buildlink3.mk"
.endif	# LIBAUTUNI_BUILDLINK3_MK

BUILDLINK_TREE+=	-libautuni
