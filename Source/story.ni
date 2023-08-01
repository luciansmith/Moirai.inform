"Fate's Gallery" by Lucian Smith

The story headline is "An Interactive Story"

[Other options:  Momentum Moirai, When the Moon Hits Your Eye, The Moirai, Zora of the Moirai, The Moirai Gallery]

Book 1 Setup

Part 0 Rules

A person has a list of actions called an action list.

Examining something is acting fast. 
Looking is acting fast.
Taking inventory is acting fast.
Entering is acting fast.
Touching is acting fast.
Exiting is acting fast.

The take quick actions out of world rule is listed before the every turn stage rule in the turn sequence rules.

This is the take quick actions out of world rule:
	if the player is transforming:
		now the player is not transforming;
		decide yes;
	if waiting, decide no;
	if the player is enclosed by spiders, decide yes;
	if the player is Zora and Zora is frozen, decide yes;
	if acting fast, decide yes;

A person can be enterable.  A person is usually enterable.
A person can be frozen.  A person is usually frozen.
Understand "enter [a person]" as entering.

[The can't travel in what's not a vehicle rule is not listed in any rulebook.]

Rule for setting action variables for going (this is the allow rideables to be
	going vehicles rule):
	if the actor is carried by a person (called the host),
		now the vehicle gone by is the host;

Instead of exiting when the player is enclosed by a person:
	say "You can't exit one consciousness without going into another one." instead.

Instead of entering a person when the player is enclosed by a person (called host):
	if the host is the noun:
		say "Your conciousness is already inhabiting [the noun].";
		The rule fails;
	say "Gathering your thoughts together, you leave [the host] and transfer your consciouness into [the noun].";
	move the player to the noun;
	The rule succeeds.

Commenting is an action out of world applying to one topic.

Report commenting:
	say "Noted.";
	stop the action.

Understand "# [text]" as commenting.  Understand "/ [text]" as commenting.  Understand "'[text]" as commenting.

Part 1 Map

Quinlan Park Parking Lot is a room.  "Scattered cars fill the The parking lot is just off of 48th street to the west.   To the north is the entrance to the park."  

Looming sculpture is fixed in place. It is here.  "Looming over the parking lot to the east is a huge sculpture whose details have yet to be decided.  But it definitely looms."  The description is "It's a sculpture looming over the east fence."

Fence is fixed in place scenery.  It is here.  "A fence walls off the park to the east."

Before going somewhere when the spiders enclose the player:
	if going east from the parking lot:
		say "You spot a spider on the east wall, and through it, move your consciousness to the spiders on the other side."; 
	otherwise:
		say "You transfer your consiousness to a new group of spiders..."

Instead of going east from the Parking Lot when the spiders do not enclose the player, say "The park continues on the other side of the tall fence to the east, but your host can't scale it."

A Hyundai is a transparent vehicle in the parking lot.  "The Hyundai is parked with almost mathematical precision between two other cars.  You'd never guess that this was accomplished in 1.5 seconds.  Unless you knew Amaia.  Which you do.  But still." The description of the hyundai is "Practical, blue, and nondescript.  Not your typical Vested vehicle, but Amaia is more about function than form."

The Parking Lot is south of the Quinlan Park Entrance.
The Parking Lot is west of Sculpture By Lot.

Quinlan Park Entrance is a room.  "Two booths flank the entrance to the park, where you can buy tickets and get information.  The parking lot to the south is mostly empty, but you can see some people walking through the park to the north."

The Park Entrance is south of Plaza.

Plaza is a room.  "Paths run through this plaza from the south entrance, then splitting northwest around the hill, north up the hill, and east along it. "

Sculpture Number One is a thing in Plaza.  "Prominently displayed just inside the entrance is some sort of sculpture."

Northwest of Plaza is Path By Hill.
North of Plaza is Playground.
East of Plaza is Sculpture By Lot.

Path By Hill is a room.   "The path runs southwest to northeast here, and splits off to the northeast as well, all skirting the hill above you to the east.  A fence mostly hidden by shrubbery to your west hides 48th street, and blocks most of the sound from the passing cards"

Northwest of the Path By Hill is Under Bridge.

Under Bridge is a room.  "A simple and delicate sculpture entitled [fire_forge] sits here, nestled under the 48th Street Bridge on the banks of Brushstroke Reservoir to the north.  The path leads back southeast."

