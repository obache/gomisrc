# $NetBSD: Makefile,v 1.4 2020/01/18 23:30:59 rillig Exp $
TRYTON_MODULE_NAME=	trytond_sale_supply
.include "../../devel/py-trytond/Makefile.common"
CATEGORIES=	finance python

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.tryton.org/
COMMENT=	Sale supply module of the Tryton application platform
LICENSE=	gnu-gpl-v3

DEPENDS+=	${PYPKGPREFIX}-trytond-stock>=${TRYTON_BASEVER}:../../misc/py-trytond-stock
DEPENDS+=	${PYPKGPREFIX}-trytond-purchase>=${TRYTON_BASEVER}:../../finance/py-trytond-purchase
DEPENDS+=	${PYPKGPREFIX}-trytond-purchase-request>=${TRYTON_BASEVER}:../../finance/py-trytond-purchase-request
DEPENDS+=	${PYPKGPREFIX}-trytond-sale>=${TRYTON_BASEVER}:../../finance/py-trytond-sale
DEPENDS+=	${PYPKGPREFIX}-trytond>=${TRYTON_BASEVER}:../../devel/py-trytond

USE_LANGUAGES=	# none

REPLACE_PYTHON+=	tests/test_sale_supply.py

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
