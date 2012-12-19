package DD;

use strict;
use warnings;

use Data::Dumper;

require Exporter;
our @ISA = qw(
  Exporter
  Data::Dumper
);
our @EXPORT = qw(
  D
);
push @EXPORT, @Data::Dumper::EXPORT;

our @EXPORT_OK = qw(
  pD
);
push @EXPORT_OK, @Data::Dumper::EXPORT_OK;

our $VERSION = '0.01';

=head1 NAME

DD - Alias L<Data::Dumper>

=head1 SYNOPSIS

  use DD;
  print Dumper("foo");
  print D("foo");
  
  use DD qw/pD/;
  pD("foo");

=head2 Command line

  $ perl -MDD -e 'print Dumper("foo")'
  $ perl -MDD -e 'print D("foo")'
  $ perl -MDD=pD -e 'pD("foo")'

=head1 EXPORT

=head2 alias C<Data::Dumper::Dumper()>

  use DD;
  D("foo");

is an alias for

  Data::Dumper::Dumper("foo");

=cut

sub D { return Dumper( @_ ); }

=head2 C<@Data::Dumper::EXPORT>

C<@Data::Dumper::EXPORT> is exported, hence e.g. C<Dumper()> can be used.

=head1 EXPORT_OK

=head2 alias C<print Data::Dumper::Dumper()>

  use DD qw/pD/;
  pD("foo");

is an alias for

  print Data::Dumper::Dumper("foo");

=cut

sub pD { print Dumper( @_ ); }

=head2 C<@Data::Dumper::EXPORT_OK>

C<@Data::Dumper::EXPORT_OK> is exported on request, hence e.g. C<DumperX()> can be used.

=head1 AUTHOR

east E<lt>east@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2012 by east

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;

__END__

