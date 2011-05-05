extractEmail();

sub extractEmail {
	$dir = "SIGCSE";
	$date = $ARGV[0];
	$topic = $ARGV[1];
	
	opendir(DIR, $dir) or die("couldn't find the directory");
		@files=readdir(DIR);
	closedir(DIR);
	
	$counter = 0;
	foreach $file (@files) {
		if (-f "$dir/$file" and $file =~ /^SIGCSE\.$date/) {
			print "Searching for topic: $topic in $date\n";
			open(FILE, "$dir/$file") or die "error opening file! $!\n";
			if (@results = grep /$topic/, <FILE>) {
				print "Topic found in: $file\n";
				$println = False;
				foreach $result (@results) {
					print $result;
					if ($result =~ /^Subject:/) {
						$println = True;
					}
					if ($println) {
						
					}
				}
			}
			close(FILE);
		}
	}
}
