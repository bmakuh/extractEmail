print "hi there\nnewline\n";
print "look","ma","no","hands\n";
$count = 5;
$stmt = "the count is: $count\n";
print $stmt;

@months = ("july", "august", "september");
print $months[0], "\n";

$months[0] = "march";
print $months[0], "\n";

print "num months: $#months\n";

print "@months\n";

@stuff = ("yes","no",5,3.2);

print "@stuff\n";
print $stuff[-2],"\n";

%month_days = ("July"=>31, "august"=>30, "September"=>31);
@month_list = keys %month_days;
print "\n$month_list[2]\n";

while(($key, $value) = each %month_days) {
	print $key.", ".$value."\n";
}

print $month_days{"July"};

$balance = 0;
unless ($balance > 0) {
	print "\nI'm broke!\n";
}

$a = 10;
if ($a == 5) {
	print "five\n";
}
elsif ($a == 6) {
	print "six\n";
}
else {
	print "other\n";
}

$a = 0;
while ($a != 3) {
	$a++;
	print "counting up to $a...\n";
}

until ($a == 0) {
	$a--;
	print "counting down to $a...\n";
}

$a = "welcome to perl!";
print substr($a, 0, 7),"\n";
print substr($a, 7),"\n";

substr($a, -4, 4) = "Javatastic!";
print $a;

# open (LOGFILE, "log.txt") or die "couldn't open log.txt";

# $line = <LOGFILE>;
# print $line;
# for $line (<LOGFILE>) {
	# print $line;
# }
boo();
print multiply(2, 3, 4), "\n";
print multiply2(5, 6),"\n";
my ($one, $two) = getTwo();
print $one." ",$two."\n";
print $val1;

sub boo {
	print "Boo!\n";
}

sub multiply {
	my (@ops) = @_;
	return $ops[0] * $ops[1];
}

sub multiply2 {
	my ($val1, $val2) = @_;
	return $val1 * $val2;
}

sub getTwo() {
	return 1, 2;
}