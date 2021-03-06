cask 'reflector' do
  version '3.2.1'
  sha256 'ef56cde06b2aed87b164f2856f5190931d839e552d3b0755db11bddf5db86614'

  url "https://download.airsquirrels.com/Reflector#{version.major}/Mac/Reflector-#{version}.dmg"
  appcast "https://updates.airsquirrels.com/Reflector#{version.major}/Mac/Reflector#{version.major}.xml"
  name 'Reflector'
  homepage 'https://www.airsquirrels.com/reflector/'

  app "Reflector #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/Logs/Reflector3.log*',
               '~/Library/Caches/com.squirrels.Reflector-3',
               '~/Library/Preferences/com.squirrels.Reflector-3.plist',
             ]
end
