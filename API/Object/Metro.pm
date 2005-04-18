# *****************************************************************************
# *                                                                           *
# * WWW::Service::Upcoming::API::Object::Metro -- Greg Knauss (greg@eod.com)     *
# *                                                                           *
# *****************************************************************************


# Package *********************************************************************
package WWW::Service::Upcoming::API::Object::Metro;


# Uses ************************************************************************
use WWW::Service::Upcoming::API::Object;


# Code ************************************************************************
sub new
{
	return WWW::Service::Upcoming::API::Object::new(shift,@_);
}
sub _name { return 'metro'; }
sub _list { shift;
            return qw( id name code ) if ($_[0] eq '1.0');
            return () };
sub _info { return (
             { 'upco' => 'metro.getInfo',
               'http' => 'GET' },
             { 'upco' => 'metro.search',
               'http' => 'GET' },
             { 'upco' => 'metro.getList',
               'http' => 'GET' },
             { 'upco' => 'user.getMetroList',
               'http' => 'GET' }
            ); }
1;
__END__

=head1 NAME

WWW::Service::Upcoming::API::Object::Metro - Metro response object to the Upcoming API

=head1 AUTHOR

Copyright (C) 2005, Greg Knauss, E<lt>greg@eod.comE<gt>

=head1 SEE ALSO

L<WWW::Service::Upcoming::API>

=cut
