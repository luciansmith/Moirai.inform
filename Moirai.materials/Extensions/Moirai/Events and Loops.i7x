Events and Loops by Moirai begins here.
Use authorial modesty.

sinkhole_size is a number that varies.  sinkhole_size is 0.

To carry out sinkhole appearing:
	now sinkhole_size is 1;
	now top of hill is chasmy;
	move disaster_victims to Top of Hill;
	move falling_coyote to Sinkhole;
	move park-goers backdrop to all parky rooms;
	if the couple is in the void and the disaster memory is in the player:
		move the couple to the playground;
	if the location of the player is Top of Hill:
		if spidered:
			say "With a roar, the entire top of the hill collapses in on itself, and your perception shatters as spiders are shaken off webs and perches, spinning out emergency strands to catch the wind and slow their falls.  Straining, you manage to reassert your hold on time, freezing everything in place again.  Gradually, you stitch together a new coherent view of your surroundings.";
			try looking;
		otherwise:
			say "LS TBD figure out what to do when the host ends up falling?  Or have them refuse?";
			try looking;
	otherwise if the location of the player is entrance or the location of the player is the parking lot:
		say "You hear a roar from inside the park.";
	otherwise if the location is Under Bridge:
		say "You hear a roar and the sound of twisting metal from the park to the southeast.";
	otherwise if the location is Playground:
		say "With a sudden roar, the entire east half of the hill collapses in on itself, taking the metal structure of Coyote's Call with it; its giant metal tubes and bars twisting apart from each other with terrifying screeches.  Trees, dirt, and grass fall into the gaping pit as the edges expand towards your side of the hill.";
		try looking;
	otherwise:
		say "With a roar and a grinding sound of twisting metal, Coyote's Call suddenly collapses and disappears from view."

To carry out stuff falls:
	move disaster_victims to Sinkhole;
	move coyote's call to Void;
	if spidered and the location is Top of Hill:
		say "With a final groan, the last spear of Coyote's Call is carried with the dirt it was anchored in an cartwheels into the abyss[if not evacuated].  One final person, struggling against the avalances of dirt, is suddenly swept downward into the sinkhole[end if].";
	if spidered and the location is Sinkhole:
		try looking;
	

To carry out sinkhole expanding:
	now sinkhole_size is 2;
	move disaster_victims to Void;
	move falling_coyote to Void;
	move foliage to void;
	say "LS TBD:  the sinkhole expands.";
	
To carry out loop resetting:
	now sinkhole_size is 0;
	now the time of day is 10:51 AM;
	now the emotion of Jace is "friendly but bored";
	now Jace is not announced;
	deactivate J7_evacuated;
	activate J7_earlier;
	repeat with N running from 1 to the number of rows in the Table of NPCs:
		let the NPC be the NPC in row N of the Table of NPCs;
		move the NPC to the Void;
	move Jace to the ticket booth;
	move kids to Playground;
	if Wyatt is revealed:
		now Wyatt is found;
	move the Hyundai to the Void;
	move coyote's call to Top Of Hill;
	move foliage to Top Of Hill;
	if the spiders are in the Hyundai:
		move the spiders to the Parking Lot;
	say "You feel the web of time time tighten beneath you, and with a rush, you slip backwards along it.  Images blur past you before the web finally goes slack again, and you regain your hold.";
	repeat with talker running through people:
		deactivate the intro-page of the talker;
	activate the intro-page of the host;
	if the host is the spiders:
		try looking;
	otherwise:
		if not in cyoa mode:
			switch to cyoa at reset-conversation-or-not;
		otherwise:
			turn to reset-conversation-or-not, without looking;

reset-conversation-or-not is a page.  "You've gone to the beginning of the loop while in [host]'s mind.  You can start a new conversation with them like the first time you entered their mind, or we can skip that part and say you have the same conversation with them this time that you had last time.";

[reset-conversation-repeat is an end-page page.  "You go through the same conversation you had with them last time."  The cdesc is "Repeat the conversation you had with [the host] the last time."  It is for reset-conversation-or-not.
]

reset-conversation-new is a page.  The cdesc is "Repeat the conversation you had with [the host] the last time."  It is for reset-conversation-or-not.

A page-toggle rule for reset-conversation-new:
	say "You go through the same conversation with [the host] that you had last time (though it's the first time for them).";
	if the resume-page of the host is the blank page:
		continue the action;
	otherwise:
		Turn to the resume-page of the host, without looking.

To carry out seeing the disaster:
	if the disaster memory is in the void:
		move disaster memory to player;
		say "This certainly seems to qualify as a disaster.  You take in your surroundings, determined to remember this moment.";

Every turn:
	carry out NPC actions;
	[record PC actions;]
	if not spidered:
		repeat with N running from 1 to the number of rows in the Table of NPCs:
			let the NPC be the NPC in row N of the Table of NPCs;
			let the action table be the Action table in row N of the Table of NPCs;
			if the NPC encloses the player:
				If the current action is not entering the NPC:
					[Otherwise, we record what was done!]
					[say "Recording [the current action] at [the time of day].";]
					now the actor is the NPC;
					if there is a time corresponding to a time of the time of day in the action table:
						now the doing corresponding to the time of the time of day in the action table is the current action;
					otherwise:
						choose a blank row in the action table;
						now time entry is the time of day;
						now doing entry is the current action;
					now the actor is the player;
	If the time of day is 10:54 AM:
		say "A cloud passes over the sun.";
	If the time of day is 10:56 AM:
		if the location of the player is Top of Hill, say "You feel an ominous rumbling from deep under the earth.";
		otherwise say "You feel a slight tremor in the earth from somewhere nearby.";
	If the time of day is 10:57 AM:
		carry out sinkhole appearing;
	If the time of day is 10:58 AM:
		carry out stuff falls;
	If the time of day is 10:59 AM:
		say "The sun emerges again from behind the cloud.";
	if the time of day is 11:00 AM:
		carry out sinkhole expanding;
	if the time of day is 11:06 AM:
		carry out loop resetting;
	if the location of the player is a chasmy room:
		carry out seeing the disaster;
	otherwise if the location of the player is the playground and the time of day is greater than 10:56 AM:
		carry out seeing the disaster
		
After going to a chasmy room:
	carry out seeing the disaster;
	continue the action;

After going to the playground:
	if sinkhole_size is greater than 0:
		carry out seeing the disaster;
	continue the action;

After going to somewhere when the host is not the spiders:
	if the location is not swimming:
		move the spiders to the location;
		continue the action;

After resetting when the host is not the spiders:
	move the spiders to the location;
	continue the action;

A person can be actually waiting or not actually waiting.  A person is usually actually waiting;

Instead of waiting when the time of day is 11:06 AM and the disaster memory is in the Void:
	say "You sense the web of time beginning to to tighten, and decide to keep hold of it, instead.  You still haven't figured out what actually happened here.";
	now the player is not actually waiting;
		
After going somewhere in a parky room for the first time:
	try looking;
	if the time of day is 10:55 AM:
		say "Whatever Amaia is worried about is apparently happening in this park.  You'll need to [b]wait[r] to advance the loop and see what's going on.";
	
After going to a parky room:
	if the time of day is 10:55 AM and every parky room is visited:
		try looking;
		say "That's all the areas of the park.  Something's going to happen in one of them, so you'll need to [b]wait[r] to advance the loop and see what's going on.";
	otherwise:
		continue the action;

Events and Loops ends here.