# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Almost Crystallographic Groups - A Library and Algorithms"
HOMEPAGE="https://www.gap-system.org/Packages/${PN}.html"
SRC_URI="https://github.com/gap-packages/${PN}/releases/download/v${PV}/${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=sci-mathematics/gap-core-4.11.0"

HTML_DOCS=htm/*
DOCS="README"

src_install(){
	default

	insinto /usr/share/gap/pkg/"${P}"
	doins -r doc gap
	doins *.g
}