Fire_Forge is a fixed in place thing in Under Bridge.  The description of fire_forge is "A plaque in the ground identifies this sculpture as 'Fire and Forge'.  Long spines of twisting reddish metal emerges from the ground, reminiscent of flames." The printed name of fire_forge is "'Fire and Forge'".  Understand "fire and forge", "fire", "forge", "sculpture", "simple", "delicate" as fire_forge.  Fire_forge is privately-named.

fire_plaque is part of fire_forge.  The printed name of fire_plaque is "plaque".  fire_plaque is privately-named.  Understand "plaque" as fire_plaque.  The description of fire_plaque is "[italic type]Fire and Forge.  Metal and stain, 2007, Amelia Thomas.[line break][line break]The red metal spires most obviously evokes flames, but also passion, leading the majority of scholars to believe this to be representative of the relationship of Aphrodite and Hephaestus."

twisted metal is part of fire_forge.  The description of the twisted metal is "As you examine the twisted metal from different angles, you can almost imagine you see both swords and erotic imagery.  This would be consistent with the church of Aphrodite's reclamation of her dominion over both sex and war in its series of reforms in the 70's and 80's.  A small stamped icon of a cluster of dates would seem to indicate that the sculptor was part of the Inannan denomination."  Understand "dates", "cluster of dates", "icon", "stamped icon", "Innana", "Innanan", "swords", "erotic imagery", "spines", "spires", "twisting", "reddish", "flames" as twisted metal.

East of Path By Hill is Playground.
Playground is a room.  "Slides, swings, and a wide variety of brightly-colored climbing equipment.  The path curves from the south to the east here, along the ridge of the hill."

North of Playground is Beach Sculpture.
Northeast of Path By Hill is Beach Sculpture.
East of Under Bridge is Beach Sculpture.
Beach Sculpture is a room.  "An east-west path runs along the Brushstroke Reservoir beach. A large complicated structure sits here, fodder for some sort of puzzle.  To your south, you can see the playground on top of the hill."


Sculpture By Lot is a room.  "The path curves from the west to the southeast here, winding through a giant sculpture that looms over the fence by the parking lot.  The main hill of the park is to the north."

Instead of going west from the Parking Lot, say "The parking lot is on the other side of the tall fence to the west, but your host can't scale it."

Northwest of Sculpture by Lot is Plaza.

North of Sculpture By Lot is Top Of Hill.
East of Playground is Top Of Hill.
Southeast of Beach Sculpture is Top Of Hill.

Top of Hill is a room.  "From the top of the hill, you can see the entire park below you: the reservoir to the north, the playground to the west, and all eight of the permanent sculptures in the park.  The sculpture here dominates the hill, and looks like a great place for puzzles."

Southeast of Sculpture By Lot is Bewildering Bridges.
Southeast of Top Of Hill is Bewildering Bridges.
Northwest of Bewildering Bridges is Top of Hill.
West of Bewildering Bridges is Sculpture By Lot.

Bewildering Bridges is a room.  "Three paths from the west, northwest, and north converge here at a bewildering complex of bridges, walkways, and staircases, some fixed, and some turning gently in the wind."

North of Bewildering Bridges is East Hill.
East of Top of Hill is East Hill.

East Hill is a room.  "A north-south path rises here on the lower end of the hill.  A sculpture labeled 'Bird and Cage' is displayed here; a mass of metal bits on poles."

Bird_Cage is in East Hill.  The description of Bird_Cage is "A set of twisted pieces of metal and stone, each sitting atop a metal pole."

North of East Hill is Water Sculpture.
Northeast of Top of Hill is Water Sculpture.
East of Beach Sculpture is Water Sculpture.

Water Sculpture is a room.  "Here at the northeast section of the park is a fountain-sculpture-thing in the shallow water of the reservoir.  Paths run from here south along the edge of the hill, southwest up the hill, and west along the beach."

Void is a room.  "This is the off-stage area of the game."

Going west from the Parking Lot is area-exiting.
Going southwest from the Parking Lot is area-exiting.
Going south from the Parking Lot is area-exiting.
Going southeast from the Parking Lot is area-exiting.
Going northwest from Park Entrance is area-exiting.
Going west from Park Entrance is area-exiting.
Going southwest from Park Entrance is area-exiting.
Going southwest from Plaza is area-exiting.
Going west from Plaza is area-exiting.
Going south from Path By Hill is area-exiting.
Going southwest from Path By Hill is area-exiting.
Going west from Path By Hill is area-exiting.
Going south from Under Bridge is area-exiting.
Going southwest from Under Bridge is area-exiting.
Going west from Under Bridge is area-exiting.
Going northwest from Under Bridge is area-exiting.
Going east from Water Sculpture is area-exiting.
Going southeast from Water Sculpture is area-exiting.
Going northeast from East Hill is area-exiting.
Going east from East Hill is area-exiting.
Going southeast from East Hill is area-exiting.
Going northeast from Bewildering Bridges is area-exiting.
Going east from Bewildering Bridges is area-exiting.
Going southeast from Bewildering Bridges is area-exiting.
Going south from Bewildering Bridges is area-exiting.
Going southwest from Bewildering Bridges is area-exiting.
Going south from Sculpture By Lot is area-exiting.
Going southwest from Sculpture By Lot is area-exiting.

