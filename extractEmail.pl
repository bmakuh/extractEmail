extractEmail();

sub extractEmail {
	$dir = "SIGCSE";
	$date = $ARGV[0];
	$topic = $ARGV[1];
	
	opendir(DIR, $dir) or die("couldn't find the directory");
		@files=readdir(DIR);
	closedir(DIR);
	
	$counter = 0;
	$num;
	foreach $file (@files) {
		if (-f "$dir/$file" and $file =~ /^SIGCSE\.$date/) {
			print "Searching for topic: $topic\n";
			open(FILE, "$dir/$file") or die "error opening file! $!\n";
			if (@results = grep /$topic/, <FILE>) {
				print "Topic found in: $file\n";
				$println = False;
				foreach $result (@results) {

					}
				}
			}
			close(FILE);
			open(FILE, "$dir/$file") or die "all ur base r belong to us lolz \n";
			$count = 0;
			$println = 0;
			while ($line = <FILE> and $println != 2) {
				if ($line =~ /\-{70}/) {
					$count++;
				}
				
				if ($count == $num) {
					$println = 1;
				}
				
				if ($println) {
					print $line;
				}
				
				if ($line =~ /^\-{30}$/) {
					$println = 2;
				}
			}
			
			close(FILE);
		}
	}
}
