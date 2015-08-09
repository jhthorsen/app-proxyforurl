package App::proxyforurl;

=head1 NAME

App::proxyforurl - An online PAC file parser

=head1 VERSION

0.01

=head1 DESCRIPTION

L<App::proxyforurl> is a web application that can be used to test
C<PAC> files.

Check out C<https://ssl.thorsen.pm/proxyforurl> for online demo.

=head1 SYNOPSIS

  $ proxyforurl --listen http://*:8080;

=cut

use strict;
use warnings;

our $VERSION = '0.01';

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2014, Jan Henning Thorsen

This program is free software, you can redistribute it and/or modify it under
the terms of the Artistic License version 2.0.

=head1 AUTHOR

Jan Henning Thorsen - C<jhthorsen@cpan.org>

=cut

1;
