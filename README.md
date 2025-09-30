Cairo-Dock Ubuntu packaging
===========================

This repository contains packaging for Cairo-Dock for recent versions of Debian and Ubuntu. These are used to build our packages on Launchpad:
 - https://launchpad.net/~cairo-dock-team/+archive/ppa
 - https://launchpad.net/~cairo-dock-team/+archive/weekly

This repository currently contains two subfolders necessary to package the two main components of the project:
 - `core`: https://github.com/Cairo-Dock/cairo-dock-core
 - `plug-ins`: https://github.com/Cairo-Dock/cairo-dock-plug-ins

To build the packages, copy the respective `debian` subfolders to the source tree, modify `debian/changelog` as necessary and use the standard `debuild` tool.

Packages built targeting the latest LTS release of Ubuntu (currently 24.04 / "noble"). However, they should build on all recent Ubuntu releases. Currently, they can be successfully built on at least the following: 22.04 / "jammy", 24.04 / "noble", 25.04 / "plucky", 25.10 / "questing" -- all that is needed is to change the release codename in `debian/changelog`. The packages should also build on recent Debian releases, but this is untested.


