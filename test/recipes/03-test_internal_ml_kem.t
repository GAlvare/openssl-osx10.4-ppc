#! /usr/bin/env perl
# Copyright 2024-2025 The OpenSSL Project Authors. All Rights Reserved.
#
# Licensed under the Apache License 2.0 (the "License").  You may not use
# this file except in compliance with the License.  You can obtain a copy
# in the file LICENSE in the source distribution or at
# https://www.openssl.org/source/license.html

use OpenSSL::Test;
use OpenSSL::Test::Utils;
use OpenSSL::Test qw/:DEFAULT srctop_file/;

setup("ml_kem_internal_test");
plan skip_all => 'EC is not supported in this build'
    if disabled('ml-kem');
plan tests => 1;

ok(run(test(["ml_kem_internal_test"])));
