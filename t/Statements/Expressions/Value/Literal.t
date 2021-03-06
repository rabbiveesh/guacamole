use strict;
use warnings;
use Guacamole::Test;
use Test::More;

# LitNumber
parses('4');
parses('44');
parses('-4');
parses('44.4');
parses('-44.4');

# LitArray
parses('[]');
parses('[ 1, 2 ]');
parses('[ 1, 2, ( 10, () ) ]');

# LitHash
parses('{}');
parses('sub { {} }');
parses('sort {}, 1');
parses('$x = {}');
parses('$x = { "foo" => "bar" }');
parses('return { 1, 2, 3, 4 }');
parsent('{ 1, 2, 3, 4 }');

# LitString (SingleQuote)
parses(q{''});
parses(q{ 'hello' });
parses(q{ 'hello world \' foo " ' });

# InterpolString (DoubleQuote)
parses(q{""});
parses(q{ "hello" });
parses(q{ "hello world \" foo ' " });

done_testing();
