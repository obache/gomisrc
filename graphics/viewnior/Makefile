# $NetBSD: Makefile,v 1.33 2020/08/17 20:19:11 leot Exp $

DISTNAME=	viewnior-1.7
PKGREVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GITHUB:=hellosiyan/}
GITHUB_PROJECT=	Viewnior
GITHUB_TAG=	${DISTNAME}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://siyanpanayotov.com/project/viewnior
COMMENT=	Viewnior is a fast and simple image viewer
LICENSE=	gnu-gpl-v3

WRKSRC=		${WRKDIR}/Viewnior-${DISTNAME}

USE_TOOLS+=	pkg-config msgfmt xgettext
USE_LANGUAGES=	c c++

# XXX: msgfmt: unknown option -- desktop
GETTEXT_TOOLS_REQD=	0.19

.include "../../devel/meson/build.mk"
.include "../../databases/shared-mime-info/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../graphics/exiv2/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
