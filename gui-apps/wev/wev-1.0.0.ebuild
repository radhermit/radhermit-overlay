# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="tool for debugging events on a Wayland window, analagous to the X11 tool xev"
HOMEPAGE="https://git.sr.ht/~sircmpwn/wev"
SRC_URI="https://git.sr.ht/~sircmpwn/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+man"

RDEPEND="
	dev-libs/wayland
	x11-libs/libxkbcommon
"
BDEPEND="
	${RDEPEND}
	virtual/pkgconfig
	dev-libs/wayland-protocols
	dev-util/wayland-scanner
	man? ( >=app-text/scdoc-1.9.3 )
"
