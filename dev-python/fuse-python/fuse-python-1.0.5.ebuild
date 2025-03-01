# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{9..10} pypy3 )

inherit distutils-r1

MY_P=python-fuse-${PV}
DESCRIPTION="Python FUSE bindings"
HOMEPAGE="https://github.com/libfuse/python-fuse"
SRC_URI="
	https://github.com/libfuse/python-fuse/archive/v${PV}.tar.gz
		-> ${MY_P}.tar.gz
"
S="${WORKDIR}/${MY_P}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="sys-fs/fuse:0="
DEPEND="${RDEPEND}"
BDEPEND="virtual/pkgconfig"
