# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

EGO_PN="github.com/ipfs/go-ipfs"
EGO_COMMIT="8ca278f45f56124ba6d25b0761d0ca0d5147b28b"
EGO_VENDOR=(
	"bazil.org/fuse 65cc252bf669 github.com/bazil/fuse"
	"github.com/AndreasBriese/bbloom 46b345b51c96"
	"github.com/Kubuxu/go-os-helper v0.0.1"
	"github.com/Stebalien/go-bitfield v0.0.1"
	"github.com/beorn7/perks v1.0.0"
	"github.com/blang/semver v3.5.1"
	"github.com/bren2010/proquint 38337c27106d"
	"github.com/btcsuite/btcd 96897255fd17"
	"github.com/cenkalti/backoff v2.1.1"
	"github.com/cheekybits/genny v1.0.0"
	"github.com/coreos/go-semver e214231b295a"
	"github.com/cskr/pubsub v1.0.2"
	"github.com/davidlazar/go-crypto dcfb0a7ac018"
	"github.com/dgraph-io/badger v1.6.0-rc1"
	"github.com/dgryski/go-farm 6a90982ecee2"
	"github.com/dustin/go-humanize v1.0.0"
	"github.com/elgris/jsondiff 765b5c24c302"
	"github.com/facebookgo/atomicfile 2de1f203e7d5"
	"github.com/fsnotify/fsnotify v1.4.7"
	"github.com/gogo/protobuf v1.2.1"
	"github.com/golang/protobuf v1.3.1"
	"github.com/golang/snappy 2e65f85255db"
	"github.com/google/uuid v1.1.1"
	"github.com/gorilla/websocket v1.4.0"
	"github.com/hashicorp/errwrap v1.0.0"
	"github.com/hashicorp/go-multierror v1.0.0"
	"github.com/hashicorp/golang-lru v0.5.1"
	"github.com/hsanjuan/go-libp2p-gostream v0.0.31"
	"github.com/hsanjuan/go-libp2p-http v0.0.2"
	"github.com/huin/goupnp v1.0.0"
	"github.com/ipfs/bbloom v0.0.4"
	"github.com/ipfs/dir-index-html v1.0.3"
	"github.com/ipfs/go-bitswap e37498cf10d6"
	"github.com/ipfs/go-block-format v0.0.2"
	"github.com/ipfs/go-blockservice v0.0.3"
	"github.com/ipfs/go-cid v0.0.4"
	"github.com/ipfs/go-cidutil v0.0.2"
	"github.com/ipfs/go-datastore v0.0.5"
	"github.com/ipfs/go-detect-race v0.0.1"
	"github.com/ipfs/go-ds-badger v0.0.5"
	"github.com/ipfs/go-ds-flatfs v0.0.2"
	"github.com/ipfs/go-ds-leveldb v0.0.2"
	"github.com/ipfs/go-ds-measure v0.0.1"
	"github.com/ipfs/go-fs-lock v0.0.1"
	"github.com/ipfs/go-ipfs-addr v0.0.1"
	"github.com/ipfs/go-ipfs-blockstore v0.0.1"
	"github.com/ipfs/go-ipfs-blocksutil v0.0.1"
	"github.com/ipfs/go-ipfs-chunker v0.0.1"
	"github.com/ipfs/go-ipfs-cmds v0.0.8"
	"github.com/ipfs/go-ipfs-config v0.0.3"
	"github.com/ipfs/go-ipfs-delay v0.0.1"
	"github.com/ipfs/go-ipfs-ds-help v0.0.1"
	"github.com/ipfs/go-ipfs-exchange-interface v0.0.1"
	"github.com/ipfs/go-ipfs-exchange-offline v0.0.1"
	"github.com/ipfs/go-ipfs-files v0.0.3"
	"github.com/ipfs/go-ipfs-posinfo v0.0.1"
	"github.com/ipfs/go-ipfs-pq v0.0.1"
	"github.com/ipfs/go-ipfs-routing v0.0.1"
	"github.com/ipfs/go-ipfs-util v0.0.1"
	"github.com/ipfs/go-ipld-cbor v0.0.2"
	"github.com/ipfs/go-ipld-format v0.0.2"
	"github.com/ipfs/go-ipld-git v0.0.2"
	"github.com/ipfs/go-ipns v0.0.1"
	"github.com/ipfs/go-log v0.0.1"
	"github.com/ipfs/go-merkledag v0.0.3"
	"github.com/ipfs/go-metrics-interface v0.0.1"
	"github.com/ipfs/go-metrics-prometheus v0.0.2"
	"github.com/ipfs/go-mfs v0.0.7"
	"github.com/ipfs/go-path v0.0.4"
	"github.com/ipfs/go-peertaskqueue f09820a0a5b6"
	"github.com/ipfs/go-todocounter v0.0.1"
	"github.com/ipfs/go-unixfs v0.0.6"
	"github.com/ipfs/go-verifcid v0.0.1"
	"github.com/ipfs/interface-go-ipfs-core v0.0.8"
	"github.com/jackpal/gateway v1.0.5"
	"github.com/jackpal/go-nat-pmp v1.0.1"
	"github.com/jbenet/go-context d14ea06fba99"
	"github.com/jbenet/go-is-domain v1.0.2"
	"github.com/jbenet/go-random 123a90aedc0c"
	"github.com/jbenet/go-temp-err-catcher aac704a3f4f2"
	"github.com/jbenet/goprocess v0.1.3"
	"github.com/koron/go-ssdp 4a0ed625a78b"
	"github.com/libp2p/go-addr-util v0.0.1"
	"github.com/libp2p/go-buffer-pool v0.0.2"
	"github.com/libp2p/go-conn-security v0.0.1"
	"github.com/libp2p/go-conn-security-multistream v0.0.2"
	"github.com/libp2p/go-flow-metrics v0.0.3"
	"github.com/libp2p/go-libp2p v0.0.32"
	"github.com/libp2p/go-libp2p-autonat v0.0.6"
	"github.com/libp2p/go-libp2p-autonat-svc v0.0.5"
	"github.com/libp2p/go-libp2p-circuit v0.0.9"
	"github.com/libp2p/go-libp2p-connmgr v0.0.7"
	"github.com/libp2p/go-libp2p-crypto v0.0.2"
	"github.com/libp2p/go-libp2p-discovery v0.0.5"
	"github.com/libp2p/go-libp2p-host v0.0.3"
	"github.com/libp2p/go-libp2p-interface-connmgr v0.0.5"
	"github.com/libp2p/go-libp2p-interface-pnet v0.0.1"
	"github.com/libp2p/go-libp2p-kad-dht v0.0.15"
	"github.com/libp2p/go-libp2p-kbucket v0.1.1"
	"github.com/libp2p/go-libp2p-loggables v0.0.1"
	"github.com/libp2p/go-libp2p-metrics v0.0.1"
	"github.com/libp2p/go-libp2p-mplex v0.1.1"
	"github.com/libp2p/go-libp2p-nat v0.0.4"
	"github.com/libp2p/go-libp2p-net v0.0.2"
	"github.com/libp2p/go-libp2p-netutil v0.0.1"
	"github.com/libp2p/go-libp2p-peer v0.1.1"
	"github.com/libp2p/go-libp2p-peerstore v0.0.6"
	"github.com/libp2p/go-libp2p-pnet v0.0.1"
	"github.com/libp2p/go-libp2p-protocol v0.0.1"
	"github.com/libp2p/go-libp2p-pubsub v0.0.3"
	"github.com/libp2p/go-libp2p-pubsub-router v0.0.3"
	"github.com/libp2p/go-libp2p-quic-transport v0.0.3"
	"github.com/libp2p/go-libp2p-record v0.0.1"
	"github.com/libp2p/go-libp2p-routing v0.0.1"
	"github.com/libp2p/go-libp2p-routing-helpers v0.0.2"
	"github.com/libp2p/go-libp2p-secio v0.0.3"
	"github.com/libp2p/go-libp2p-swarm v0.0.7"
	"github.com/libp2p/go-libp2p-tls v0.0.2"
	"github.com/libp2p/go-libp2p-transport v0.0.5"
	"github.com/libp2p/go-libp2p-transport-upgrader v0.0.4"
	"github.com/libp2p/go-libp2p-yamux v0.1.3"
	"github.com/libp2p/go-maddr-filter v0.0.4"
	"github.com/libp2p/go-mplex v0.0.4"
	"github.com/libp2p/go-msgio v0.0.2"
	"github.com/libp2p/go-nat v0.0.3"
	"github.com/libp2p/go-reuseport v0.0.1"
	"github.com/libp2p/go-reuseport-transport v0.0.2"
	"github.com/libp2p/go-stream-muxer v0.0.1"
	"github.com/libp2p/go-stream-muxer-multistream v0.1.1"
	"github.com/libp2p/go-tcp-transport v0.0.4"
	"github.com/libp2p/go-testutil v0.0.1"
	"github.com/libp2p/go-ws-transport v0.0.6"
	"github.com/libp2p/go-yamux v1.2.3"
	"github.com/lucas-clemente/quic-go v0.11.1"
	"github.com/marten-seemann/qtls v0.2.3"
	"github.com/mattn/go-colorable v0.1.2"
	"github.com/mattn/go-isatty v0.0.8"
	"github.com/mattn/go-runewidth v0.0.4"
	"github.com/matttproud/golang_protobuf_extensions v1.0.1"
	"github.com/mgutz/ansi 9520e82c474b"
	"github.com/miekg/dns v1.1.12"
	"github.com/minio/blake2b-simd 3f5f724cb5b1"
	"github.com/minio/sha256-simd 6de447530771"
	"github.com/mitchellh/go-homedir v1.1.0"
	"github.com/mr-tron/base58 v1.1.2"
	"github.com/multiformats/go-base32 v0.0.3"
	"github.com/multiformats/go-multiaddr v0.0.4"
	"github.com/multiformats/go-multiaddr-dns v0.0.3"
	"github.com/multiformats/go-multiaddr-net v0.0.1"
	"github.com/multiformats/go-multibase v0.0.1"
	"github.com/multiformats/go-multicodec v0.1.6"
	"github.com/multiformats/go-multihash v0.0.10"
	"github.com/multiformats/go-multistream v0.0.4"
	"github.com/opentracing/opentracing-go v1.1.0"
	"github.com/pkg/errors v0.8.1"
	"github.com/polydawn/refmt df39d6c2d992"
	"github.com/prometheus/client_golang v0.9.3"
	"github.com/prometheus/client_model fd36f4220a90"
	"github.com/prometheus/common v0.4.0"
	"github.com/prometheus/procfs 9935e8e0588d"
	"github.com/rs/cors v1.6.0"
	"github.com/spacemonkeygo/openssl c2dcc5cca94a"
	"github.com/spacemonkeygo/spacelog 2296661a0572"
	"github.com/spaolacci/murmur3 v1.1.0"
	"github.com/syndtr/goleveldb v1.0.0"
	"github.com/texttheater/golang-levenshtein d188e65d659e"
	"github.com/whyrusleeping/base32 c30ac30633cc"
	"github.com/whyrusleeping/cbor 63513f603b11"
	"github.com/whyrusleeping/chunker fe64bd25879f"
	"github.com/whyrusleeping/go-keyspace 5b898ac5add1"
	"github.com/whyrusleeping/go-logging 0457bb6b88fc"
	"github.com/whyrusleeping/go-notifier 097c5d47330f"
	"github.com/whyrusleeping/go-sysinfo 4a357d4b90b1"
	"github.com/whyrusleeping/mafmt v1.2.8"
	"github.com/whyrusleeping/mdns ef14215e6b30"
	"github.com/whyrusleeping/multiaddr-filter e903e4adabd7"
	"github.com/whyrusleeping/tar-utils 8c6c8ba81d5c"
	"github.com/whyrusleeping/timecache cfcb2f1abfee"
	"go.opencensus.io v0.21.0 github.com/census-instrumentation/opencensus-go"
	"go.uber.org/atomic v1.4.0 github.com/uber-go/atomic"
	"go.uber.org/dig v1.7.0 github.com/uber-go/dig"
	"go.uber.org/fx v1.9.0 github.com/uber-go/fx"
	"go.uber.org/multierr v1.1.0 github.com/uber-go/multierr"
	"go4.org 94abd6928b1d github.com/go4org/go4"
	"golang.org/x/crypto 6d4e4cb37c7d github.com/golang/crypto"
	"golang.org/x/net 3b0461eec859 github.com/golang/net"
	"golang.org/x/sys 04f50cda93cb github.com/golang/sys"
	"golang.org/x/text v0.3.2 github.com/golang/text"
	"golang.org/x/xerrors 9bdfabe68543 github.com/golang/xerrors"
	"gopkg.in/cheggaaa/pb.v1 v1.0.28 github.com/cheggaaa/pb"
)

