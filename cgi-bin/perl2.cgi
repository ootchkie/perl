#!/usr/pkg/bin/perl
use strict;
use warnings;
use CGI;

my $q = new CGI;
my $now = localtime;

print $q->header;
print $q->start_html;
print $q->title('server time');
print $q->h1("Hello World!"),
print $q->p("The time on this server now is $now");
print $q->end_html;
