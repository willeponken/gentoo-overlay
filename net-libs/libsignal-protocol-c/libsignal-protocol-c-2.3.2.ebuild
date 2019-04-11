# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 multilib cmake-utils

DESCRIPTION="Signal Protocol C Library"
HOMEPAGE="https://www.whispersystems.org/"

EGIT_REPO_URI="https://github.com/signalapp/libsignal-protocol-c"
EGIT_COMMIT="v${PV}"

LICENSE="GPL-3"
SLOT="0"
