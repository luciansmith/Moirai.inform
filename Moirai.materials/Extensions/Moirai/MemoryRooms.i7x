Memory Rooms by Moirai begins here.
Use authorial modesty.

Section MemConnections

A memConnection is a kind of thing.  A memConnection can be noticed or unnoticed.  A memConnection is usually unnoticed.  A memConnection has a room called a destination.  A memConnection has a time called the dest_time.  The dest_time of a memConnection is usually 7:32 PM.

A room can be kidless or wyattful.  A room is usually kidless.

A memConnectPerson is a kind of memConnection.  
A memConnectPerson can be female or male. A memConnectPerson is usually female.
A memConnectPerson can be neuter. A memConnectPerson is usually not neuter.

To say list memexits from (palace - a room):
	let at_least_one be a random noticed memConnection in the palace;
	if at_least_one is nothing:
		say "You're pretty sure there should be connections from here to other memories, but you haven't found them yet";
	otherwise:
		say "From here, you can touch [the list of noticed memConnections in the palace] to connect to other memories";
		let at_least_one be a random unnoticed memConnection in the palace;
		if at_least_one is not nothing:
			say ", though you sense there may be more connections you haven't found yet";
	if Hiding_and_seeking is happening:
		if faint_wyatt is in the palace:
			say ".[lb]You catch a faint echo of [maybe Wyatt]'s presence here.[no line break]";
		otherwise:
			say ".[lb]You don't sense Wyatt's echo here; wherever he's hiding, he must have gone a different way.[no line break]";

to say reveal (connect - a memConnection):
	if the destination of the connect is visited:
		say ".[lb]You can touch [the connect] to go to [the destination of the connect]";
	otherwise:
		say ".[lb]You think you could touch [the connect] to go to a new memory";
	now the connect is noticed;

Instead of touching or entering a memConnection (called the connection):
	say "You connect with [the connection] and shift your perception to another memory.";
	now the connection is noticed;
	move the player to the destination of the connection;
	now the time of day is the dest_time of the connection;

Section MemTouch

A memTouch is a kind of thing.  A memTouch can be touched or untouched.  A memTouch is usually untouched.

Instead of doing something to a memTouch:
	if examining or touching:
		continue the action;
	say "[The noun] [are] part of this memory, so you can't really interact with [them], other than to [i]examine[r] or [i]touch[r] [them]."

Memory Rooms ends here.