NPC Actions by Moirai begins here.
Use authorial modesty.

Table of NPCs
NPC	Action table
Jace	Table of Jace's Actions
Wyatt	Table of Wyatt's Actions
couple	Table of couple's actions
kids	Table of kids actions

Table of kids actions
time	doing
11:59 AM	kids waiting
with 23 blank rows

Table of couple's actions
time	doing
10:51 AM	couple examining kids
10:52 AM	couple examining equipment
10:53 AM	couple examining kids
10:54 AM	couple examining equipment
10:55 AM	couple examining kids
10:56 AM	couple examining equipment
10:57 AM	couple examining kids
10:58 AM	couple examining equipment
10:59 AM	couple examining kids
11:00 AM	couple examining equipment
with 23 blank rows

[Table of Initial Placements
NPC	Location	move_before_announce
Jace	Ticket booth	yes
Wyatt	Void	no
couple	Void	no
]

Table of Initial Placements
NPC	Location
Jace	Ticket booth
Wyatt	Void
couple	Void


To carry out NPC actions:
	[say "Carrying out NPC actions.";]
	repeat with N running from 1 to the number of rows in the Table of NPCs:
		let the NPC be the NPC in row N of the Table of NPCs;
		[say "Working on [the NPC].";]
		if the NPC is not the host:
			let the action table be the Action table in row N of the Table of NPCs;
			[say "[the NPC] [the action table].";]
			if there is a time corresponding to a time of the time of day in the action table:
				[say "Action found at for [the NPC] at [time of day].";]
				try the doing corresponding to the time of the time of day in the action table;
			[repeat with M running from 1 to the number of rows in the action table:
				let the local time be the time in row M of the action table;
				say "action found at [the local time].";]
			
[To record PC actions:
	if not spidered:
		repeat with N running from 1 to the number of rows in the Table of NPCs:
			let the NPC be the NPC in row N of the Table of NPCs;
			let the action table be the Action table in row N of the Table of NPCs;
			if the NPC encloses the player:
				If the current action is not entering the NPC:
					[Otherwise, we record what was done!]
					now the actor is the NPC;
					if there is a time corresponding to a time of the time of day in the action table:
						now the doing corresponding to the time of the time of day in the action table is the current action;
					otherwise:
						choose a blank row in the action table;
						now time entry is the time of day;
						now doing entry is the current action;
					now the actor is the player;
]

To carry out the boat wake:
	If the location is swimming:
		If the time of day is greater than 10:51 AM and the time of day is less than 10:55 AM:
			say "Waves ripple through the water.";
		if the time of day is 10:55 AM:
			say "The waves settle down again.";
	If the location is Under Bridge:
		if the time of day is 10:52 AM:
			say "The water had been still, but waves begin to wash up on the shore.";
		if the time of day is 10:53 AM:
			say "Waves wash up on the shore.";
		if the time of day is 10:54 AM:
			say "The waves washing up on shore diminish until they disappear.";
	If the location is Beach Sculpture:
		if the time of day is 10:53 AM:
			say "The water had been still, but waves begin to wash up on the shore.";
		if the time of day is 10:54 AM:
			say "Waves wash up on the shore.";
		if the time of day is 10:55 AM:
			say "The waves washing up on shore diminish until they disappear.";
	If the location is Water Sculpture:
		if the time of day is 10:54 AM:
			say "The water had been still, but waves begin to wash up on the shore.";
		if the time of day is 10:55 AM:
			say "Waves wash up on the shore.";
		if the time of day is 10:56 AM:
			say "The waves washing up on shore diminish until they disappear.";

NPC Actions ends here.