# *****************************************************************************
# *                                                                           *
# * WWW::Service::Upcoming::API::Object::Venue                                *
# *                                                                           *
# *****************************************************************************


# Package *********************************************************************
package WWW::Service::Upcoming::API::Object::Venue;


# Uses ************************************************************************
use strict;
use WWW::Service::Upcoming::API::Object;


# Exports *********************************************************************
our @ISA = 'WWW::Service::Upcoming::API::Object';
our $VERSION = '0.01';


# Code ************************************************************************
sub new
{
	return WWW::Service::Upcoming::API::Object::new(shift,@_);
}
sub _name { return 'venue'; }
sub _list { shift;
            return qw( id name address city zip phone url
                       description ) if ($_[0] eq '1.0');
            return (); };
sub _info { return (
             { 'upco' => 'venue.add',
               'http' => 'POST' },
             { 'upco' => 'venue.getInfo',
               'http' => 'GET' },
             { 'upco' => 'venue.getList',
               'http' => 'GET' },
             { 'upco' => 'venue.search',
               'http' => 'GET' }
             ); }
1;
__END__

=head1 NAME

WWW::Service::Upcoming::API::Object::Venue - Venue response object to the Upcoming API

=head1 AUTHOR

Copyright (C) 2005, Greg Knauss, E<lt>greg@eod.comE<gt>

=head1 SEE ALSO

L<WWW::Service::Upcoming::API>

=cut
