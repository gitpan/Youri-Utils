# $Id: /mirror/youri/soft/Utils/trunk/Makefile.PL 2232 2007-03-05T21:43:58.415681Z guillomovitch  $
use ExtUtils::MakeMaker;
use version;

WriteMakefile(
    NAME         => 'Youri::Utils',
    VERSION_FROM => 'lib/Youri/Utils.pm',
    AUTHOR       => 'Youri project <youri@zarb.org>',
);

sub MY::postamble {
   return <<'EOF';
.PHONY: svntag
SVNPATH = svn+ssh://youri.zarb.org/home/projects/youri/svn/soft/Utils

svntag:
	svn copy -m 'new release $(VERSION)'\
		$(SVNPATH)/trunk \
		$(SVNPATH)/tags/release-$(VERSION)

EOF
}
