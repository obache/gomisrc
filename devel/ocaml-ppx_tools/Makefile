# $NetBSD: Makefile,v 1.17 2020/12/09 11:35:47 jaapb Exp $

VERSION=	6.3
GITHUB_PROJECT=	ppx_tools
DISTNAME=	${GITHUB_PROJECT}-${VERSION}
PKGNAME=	ocaml-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=ocaml-ppx/}

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	https://github.com/ocaml-ppx/ppx_tools/
COMMENT=	Tools for authors of OCaml ppx rewriters
LICENSE=	mit

USE_LANGUAGES=		# none

OCAML_USE_DUNE=	yes

BUILDLINK_API_DEPENDS.ocaml+=	ocaml>=4.09.0 # this really needs 4.09

.include "../../mk/ocaml.mk"
.include "../../devel/ocaml-cppo/buildlink3.mk"
BUILDLINK_DEPMETHOD.ocaml-cppo=	build
.include "../../mk/bsd.pkg.mk"
