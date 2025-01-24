#!/usr/bin/env bash

function __icon_map() {
  case $1 in
  cc.arduino.*) echo :default: ;;                          # Arduino IDE.app
  ch.sudo.cyberduck) echo :default: ;;                     # Cyberduck.app
  co.gitup.mac) echo :default: ;;                          # GitUp.app
  com.1password.*) echo :default: ;;                       # 1Password.app
  com.BuhlData.WISOsteuerMac*) echo :default: ;;           # SteuerMac 20**.app
  com.aone.keka) echo :default: ;;                         # Keka.app
  com.apple.AddressBook) echo :default: ;;                 # Contacts.app
  com.apple.AppStore) echo :app_store: ;;                  # App Store.app
  com.apple.FaceTime) echo :facetime: ;;                   # FaceTime.app
  com.apple.FontBook) echo :font_book: ;;                  # Font Book.app
  com.apple.GenerativePlaygroundApp) echo :default: ;;     # Image Playground.app
  com.apple.Home) echo :default: ;;                        # Home.app
  com.apple.HomeKit-Accessory-Simulator) echo :default: ;; # HomeKit Accessory Simulator.app
  com.apple.Image_Capture) echo :default: ;;               # Image Capture.app
  com.apple.Maps) echo :maps: ;;                           # Maps.app
  com.apple.MobileSMS) echo :messages: ;;                  # Messages.app
  com.apple.Music) echo :music: ;;                         # Music.app
  com.apple.Notes) echo :notes: ;;                         # Notes.app
  com.apple.Passwords) echo :default: ;;                   # Passwords.app
  com.apple.PhotoBooth) echo :default: ;;                  # Photo Booth.app
  com.apple.Photos) echo :photos: ;;                       # Photos.app
  com.apple.Preview) echo :preview_2: ;;                   # Preview.app
  com.apple.QuickTimePlayerX) echo :default: ;;            # QuickTime Player.app
  com.apple.Safari) echo :safari: ;;                       # Safari
  com.apple.TV) echo :default: ;;                          # TV.app
  com.apple.TextEdit) echo :default: ;;                    # TextEdit.app
  com.apple.VoiceMemos) echo :default: ;;                  # VoiceMemos.app
  com.apple.calculator) echo :calculator: ;;               # Calculator.app
  com.apple.clock) echo :clock: ;;                         # Clock.app
  com.apple.dt.Xcode) echo :default: ;;                    # Xcode.app
  com.apple.finder) echo :finder: ;;
  com.apple.findmy) echo :find_my: ;;                           # FindMy.app
  com.apple.freeform) echo :default: ;;                         # Freeform.app
  com.apple.garageband10) echo :default: ;;                     # GarageBand.app
  com.apple.iBooksX) echo :books: ;;                            # Books.app
  com.apple.iCal) echo :calendar: ;;                            # Calendar.app
  com.apple.iMovieApp) echo :default: ;;                        # iMovie.app
  com.apple.iWork.Keynote) echo :keynote: ;;                    # Keynote.app
  com.apple.iWork.Numbers) echo :numbers: ;;                    # Numbers.app
  com.apple.iWork.Pages) echo :default: ;;                      # Pages.app
  com.apple.mail) echo :mail: ;;                                # Mail.app
  com.apple.news) echo :default: ;;                             # News.app
  com.apple.podcasts) echo :podcasts: ;;                        # Podcasts.app
  com.apple.reminders) echo :default: ;;                        # Reminders.app
  com.apple.shortcuts) echo :default: ;;                        # Shortcuts.app
  com.apple.stocks) echo :default: ;;                           # Stocks.app
  com.apple.systempreferences) echo :system_settings_simple: ;; # System Settings.app
  com.apple.weather) echo :default: ;;                          # Weather.app
  com.bitcavehq.Airflow) echo :default: ;;                      # Airflow.app
  com.citrix.receiver.*) echo :citrix_workspace: ;;
  com.daisydiskapp.DaisyDisk) echo :default: ;;              # DaisyDisk.app
  com.gingerlabs.Notability) echo :default: ;;               # Notability.app
  com.github.GitHubClient) echo :github_desktop: ;;          # GitHub Desktop.app
  com.googlecode.iterm2) echo :terminal: ;;                  # iTerm.app
  com.hnc.Discord) echo :discord: ;;                         # Discord.app
  com.insomnia.app) echo :default: ;;                        # Insomnia.app
  com.iwaxx.LanScan) echo :default: ;;                       # LanScan.app
  com.junecloud.mac.Deliveries) echo :default: ;;            # Deliveries.app
  com.meshmixer.meshmixer09) echo :default: ;;               # Meshmixer.app
  com.microsoft.Excel) echo :microsoft_excel: ;;             # Microsoft Excel.app
  com.microsoft.Powerpoint) echo :microsoft_powerpoint: ;;   # Microsoft PowerPoint.app
  com.microsoft.VSCode) echo :vscode: ;;                     # Visual Studio Code.app
  com.microsoft.Word) echo :microsoft_word: ;;               # Microsoft Word.app
  com.microsoft.rdc.macos) echo :microsoft_remotedesktop: ;; # Microsoft Remote Desktop.app
  com.mitchellh.ghostty) echo :terminal: ;;                  # Ghostty.app
  com.moneymoney-app.retail) echo :default: ;;               # MoneyMoney.app
  com.prusa3d.slic3r/) echo :prusa_slicer: ;;                # PrusaSlicer.app
  com.readitlater.PocketMac) echo :default: ;;               # Pocket.app
  com.reederapp.rkit2.mac) echo :default: ;;                 # Reeder.app
  com.ridiculousfish.HexFiend) echo :default: ;;             # Hex Fiend.app
  com.spotify.client) echo :spotify: ;;                      # Spotify.app
  com.sublimemerge) echo :default: ;;                        # Sublime Merge.app
  com.sublimetext.4) echo :default: ;;                       # Sublime Text.app
  com.synology.HyperBackupExplorer) echo :default: ;;        # HyperBackupExplorer.app
  com.vallettaventures.Texpad) echo :texshop: ;;             # Texifier.app
  com.valvesoftware.steam) echo :default: ;;                 # Steam.app
  com.wireguard.macos) echo :default: ;;                     # WireGuard.app
  de.pascalbraband.SlidePilot) echo :default: ;;             # SlidePilot.app
  de.qdev.ExifRenamer) echo :default: ;;                     # ExifRenamer.app
  eu.exelban.Stats) echo :default: ;;                        # Stats.app
  fr.handbrake.HandBrake) echo :default: ;;                  # HandBrake.app
  io.github.openconnect.openconnect-gui) echo :default: ;;   # OpenConnect-GUI.app
  jp.tmkk.XLD) echo :default: ;;                             # XLD.app
  md.obsidian) echo :obsidian: ;;                            # Obsidian.app
  org.aseprite.Aseprite) echo :default: ;;                   # Aseprite.app
  org.audacityteam.audacity) echo :default: ;;               # Audacity.app
  org.blenderfoundation.blender) echo :blender: ;;           # Blender.app
  org.chromium.Chromium) echo :chrome: ;;                    # Chromium.app
  org.fritzing.Fritzing) echo :default: ;;                   # Fritzing.app
  org.geogebra.calculator.suite) echo :default: ;;           # GeoGebra Calculator Suite.app
  org.geogebra.mac.cas) echo :default: ;;                    # GeoGebra CAS Calculator.app
  org.geogebra.mac.geometry) echo :default: ;;               # GeoGebra Geometry.app
  org.gimp.gimp-2.10) echo :default: ;;                      # GIMP.app
  org.idrix.VeraCrypt) echo :default: ;;                     # VeraCrypt.app
  org.inkscape.Inkscape) echo :inkscape: ;;                  # Inkscape.app
  org.mozilla.firefox) echo :firefox: ;;                     # Firefox.app
  org.musescore.MuseScore) echo :default: ;;                 # MuseScore 4.app
  org.openscad.OpenSCAD) echo :default: ;;                   # OpenSCAD.app
  org.raspberrypi.imagingutility) echo :default: ;;          # Raspberry Pi Imager.app
  org.via.configurator) echo :default: ;;                    # VIA.app
  org.videolan.vlc) echo :default: ;;                        # VLC.app
  org.whispersystems.signal-desktop) echo :default: ;;       # Signal.app
  org.zotero.zotero) echo :default: ;;                       # Zotero.app
  recipes.mela.appkit) echo :default: ;;                     # Mela.app
  us.zoom.xos) echo :zoom: ;;                                # zoom.us.app
  *) echo :default: ;;
  esac
}