Instead of area-exiting, say "Lestar's area of influence seems confined to the park itself, which hopefully means you won't need to go that way."

Going north from Under Bridge is swimming.
Going northwest from Under Bridge is swimming.
Going northwest from Beach Sculpture is swimming.
Going north from Beach Sculpture is swimming.
Going northeast from Beach Sculpture is swimming.
Going northwest from Water Sculpture is swimming.
Going north from Water Sculpture is swimming.
Going northeast from Water Sculpture is swimming.

Instead of swimming when the spiders enclose the player, say "The open water doesn't have any spiders on or in it for you to transfer to."




Part 2 Cast

Amaia is a woman in the Hyundai.  "Amaia is turned sideways in the driver's seat, grasping your hand and Lestar's.  Even frozen, she radiates intensity and movement."  The description of Amaia is "Amaia is a tall dark-haired woman with piercing but tired brown eyes. "
[Amaia is the Future part of the Moirai.  Amaia is Spanish/Basque for 'end place'.]

Lestar is a man in the Hyundai.  "Lestar's eyes are shut in calm concentration.  His relaxed hands hold yours and Amaia's, completing the triangle."  The description of Lestar is "Lestar is an old man with giant bushy white eyebrows that make it impossible for him to hide his emotions."  Understand "relaxed", "triangle" as Lestar.
[Lestar is the Present part o the Moirai.  Lestari is Indonesian for 'Everlasting']

The giant bushy white eyebrows are part of Lestar.  The description of the eyebrows is "Yeah, they're kind of hard to not just stare at."

Zora is a woman in the Hyundai.  "Your own face relaxes as you look at yourself from the outside.  Somehow, it's easier to see yourself this way than in the mirror."  The description of Zora is "You're pragmatically dressed in jeans, a 'Hu' T-shirt, and sneakers.  Your curls are somehow behaving today, probably because you didn't try to do anything with them this morning."  Understand "Zora" as Zora.
[Zora is the Past part of the Moirai.  Zora is Serbo-Croatian for 'Dawn'.]

The spiders are a plural-named person in the Hyundai.  "In the area, you can sense the collective presence of dozens of spiders."  The description of the Spiders is "The minds of the spiders are refreshingly simple, unlike most people's minds.  You can [bold type]enter[roman type] them to explore an area."  Understand "spider", "dozens of spiders" as spiders.

Your consciousness is a woman in the Void.  The description of your consciousness is "Your consciousness has no literal form, but when you move across minds, you imagine your core self as a tight ball of sparks containing your memories."  Understand "core self", "tight ball", "tight ball of sparks", "ball of sparks", "ball", "sparks" as consciousness.

Consciousness can be transforming.  Consciousness is not transforming.

The player is Zora.

Part 3 Actions

Instead of entering the hyundai when the spiders enclose the player:
	say "You transfer your consciousness into the spiders inside the car.";
	move the spiders to the Hyundai;
	try looking instead.
	
Instead of exiting when the player is enclosed by a person (called host) and the player is enclosed by the Hyundai:
	say "You transfer your consciousness into the spiders outside the car.";
	move the spiders to the Parking Lot;
	try looking instead.

Instead of entering Lestar when the player is enclosed by a person (called host):
	say "Lestar's been nothing but kind to you, but you're sure if he saw your whole mind, he'd be disappointed.  You've touched his mind before and that's gone OK.  You guess.  You hope."
	
Instead of entering Zora when the player is enclosed by a person (called host):
	say "If you returned to yourself now, you'd break the past part of the loop. You'd need to get that all squared away first."
	
Instead of touching Lestar:
	say "Reaching out with your mind, you brush Lestar's surface thoughts with your own.  Instantly, you feel the thought, 'Hi, Zora!  Just figure out what's going on, then get people to safety.  You can do this.'  It must have been waiting for you, which in retrospect you feel you should have anticipated.  He's an old Vested, after all, and has been doing this for years.";
	rule succeeds.

