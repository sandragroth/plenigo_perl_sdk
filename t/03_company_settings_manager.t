use strict;
use warnings;
use 5.10.0;
use FindBin 1.51 qw( $RealBin );
use lib $RealBin;

use Test::More skip_all => 'integration tests must be filled with valid company data to run correctly';
use plenigo::Configuration;
use plenigo::CompanySettings;

my $company_id = '';
my $secret = '';

my $configuration = plenigo::Configuration->new(company_id => $company_id, secret => $secret, staging => 0);

my $company_settings = plenigo::CompanySettingsManager->new(configuration => $configuration);

is($company_settings->isPaymentEnabled, 1, 'Check if payment is enabled for company.');
=cut
