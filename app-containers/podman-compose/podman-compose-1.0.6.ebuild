# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_SETUPTOOLS=rdepend
PYTHON_COMPAT=( python3_{10..11} )
PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi

DESCRIPTION="Run docker-compose files without root with podman"
HOMEPAGE="https://pypi.org/project/podman-compose https://github.com/containers/podman-compose"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/python-dotenv[${PYTHON_USEDEP}]
"
