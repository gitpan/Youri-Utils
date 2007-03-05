#!/usr/bin/perl
# $Id: /mirror/youri/soft/Utils/trunk/t/perlcritic.t 2232 2007-03-05T21:43:58.415681Z guillomovitch  $

use strict;
use warnings;
use Test::More;

if (!$ENV{TEST_AUTHOR}) {
    plan(
        skip_all => 'Author test. Set $ENV{TEST_AUTHOR} to a true value to run.'
    );
}

eval {
    require Test::Perl::Critic;
};

if ($@) {
    plan(
        skip_all => 'Test::Perl::Critic not installed, skipping'
    );
}

Test::Perl::Critic->import();
all_critic_ok();
