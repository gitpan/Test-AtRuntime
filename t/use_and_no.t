#!/usr/bin/perl -w

use Test::AtRuntime;
use Test::More;

sub foo {
    # This test runs.
    TEST: { pass('foo ran'); }
}

no Test::AtRuntime;

sub bar {
    # This test is not run.
    TEST: { fail('bar ran') }
}


foo();
bar();