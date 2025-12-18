Rules and New Actions by Moirai begins here.
Use authorial modesty.

Book 0 Rules

To say i:
	say "[italic type]";
	
To say b:
	say "[bold type]";
	
To say r:
	say "[roman type]";

To say lb:
	say "[line break]";

To say pb:
	say "[line break][line break]";
	
To say nb:
	say "[run paragraph on]";

To say bstars:
	say "[lb]";
	center "*    *    *[pb]";

To say stars:
	center "*    *    *[pb]";

Examining something is acting fast. 
Looking is acting fast.
Taking inventory is acting fast.
Entering is acting fast.
Touching is acting fast.
Exiting is acting fast.
Choosing is acting fast.

The take quick actions out of world rule is listed before the every turn stage rule in the turn sequence rules.

A person can be actually waiting or not actually waiting.  A person is usually actually waiting;

Instead of waiting when the time of day is 11:06 AM and the disaster memory is in the Void:
	say "You sense the web of time beginning to to tighten, and decide to keep hold of it, instead.  You still haven't figured out what actually happened here.";
	now the player is not actually waiting;
		
This is the take quick actions out of world rule:
	[say "the player is [the player].";]
	if the player is transforming:
		now the player is not transforming;
		decide yes;
	if the player is not actually waiting:
		now the player is actually waiting;
		decide yes;
	if waiting, decide no;
	if the player is enclosed by spiders, decide yes;
	if the player is Zora and Zora is frozen, decide yes;
	if acting fast, decide yes;
	

The standard report waiting rule response (A) is "[describe waiting]"

To say describe waiting:
	If the time of day is 10:58 AM and spidered and the location of the player is Top Of Hill:
		say "Anchoring your consciousness in the few spiders that aren't falling into the pit or drifting away on the wind, you release your hold on time once more.  You still aren't prepared for the immediate cacophany of wrenching metal [if not evacuated]and screaming people [end if]plunging into the depths of the abyss beneath you.[no line break]";
	Otherwise if the time of day is 10:58 AM and spidered and the location of the player is Sinkhole:
		say "You anchor your consciousness in spiders on the walls of the cavern, and release your hold on time once more.  It's almost not enough:  the mass of dirt and detritus that pours down from above scrapes more than a few spiders from the walls, and it takes all your mental agility to maintain coherence as you flit between the slightly more anchored spider minds, before pulling time to a stop once again.[no line break]";
	Otherwise if the time of day is 10:59 AM and spidered and the location of the player is Sinkhole:
		say "As you release your hold on time, the last of the top of the hill falls past you into the deep.[no line break]";
	otherwise if spidered or the player is Zora:
		say "Gently, you release your hold on time, letting it scroll forward.[no line break]";
	otherwise:
		say "Time passes.";


A person can be enterable.  A person is usually enterable.
A person can be frozen.  A person is usually frozen.
Understand "enter [a person]" as entering.

A thing can be distant.  A thing is usually not distant.

Instead of doing anything when the noun is distant:
	if examining:
		continue the action;
	say "[The noun] is too far away."

[The can't travel in what's not a vehicle rule is not listed in any rulebook.]

Rule for setting action variables for going (this is the allow rideables to be
	going vehicles rule):
	if the actor is carried by a person (called the host),
		now the vehicle gone by is the host;

The host is a person that varies.

Instead of entering a person:
	If the player is enclosed by a person (called prev_host):
		if the prev_host is the noun:
			say "Your conciousness is already inhabiting [the noun].";
			The rule fails;
		Otherwise if the noun is the player:
			say "You're already in yourself, for what that's worth.";
			The rule fails;
		Otherwise:
			say "Gathering your thoughts together, you leave [the host] and transfer your consciousness into [the noun].";
			move the player to the noun;
			now the host is the noun;
			if the host is not the spiders:
				if the intro-page of the noun is the default page:
					say "[The noun] has nothing to say. BUG -LS";
				otherwise:
					switch to cyoa at the intro-page of the noun;
	Otherwise if the noun is the player:
		say "You're already in yourself, for what that's worth.";
		The rule fails;
	Otherwise:
		continue the action;

Section General Enter-Conversations

default page is a page. "Nobody should ever see this text."

blank page is a page. "Nobody should ever see this text either, but we've ensured that you can't enter them."

blocked page is a page.  "Nobody should see this, either, but it's used for people whose minds cannot ever be entered, and has to be set directly."

when play begins:
	Now the CYOA error message is "[bracket]You can't do that in the middle of a mental connection.[close bracket]";

Every person has a page called an intro-page.  The intro-page of a person is usually the default page.

Every person has a text called mind-touch.  The mind-touch of a person is usually "Hello."

Every person has a page called a resume-page.  The resume-page of a person is usually the default page.

Every page can be visited.  A page is usually not visited.


When play begins:
	repeat with p running through people:
		if the intro-page of p is default page:
			say "BUG: [p] has no intro-page.";
		if the mind-touch of p is "Hello.":
			say "BUG: [p] has no mind-touch.";
	

Report touching someone:
	say "[the mind-touch of the noun][line break]";
	rule succeeds;



Section New Actions

Commenting is an action out of world applying to one topic.

Report commenting:
	say "Noted.";
	stop the action.

Understand "# [text]" as commenting.  Understand "/ [text]" as commenting.  Understand "'[text]" as commenting.

