# $NetBSD: Makefile,v 1.48 2021/01/03 08:20:26 taca Exp $

DISTNAME=	tzinfo-2.0.4
CATEGORIES=	time

MAINTAINER=	taca@NetBSD.org
HOMEPAGE=	https://tzinfo.github.io/
COMMENT=	Daylight savings aware timezone library
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-thread_safe>=0.1<1:../../misc/ruby-thread_safe

USE_LANGUAGES=	# none

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
