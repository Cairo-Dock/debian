DATE=`date -R`
SIGN='\\n -- '"$DEBFULLNAME <$DEBEMAIL>"'  '"$DATE \n"
CHANGELOG='\\n  * New Upstream Version.'
CHANGELOG_PLUG_INS='\\n  * New Upstream Version.'

VERSION="karmic jaunty intrepid hardy debian debian2"
for RLS in $VERSION; do
	PAQUET="cairo-dock (2.1.3-1~$RLS) $RLS; urgency=low"
	CL="$RLS/debian/changelog"
		sed -i "1i$SIGN" $CL
		sed -i "1i$CHANGELOG" $CL
		sed -i "1i$PAQUET" $CL

	PAQUET="cairo-dock-plug-ins (2.1.3-1~$RLS) $RLS; urgency=low"
	CL="$RLS/plug-ins/debian/changelog"
		sed -i "1i$SIGN" $CL
		sed -i "1i$CHANGELOG_PLUG_INS" $CL
		sed -i "1i$PAQUET" $CL
done
