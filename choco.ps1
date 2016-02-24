#Allow script execution
Set-ExecutionPolicy Unrestricted -Force;

$PACKAGES="vcredist2015 gimp notepadplusplus flashplayerplugin googlechrome firefox git conemu jre8 adobereader 7zip vlc ccleaner 7zip.commandline sysinternals powershell filezilla putty vim libreoffice dropbox virtualbox python python2 curl wireshark procexp svn pdfcreator wget thunderbird malwarebytes winscp calibre cygwin youtube-dl dotnet3.5 dotnet4.5 keepass php foxitreader winmerge winpcap googledrive mingw irfanview strawberryperl cmder.portable pip cyg-get tor-browser qbittorrent sumatrapdf nmap openssl.light ffmpeg yumi adblockplusie adwcleaner crystaldiskinfo windbg recuva notepad2 openvpn mobaxterm windowsrepair gpg4win spybot nano smartftp rufus.install hexchat bleachbit clamwin unetbootin syncthing-gtk jdownloader xming rsync clementine jitsi winff mpv testdisk-photorec ums produkey stunnel angryip ant-renamer win32diskimager.install peerblock cdrtfe gsmartcontrol veracrypt ncftp";

echo "The following packages will be installed:";
echo $PACKAGES;
pause;

#Install chocolatey
#iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'));

#Install package list
foreach($p in $PACKAGES.split(' '))
{
    choco install $p -y;
    sleep(1);
}

pause;