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
			if (@results = grep /$search/, <FILE>) {
				print "Topic found in: $file\n";
				foreach $result (@results) {
					if ($result =~ /^Subject:/) {
						print $result;
					}
				}
			}
			close(FILE);
		}
	}
}
