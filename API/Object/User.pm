# *****************************************************************************
# *                                                                           *
# * WWW::Service::Upcoming::API::Object::User                                 *
# *                                                                           *
# *****************************************************************************


# Package *********************************************************************
package WWW::Service::Upcoming::API::Object::User;


# Uses ************************************************************************
use strict;
use WWW::Service::Upcoming::API::Object;


# Exports *********************************************************************
our @ISA = 'WWW::Service::Upcoming::API::Object';
our $VERSION = '0.01';


# Code ************************************************************************
sub new
{
	return WWW::Service::Upcoming::API::Object::new(@_);
}
sub _name { return 'watchlist'; }
sub _list { shift;
            return qw( id,name,username,zip,photourl,url )
             if ($_[0] eq '1.0');
            return (); }
sub _info { return (
             { 'upco' => 'user.getInfo',
               'http' => 'GET' }
             ); }
1;
__END__

=head1 NAME

WWW::Service::Upcoming::API::Object::User - User response object to the Upcoming API

=head1 AUTHOR

Copyright (C) 2005, Greg Knauss, E<lt>greg@eod.comE<gt>

=head1 SEE ALSO

L<WWW::Service::Upcoming::API>

=cut