answering Lestar that something is physical Lestaring.
telling Lestar about something is physical Lestaring.
asking Lestar about something is physical Lestaring.
asking Lestar for something is physical Lestaring.
kissing Lestar is physical Lestaring.
showing something to Lestar is physical Lestaring.
giving something to Lestar is physical Lestaring.
waking lestar is physical Lestaring.
attacking lestar is physical Lestaring.

Instead of physical Lestaring:
	say "Lestar has anchored himself in the present, with that anchor extended slightly into the past and future, with your and Amaia's help.  Until he unanchors himself again, you cannot interact with him physically.  You could in theory [bold type]enter[roman type] his mind, but as another Vested, he'd remember everything.  [bold type]Touching[roman type] his mind would connect your surface thoughts, which you think you could live with."

answering Amaia that something is physical Amaiaing.
telling Amaia about something is physical Amaiaing.
asking Amaia about something is physical Amaiaing.
asking Amaia for something is physical Amaiaing.
kissing Amaia is physical Amaiaing.
showing something to Amaia is physical Amaiaing.
giving something to Amaia is physical Amaiaing.
waking Amaia is physical Amaiaing.
attacking Amaia is physical Amaiaing.

Instead of physical Amaiaing:
	say "With Lestar anchoring everything in the present, you can't interact with Amaia physically.  You could in theory [bold type]enter[roman type] her mind, but she is [italic type]entirely[roman type] too intimidating for that.  Even [bold type]touching[roman type] her mind to connect your surface thoughts is kind of beyond the pale."

Instead of entering Amaia when the player is enclosed by a person (called host):
	say "You can't imagine actually entering Amaia's consciousness and giving her full access to your mind.  You'd never be able to look her in the eye again, and you have to work with her."
	
Instead of touching Amaia:
	say "Amaia still intimidates you, and you're pretty sure her surface thoughts would just be 'Zora!  Do your job already!'";
	rule succeeds.
	
Instead of doing anything other than looking or examining or entering or waiting or touching or physical Lestaring or physical Amaiaing when the player is Zora:
	say "While frozen, you can [bold type]enter[roman type] the minds around you, and you're aware of your surroundings, but can't do anything physical."

Part 4 Setup

When play begins: 
	now the right hand status line is "[time of day]";
	say "Amaia screeches into the parking lot, and expertly zips into an open spot.  She closes her eyes briefly, checking, then opens them again, only fractionally less concerned.  'OK,' she says, breathlessly, 'whatever it is that's going to happen hasn't happened yet.  Zora,' she turns to you apologetically over her shoulder, 'you won't have a lot of time, but the future's still branching, so it should be enough.  Lestar, you're up.' [line break][line break]From the passenger seat, Lestar grins at both of you, his white eyebrows quirking soothingly, and he reaches behind his seat to pat you reassuringly on the arm.  'You got this, kid,' he says 'You've been doing great; this'll be just like the other times.'  From Amaia's panicked expression, you can tell she disagrees, but she says nothing.  You take a deep breath and grab Lestar's hand, dry and warm, and it grounds you.[line break][line break]Amaia takes Lestar's other hand, then grabs yours, the contact sleek with sweat from both of you.  Lestar nods at you both, and closes his eyes.[line break][line break]Everything freezes.[line break][line break]You have all the time in the world."

The time of day is 10:53 AM. 

Part 5 Memories

A memory is a kind of thing.
Instead of doing something other than examining or taking or giving with a memory:
	say "You can't interact with a memory like that."

Part 5 Preset events

Every turn:
	If the time of day is 10:55 AM:
		say "A cloud passes over the sun.";
	If the time of day is 10:57 AM:
		say "The sun emerges again from behind the cloud.";
		

Book 2 First time through the loop

Part traveling

Instead of entering the spiders for the first time:
	Move the consciousness to the spiders;
	Move the spiders to the parking lot;
	now the player is the consciousness;
	now the consciousness is transforming;
	say "With practiced ease, you move your consciousness out of your own head, and into the surrounding spiders.  Your perception shifts, and you see the parking lot as if you were standing in it, though patched together from dozens of small views."["[line break][line break]Probably due to your nervousness, a memory surfaces of the first time you managed this."];
	try looking;
	rule succeeds.

Report going somewhere when the player is in the spiders:
	say "You transfer your consciousness to the spiders to [the noun].";
	continue the action.