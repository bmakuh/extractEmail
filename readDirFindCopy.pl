readDirFindCopy();

# @names = ("Bob", "James", "Suzie", 3);
# @grepresults = grep(/^S/, @names);
# print "@grepresults\n";

sub readDirFindCopy {
	$dir = "SIGCSE";
	$search = $ARGV[0];
	opendir(DIR, $dir) or die("couldn't find the directory");
	
	@files=readdir(DIR);
	closedir(DIR);
	
	foreach $file (@files) {
		if (-f "$dir/$file") {
			open(FILE, "$dir/$file") or die "error opening file! $!\n";
			if (@results = grep /$search/, <FILE>) {
				print "Topic found in: $file\n";
				foreach $result (@results) {
					if ($result =~ /^[ \t]/) {
						print $result;
					}
				}
			}
			close(FILE);
		}
	}
}