Resetting is an action applying to nothing.  Understand "reset", "reset loop" as resetting.

Carry out resetting:
	carry out loop resetting;

Instead of resetting when the disaster memory is in the Void:
	say "You haven't figured out what happened yet.  Do that first, then you can reset to the beginning of the loop.";

The immediately undo rule response (B) is "Having just entered this strand, you can't now back up anywhere.".
The immediately undo rule response (C) is "You attemp to step backwards on the strands like you've done before, but find yourself unable to do so this time.  [i][bracket]Your interpreter does not provide 'undo'. Sorry![close bracket][r]".
The immediately undo rule response (D) is "You attempt to step backwards on the strands, but find yourself unable to do so.".
The immediately undo rule response (E) is "You step backwards on the strands.".
The immediately undo rule response (F) is "You've gone as far backwards on this strand as you can manage.".

doing somersaults is an action applying to nothing.

Report doing somersaults:
	say "Now's not a great time for that.";
	stop the action.

Understand "somersault"  as doing somersaults.
Understand "somersalt"  as doing somersaults.
Understand "summersault" as doing somersaults.
Understand "summersalt" as doing somersaults.
Understand "sommersault" as doing somersaults.
Understand "somersalt" as doing somersaults.
Understand "summerset" as doing somersaults.


Book Actions

Instead of entering an open enterable thing (called the box) when spidered:
	if the box encloses the player:
		say "You're already in [the box].";
		rule fails;
	say "You transfer your consciousness into the spiders inside [the box].";
	move the spiders to the box;
	try looking instead.
	
Instead of exiting when the player is enclosed by a person (called host):
	if the host is enclosed by an open enterable thing (called the box):
		if spidered:
			say "You transfer your consciousness into the spiders outside [the box].";
			move the spiders to the location;
			try looking instead;
		otherwise:
			try the host exiting;
	otherwise:
		if spidered:
			say "You can't exit one consciousness without going into another one." instead;
		otherwise:
			try entering spiders;


	
Instead of touching someone (called the touchee) when the touchee encloses the player:
	say "You're already completely linked to [the touchee]."
	
Instead of going outside when the player is enclosed by an open enterable thing:
	try exiting instead.
	
Instead of going inside:
	try entering spiders instead.

Instead of doing anything other than acting fast or entering or waiting or touching or physical Lestaring or physical Amaiaing or going or examining or looking or taking inventory or resetting or choosing when spidered:
	say "While your consciousness is held in the spiders, you can [b]enter[r] or [b]touch[r] other minds, [b]wait[r] for something to happen, travel to spiders in other locations, and focus on your surroundings, but can't interact physically with things."
	
understand "focus on [something]" as examining.

Instead of searching something, try examining the noun.

Section announcements

An announcement is a kind of thing.  An announcement has a text called words.

announcing is an action applying to one thing.

Report an actor announcing (this is the report announcing rule):
	if the location of the player is chasmy:
		say "From somewhere in the non-destroyed park, you hear an announcement being made.";
	otherwise:
		if the location of the player is the location of the actor:
			say "[The actor] pulls a hand-held microphone off the wall of the ticket booth.[line break][line break]";
		say "With a squawk, hidden speakers come to life, and you hear [an actor] say, '[the words of the noun]'[line break]"

The specification of the announcing action is
"The first action I defined for an NPC, so that Jace can announce stuff to the park."

A player's action awareness rule for someone announcing:
	rule succeeds;

A accessibility rule for someone announcing: rule succeeds.


Section evacuating

evacuating is an action applying to nothing.

Report an actor evacuating (this is the report evacuating rule):
	if the location of the player is the location of the actor:
		say "Confused but concerned parents arrive and collect their kids, and start heading to the parking lot. ";

The specification of the evacuating action is
"For people in the park responding to Jace's announcement."

To decide whether evacuated:
	if Jace is announced:
		decide yes;
	decide no;


Before going somewhere when spidered:
	if going east from the parking lot:
		say "You spot a spider on the east wall, and through it, move your consciousness to the spiders on the other side."; 
	otherwise if going west from Sculpture By Lot:
		say "You spot a spider on the west wall, and through it, move your consciousness to the spiders on the other side.";
	otherwise if going to swimming:
		continue the action;
	otherwise:
		say "You transfer your consciousness to a new group of spiders[first time].  You take a moment to readjust to what it's like to 'move' by shifting your consciousness instead of by moving your body.  You're not moving through time (everything is in the same spot on the web as it was), and you're not even moving through space so much as noticing a different space, as mediated by these tiny windows into reality[only]..."

Instead of entering the spiders for the first time:
	Move the consciousness to the spiders;
	Move the spiders to the parking lot;
	now the player is the consciousness;
	now the consciousness is transforming;
	Now the host is the spiders;
	say "With practiced ease, you move your consciousness out of your own head, and into the spiders scattered across the parking lot.  Your perception shifts, and you see the parking lot as if you were standing in it, though patched together from dozens of small views."["[line break][line break]Probably due to your nervousness, a memory surfaces of the first time you managed this."];
	try looking;
	rule succeeds.

Report going somewhere when the player is in the spiders:
	say "You transfer your consciousness to the spiders to [the noun].";
	continue the action.



Rules and New Actions ends here.
