# $NetBSD: Makefile,v 1.19 2020/08/31 18:12:16 wiz Exp $

.include "../../textproc/mecab/Makefile.common"

DISTNAME=		mecab-perl-${MECAB_VERSION}
PKGNAME=		p5-mecab-${MECAB_VERSION}
PKGREVISION=		9
CATEGORIES+=		perl5
MASTER_SITES=		-https://drive.google.com/uc?id=0B4y35FiV1wh7M1pQam5XQjBLcU0&export=download

COMMENT=		MeCab perl module
LICENSE=		gnu-gpl-v2 OR gnu-lgpl-v2.1 OR modified-bsd

PERL5_CONFIGURE=	yes
USE_LANGUAGES=		c++

PERL5_PACKLIST=		auto/MeCab/.packlist
REPLACE_PERL+=		test.pl

BUILDLINK_API_DEPENDS.mecab+=	mecab>=${MECAB_VERSION}

.include "../../textproc/mecab/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
