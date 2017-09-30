_branch=master
pkgname=manjaro-openbox-settings
pkgver=0.1
pkgrel=1
pkgdesc="Manjaro openbox settings"
arch=('any')
depends=()
makedepends=('git' 'manjaro-zsh-config')
optdepends=()
url="https://github.com/fhdk/mbox-settings"
conflicts=()
replaces=()
provides=("manjaro-openbox-settings=${pkgver}")
license=('GPL')
# install=settings.install
backup=()
# source=(git+$url#branch=$_branch)
source=()
sha256sums=('SKIP')

package() {
  cd "${pkgdir}"
  mkdir -p "usr/share/backgrounds"
  cp --recursive "${srcdir}/backgrounds" "usr/share/backgrounds"
  cp --recursive "${srcdir}/skel" "etc"
  cp --recursive "${srcdir}/lib" "usr/local/lib/mbox"
  cp --recursive "${srcdir}/bin" "usr/local"
}

