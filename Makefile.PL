use 5.012;
use ExtUtils::MakeMaker;

my %params = (
    NAME             => 'PeepholeTest',
    CCFLAGS          => '-Wall -Wextra',
);

WriteMakefile(%params);
