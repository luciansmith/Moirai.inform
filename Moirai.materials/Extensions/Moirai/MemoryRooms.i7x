Memory Rooms by Moirai begins here.
Use authorial modesty.

A memConnection is a kind of thing.  A memConnection can be noticed or unnoticed.  A memConnection is usually unnoticed.  A memConnection has a room called a destination.  A room can be kidless or wyattful.  A room is usually kidless.  [A memConnection can be male.]  A memConnection has a time called the dest_time.  The dest_time of a memConnection is usually 7:32 PM.

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

Section Skiing Room

Skiing is a liminal room.  "You're in your own memory of one of the earlier times you went skiing with your family.  There's light [snow] in the cold, [crisp air].  In the distance is [a ski lift].[pb]In your memory, you've just turned your skis straight down the hill to catch up with your brother in the distance.  The reason you remember this moment more vividly is because you're about to [crash].[pb][list memexits from Skiing][no line break]".  Skiing is wyattful.


Memory Rooms ends here.