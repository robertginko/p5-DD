use 5.008;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'DD',
    VERSION_FROM      => 'lib/DD.pm', # finds $VERSION
    PREREQ_PM         => { 'Data::Dumper' => '2.139' },
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/DD.pm', # retrieve abstract from module
       AUTHOR         => 'east') : ()),
);
