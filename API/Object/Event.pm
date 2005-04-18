# *****************************************************************************
# *                                                                           *
# * WWW::Service::Upcoming::API::Object::Event                                *
# *                                                                           *
# *****************************************************************************


# Package *********************************************************************
package WWW::Service::Upcoming::API::Object::Event;


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
sub _name { return 'event'; }
sub _list { shift;
            return qw( id name description start_date end_date start_time
                       end_time personal selfpromotion metro_id venue_id
                       user_id category_id date_posted ) if ($_[0] eq '1.0');
            return (); }
sub _info { return (
             { 'upco' => 'event.getInfo',
               'http' => 'GET' },
             { 'upco' => 'event.add',
               'http' => 'POST' },
             { 'upco' => 'event.search',
               'http' => 'GET' }
             ); }
1;
__END__

=head1 NAME

WWW::Service::Upcoming::API::Object::Event - Event response object to the Upcoming API

=head1 AUTHOR

Copyright (C) 2005, Greg Knauss, E<lt>greg@eod.comE<gt>

=head1 SEE ALSO

L<WWW::Service::Upcoming::API>

=cut
