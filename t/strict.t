#!perl -T

use strict;
use warnings;

use Test::More;

unless ( $ENV{TEST_AUTHOR} ) {
    plan skip_all =>
      'Set $ENV{TEST_AUTHOR} to a true value to run strict tests.';
}

eval "use Test::Strict";
if ($@) {
    plan skip_all => 'Test::Strict required for testing syntax';
}

all_perl_files_ok();
