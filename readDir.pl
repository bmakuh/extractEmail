readDir();

sub readDir {
	$dir = "SIGCSE";
	opendir(DIR, $dir) or die("couldn't find the directory");
	
	@files=readdir(DIR);
	closedir(DIR);
	
	foreach $file (@files) {
		if (-f "$dir/$file") {
			print "searching for topics in $file:\n";
			open(FILE, "$dir/$file") or die "error opening file! $!\n";
			$flag = 0;
			while (<FILE>) {
				if ($_ =~ /Topics of the day:/) {
					$flag = 1;
				} 
				if ($_ =~ /\-{70}/) {
					$flag = 0;
				}
				if ($flag == 1 and !($_ =~ /Topics of the day:/)) {
					print $_;
				}
			}
			close(FILE);
		}
	}
}
