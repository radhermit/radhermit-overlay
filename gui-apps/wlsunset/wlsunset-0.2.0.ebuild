# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="Day/night gamma adjustments for Wayland compositors supporting wlr-gamma-control-unstable-v1"
HOMEPAGE="https://sr.ht/~kennylevinsen/wlsunset"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://git.sr.ht/~kennylevinsen/wlsunset"
else
	SRC_URI="https://git.sr.ht/~kennylevinsen/wlsunset/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

LICENSE="MIT"
SLOT="0"
IUSE="+man"

RDEPEND="
	dev-libs/wayland
"
BDEPEND="
	${RDEPEND}
	virtual/pkgconfig
	dev-libs/wayland-protocols
"

if [[ ${PV} == 9999 ]]; then
	BDEPEND+="man? ( ~app-text/scdoc-9999 )"
else
	BDEPEND+="man? ( >=app-text/scdoc-1.9.3 )"
fi

src_configure() {
	local emesonargs=(
		$(meson_feature man man-pages)
		"-Dwerror=false"
	)
	meson_src_configure
}
