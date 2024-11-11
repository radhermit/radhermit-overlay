EAPI=8

DESCRIPTION="Use nvim as a pager to view manpages, diffs, etc with nvim's syntax highlighting"
HOMEPAGE="https://github.com/lucc/nvimpager"
SRC_URI="https://github.com/lucc/nvimpager/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64"

LICENSE="BSD-2"
SLOT="0"

RDEPEND="app-editors/neovim[-nvimpager]"

src_compile() { :; }

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr install
}
