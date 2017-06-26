require 'mkmf'

have_header('ruby/digest.h')
have_func('rb_str_set_len')

$CFLAGS << " -fvisibility=hidden" << " -Wno-error"
$CFLAGS.gsub!("-Werror=format-security","")

$CXXFLAGS << " -Wno-error"
$CXXFLAGS.gsub!("-Werror=format-security","")

create_makefile('digest/sha3')
