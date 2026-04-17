#!/usr/bin/env perl
use strict;
use warnings;
use 5.028;
use ExtUtils::MakeMaker::CPANfile;

WriteMakefile(
    NAME       => 'App::vcardtidy',
    ABSTRACT   => 'tidy up VCARD files',
    AUTHOR     => 'Mark Lawrence <mark@rekudos.net>',
    VERSION    => 'v0.0.0',
    LICENSE    => 'gpl_3',
    EXE_FILES  => ['bin/vcardtidy'],
    test       => { RECURSIVE_TEST_FILES => 1, },
    META_MERGE => {
        'meta-spec' => { version => 2 },

        #        no_index    => {
        #            package => [
        #                qw(
        #                  )
        #            ],
        #        },
        resources => {
            bugtracker =>
              { web => 'https//github.com/mlawren/vcardtidy/issues', },
            homepage   => 'https//github.com/mlawren/vcardtidy',
            repository => {
                type => 'git',
                url  => 'ssh://git@github.com/mlawren/vcardtidy.git',
                web  => 'https//github.com/mlawren/vcardtidy',
            }
        },
        release_status => 'testing',
    },
);

use autodie;
system('t/build-bin-scripts');
