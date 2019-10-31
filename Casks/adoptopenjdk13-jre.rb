cask 'adoptopenjdk13-jre' do
  version '13.0.1,9'
  sha256 '563e2c07f531e1d4dc6ab9893f4b5aaf42e500ce1b71e746dc44b0cd8fe8c1f2'

  # github.com/AdoptOpenJDK was verified as official when first introduced to the cask
  url 'https://github.com/AdoptOpenJDK/openjdk13-binaries/releases/download/jdk-13.0.1%2B9/OpenJDK13U-jre_x64_mac_hotspot_13.0.1_9.pkg'
  appcast "https://github.com/AdoptOpenJDK/openjdk#{version.major}-binaries/releases/latest"
  name 'AdoptOpenJDK 13 (JRE)'
  homepage 'https://adoptopenjdk.net/'

  pkg 'OpenJDK13U-jre_x64_mac_hotspot_13.0.1_9.pkg'

  uninstall pkgutil: "net.adoptopenjdk.#{version.major}.jre"
end