inherit golang-vcs-snapshot systemd user bash-completion-r1

SRC_URI="https://${EGO_PN}/archive/${EGO_COMMIT}.tar.gz -> ${P}.tar.gz
	https://raw.githubusercontent.com/ipfs/go-ipfs/${EGO_COMMIT}/misc/completion/ipfs-completion.bash -> ${P}.bash
	${EGO_VENDOR_URI}"

DESCRIPTION="A peer-to-peer hypermedia protocol to make the web faster, safer, and more open."
HOMEPAGE="https://ipfs.io/"
LICENSE="MIT"

SLOT="0"
IUSE="debug +fuse test"
RESTRICT="mirror"
KEYWORDS="-* ~amd64 ~arm ~x86"

RDEPEND="fuse? ( sys-fs/fuse:0 )"

QA_PRESTRIPPED="/usr/bin/ipfs"

src_compile() {
	GOPATH="${WORKDIR}/${P}:$(get_golibdir_gopath)" \
		go install -v -work -x -tags "$(usex !fuse nofuse '')" \
			${EGO_PN}/cmd/ipfs || die
}

src_install() {
	dobin bin/ipfs
	use debug && dostrip -x /usr/bin/ipfs

	systemd_dounit "${FILESDIR}/ipfs.service"
	newinitd "${FILESDIR}/ipfs.init" ipfs
	newconfd "${FILESDIR}/ipfs.confd" ipfs
	newbashcomp "${DISTDIR}/${P}.bash" "ipfs"

	keepdir /var/log/ipfs
}

src_test() {
	TEST_NO_FUSE="$(usex fuse 0 1)" emake test_go_short
}

pkg_preinst() {
	enewgroup ipfs
	enewuser ipfs "" "" /var/lib/ipfs ipfs

	fowners -R ipfs:ipfs /var/log/ipfs
}

pkg_postinst() {
	elog 'To be able to use the ipfs service you will need to create the ipfs repository'
	elog '(eg: su -s /bin/sh -c "ipfs init -e" ipfs)'
	elog 'or change IPFS_PATH of /etc/conf.d/ipfs with another with proper permissions.'
}
