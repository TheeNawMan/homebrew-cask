cask 'praat' do
  version '6.1.11'
  sha256 '020ad9d9addea38c8b34f4076059d6c8ccee210ace3102d11cbe08eb848b2aac'

  # github.com/praat/praat was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
