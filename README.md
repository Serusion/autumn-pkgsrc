# autumn-pkgsrc

pkgsrc packages for [AutumnBSD](https://github.com/Serusion/AutumnBSD) that are not in pkgsrc itself. The repository is a single pkgsrc category, `autumn`, in the same way as pkgsrc-wip.

## Packages

- [akture](akture): Akture, the display manager of AutumnBSD, developed in [Serusion/Akture](https://github.com/Serusion/Akture)
- [autumn-fonts](autumn-fonts): Outfit and Zen Kaku Gothic New, the fonts of AutumnBSD, from Google Fonts
- [libautuni](libautuni): the drawing library shared by the programs of the AutumnBSD desktop, developed in [Serusion/libautuni](https://github.com/Serusion/libautuni)

## Installing with pkgin

AutumnBSD installs these packages with pkgin, from a binary repository used next to the NetBSD one. No binary packages are published yet. Once they are, the repository goes into `/usr/pkg/etc/pkgin/repositories.conf`:

```
https://github.com/Serusion/autumn-pkgsrc/releases/download/<release>
```

and the packages are installed as usual:

```sh
pkgin update
pkgin install akture
```

## Building from source

Clone the repository as the `autumn` category of a pkgsrc tree and build a package there:

```sh
cd /usr/pkgsrc
git clone https://github.com/Serusion/autumn-pkgsrc.git autumn
cd autumn/akture
make install
```

`git pull` in `/usr/pkgsrc/autumn` brings the packages up to date.

## Making the binary repository

On AutumnBSD, build the packages and write their summary next to them:

```sh
cd /usr/pkgsrc/autumn/autumn-fonts && make package
cd /usr/pkgsrc/autumn/akture && make package
cd /usr/pkgsrc/packages/All
pkg_info -X autumn-fonts-*.tgz akture-*.tgz | gzip -9 > pkg_summary.gz
```

Then publish the package files and `pkg_summary.gz` together, as the assets of a release of this repository.

## License

The files of this repository are under the BSD-2-Clause license; see [LICENSE](LICENSE). The software they package has its own license, given in each package.
