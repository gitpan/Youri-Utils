# $Id: /mirror/youri/soft/Utils/trunk/Makefile.PL 2252 2007-03-07T21:02:21.892421Z guillomovitch  $
use ExtUtils::MakeMaker;
use version;

WriteMakefile(
    NAME         => 'Youri::Utils',
    VERSION_FROM => 'lib/Youri/Utils.pm',
    AUTHOR       => 'Youri project <youri@zarb.org>',
    PREREQ_PM    => {
        'UNIVERSAL::require' => 0,
    }
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