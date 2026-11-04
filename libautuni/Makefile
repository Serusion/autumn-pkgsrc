# $NetBSD$

DISTNAME=	libautuni-0.0.20261104
CATEGORIES=	autumn graphics
MASTER_SITES=	${MASTER_SITE_GITHUB:=Serusion/}
GITHUB_PROJECT=	libautuni
GITHUB_TAG=	5a8f89cc0c27b8693a7ba934e1342ad3751bc9f6

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/Serusion/libautuni
COMMENT=	Drawing library of the AutumnBSD desktop
LICENSE=	2-clause-bsd

WRKSRC=			${WRKDIR}/${GITHUB_PROJECT}-${GITHUB_TAG}
USE_BSD_MAKEFILE=	yes
USE_TOOLS+=		pkg-config
AUTO_MKDIRS=		yes

MAKE_FLAGS+=	AUTUNI_PREFIX=${PREFIX}

.include "../../graphics/freetype2/buildlink3.mk"
.include "../../x11/libxcb/buildlink3.mk"
.include "../../x11/pixman/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
