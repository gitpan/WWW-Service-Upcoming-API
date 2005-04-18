# *****************************************************************************
# *                                                                           *
# * WWW::Service::Upcoming::API::Object::State                                *
# *                                                                           *
# *****************************************************************************


# Package *********************************************************************
package WWW::Service::Upcoming::API::Object::State;


# Uses ************************************************************************
use WWW::Service::Upcoming::API::Object;


# Code ************************************************************************
sub new
{
	return WWW::Service::Upcoming::API::Object::new(shift,@_);
}
sub _name { return 'state'; }
sub _list { shift;
            return qw( id name code ) if ($_[0] eq '1.0');
            return (); };
sub _info { return (
             { 'upco' => 'metro.getStateList',
               'http' => 'GET' },
            ); }
1;
__END__

=head1 NAME

WWW::Service::Upcoming::API::Object::State - State response object to the Upcoming API

=head1 AUTHOR

Copyright (C) 2005, Greg Knauss, E<lt>greg@eod.comE<gt>

=head1 SEE ALSO

L<WWW::Service::Upcoming::API>

=cut
