# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{10..11} )

inherit distutils-r1

DESCRIPTION="OAuth2 goodies for the Djangonauts"
HOMEPAGE="https://github.com/evonove/django-oauth-toolkit"
#SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
SRC_URI="https://github.com/evonove/django-oauth-toolkit/archive/${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="amd64 ~arm64 x86"
IUSE=""

LICENSE="BSD"
SLOT="0"

RDEPEND=">=dev-python/django-2.2[${PYTHON_USEDEP}]
	>=dev-python/requests-2.13.0[${PYTHON_USEDEP}]
	>=dev-python/oauthlib-2.0.3[${PYTHON_USEDEP}]
	dev-python/jwcrypto[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

src_prepare(){
	rm -r tests
	eapply_user
}
