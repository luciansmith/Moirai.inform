"Fate's Gallery" by Lucian Smith

The story headline is "An Interactive Story"

Include Response Assistant by Aaron Reed

[Other options:  Momentum Moirai, When the Moon Hits Your Eye, The Moirai, Zora of the Moirai, The Moirai Gallery]

Book 0 Rules

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
	
Before waiting when spidered:
	say "Gently, you release your hold on time, letting it scroll forward."

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

Instead of exiting when the player is enclosed by a person:
	say "You can't exit one consciousness without going into another one." instead.

Instead of entering a person:
	If the player is enclosed by a person (called host):
		if the host is the noun:
			say "Your conciousness is already inhabiting [the noun].";
			The rule fails;
		say "Gathering your thoughts together, you leave [the host] and transfer your consciouness into [the noun].";
		move the player to the noun;
		The rule succeeds;
	Otherwise if the person is the player:
		say "You're already in yourself, for what that's worth.";
	Otherwise:
		continue the action;

Commenting is an action out of world applying to one topic.

Report commenting:
	say "Noted.";
	stop the action.

Understand "# [text]" as commenting.  Understand "/ [text]" as commenting.  Understand "'[text]" as commenting.

The immediately undo rule response (B) is "Having just entered this strand, you can't now back up anywhere.".
The immediately undo rule response (C) is "You attemp to step backwards on the strands like you've done before, but find yourself unable to do so this time.  [italic type][bracket]Your interpreter does not provide 'undo'. Sorry![bracket][roman type]".
The immediately undo rule response (D) is "You attempt to step backwards on the strands, but find yourself unable to do so.".
The immediately undo rule response (E) is "You step backwards on the strands.".
The immediately undo rule response (F) is "You've gone as far backwards on this strand as you can manage.".

Book Map

Section parking lot

Quinlan Park Parking Lot is a room.  "Scattered cars fill the parking lot, including [the Hyundai]. The parking lot is just off of 48th street to the west.   To the north is the entrance to the park."  

Looming sculpture is fixed in place. It is here.  "Looming over the parking lot to the east is a huge sculpture {whose details have yet to be decided.  But it definitely looms. LS DEBUG.}".  The description is "It's a sculpture looming over the east fence."

Fence is a backdrop.  It is here.  The description is "A fence walls off the park."  The fence is in the Path By Hill, Under Bridge, Water Sculpture, East Hill, Bewildering Bridges, and Sculpture By Lot.

Instead of going east from the Parking Lot when not spidered, say "The park continues on the other side of the tall fence to the east, but your host can't scale it."

Instead of going west from the Sculpture By Lot when not spidered, say "The parking lot can be found on the other side of the tall fence to the west, but your host can't scale it."

A Hyundai is a transparent vehicle in the parking lot.  "The Hyundai is parked with almost mathematical precision between two other cars.  You'd never guess that this was accomplished in 1.5 seconds.  Unless you knew Amaia.  Which you do.  But still." The description of the hyundai is "Practical, blue, and nondescript.  Not your typical Vested vehicle, but Amaia is more about function than form."

The Parking Lot is south of the Quinlan Park Entrance.
The Parking Lot is west of Sculpture By Lot.
The entrance is northeast of the parking lot.
Southwest of entrance is nowhere.

Quinlan Park Entrance is a room.  "Two booths flank the entrance to the park, where you can buy tickets and get information."

An information booth is here.  It is open, container, and fixed in place.

Northeast of Entrance is Plaza.
East of Entrance is Sculpture By Lot.
Southeast of Entrance is Parking Lot.

The Park Entrance is south of Plaza.

Section plaza

Plaza is a room.  "Paths run through this plaza from the south entrance, then splitting northwest around the hill, north up the hill, and east along it. "

To say distant_coyote:
	say "Coyote's Call is the iconic sculpture of Quinlan Park.  Made of large red metal tubes and beams, it dominates the landscape from atop the central hill[if sinkhole_size is 0] to [otherwise]. Normally, you'd be able to see it to "

plaza_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]To the northeast atop the hill is the iconic red metal structure of Coyote's Call.[otherwise if sinkhole_size is 1]To the northeast, the iconic red metal of Coyote's Call is no longer visible."  The description is "[distant_coyote][the northeast]."  Understand "iconic", "red", "metal", "structure", "coyote", "coyote's", "call", "central", "hill" as plaza_view.  The printed name of plaza_view is "Coyote's Call";

Sculpture Number One is a thing in Plaza.  "Prominently displayed just inside the entrance is some sort of sculpture (LS DEBUG)."

Northwest of Plaza is Path By Hill.
Northeast of Plaza is Top of Hill.
North of Plaza is Playground.
Southwest of Playground is Plaza.
Southeast of Playground is Plaza.
East of Plaza is Sculpture By Lot.

Section Path By Hill

Path By Hill is a room.   "The path runs southwest to northeast here along the edge of the park, and splits off to the northeast as well, heading up the hill above you to the east.  A fence mostly hidden by shrubbery to your west hides 48th street, and blocks most of the sound from the passing cards"

pbh_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]To the east you can still see the tops of the red metal structure of Coyote's Call.[otherwise if sinkhole_size is 1]To the east, the red metal of Coyote's Call is no longer visible."  The description is "[distant_coyote][the northeast]."  Understand "iconic", "red", "metal", "structure", "coyote", "coyote's", "call", "central", "hill" as pbh_view.  The printed name of pbh_view is "Coyote's Call";


Northwest of the Path By Hill is Under Bridge.
North of Path By Hill is Under Bridge.
South of Under Bridge is nowhere.

Section Under Bridge

Under Bridge is a room.  "A simple and delicate sculpture entitled [fire_forge] sits here, nestled under the 48th Street Bridge on the banks of Brushstroke Reservoir to the north.  The path leads back southeast to the main park area."

Fire_Forge is a fixed in place thing in Under Bridge.  The description of fire_forge is "A plaque in the ground identifies this sculpture as 'Fire and Forge'.  Long spines of twisting reddish metal emerges from the ground, reminiscent of flames." The printed name of fire_forge is "'Fire and Forge'".  Understand "fire and forge", "fire", "forge", "sculpture", "simple", "delicate" as fire_forge.  Fire_forge is privately-named.

fire_plaque is part of fire_forge.  The printed name of fire_plaque is "plaque".  fire_plaque is privately-named.  Understand "plaque" as fire_plaque.  The description of fire_plaque is "[italic type]Fire and Forge.  Metal and stain, 2007, Amelia Thomas.[line break][line break]The red metal spires most obviously evokes flames, but also passion, leading the majority of scholars to believe this to be representative of the relationship of Aphrodite and Hephaestus."

twisted metal is part of fire_forge.  The description of the twisted metal is "As you examine the twisted metal from different angles, you can almost imagine you see both swords and erotic imagery.  This would be consistent with the church of Aphrodite's reclamation of her dominion over both sex and war in its series of reforms in the 70's and 80's.  A small stamped icon of a cluster of dates would seem to indicate that the sculptor was part of the Inannan denomination."  Understand "dates", "cluster of dates", "icon", "stamped icon", "Innana", "Innanan", "swords", "erotic imagery", "spines", "spires", "twisting", "reddish", "flames" as twisted metal.

East of Path By Hill is Playground.

Section Playground

Playground is a room.  "You're at the top of the hill in the park.  This side has slides, swings, and a wide variety of brightly-colored [climbing equipment].  The path curves from the south to the east side of the hill, along the ridge."

Climbing equipment is fixed in place in the Playground.  The description is "It looks like a blast to play in.  Slides that cross over each other; several different kinds of swings; ropes and bars everywhere.[if sinkhole_size is 0]  Kids are playing on every surface."  Understand "slides", "slide", "swings", "swing", "bright", "brightly-colored", "brightly", "colored", "ropes", "bars" as climbing equipment.

playground_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]Dominating the sky to the east is the red metal tubes and bars of Coyote's Call.[otherwise if sinkhole_size is 1]Coyote's Call has fallen into the gaping and still-expanding sinkhole."  The description is "[distant_coyote][the east]."  Understand "iconic", "red", "metal", "structure", "coyote", "coyote's", "call", "central", "hill" as playground_view.  The printed name of playground_view is "Coyote's Call";

North of Playground is Beach Sculpture.
Northeast of Playground is Beach Sculpture.
Northwest of Playground is Beach Sculpture.
Northeast of Path By Hill is Beach Sculpture.
East of Under Bridge is Beach Sculpture.

Section Beach Sculpture

Beach Sculpture is a room.  "An east-west path runs along the Brushstroke Reservoir beach. A large complicated structure sits here, fodder for some sort of puzzle.  To your south, you can see the playground on top of the hill."

beach_sculpt_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]To the southeast atop the hill is the iconic red metal structure of Coyote's Call.[otherwise if sinkhole_size is 1]You can no longer see Coyote's Call to the southeast."  The description is "[distant_coyote][the northeast]."  Understand "iconic", "red", "metal", "structure", "coyote", "coyote's", "call", "central", "hill" as beach_sculpt_view.  The printed name of beach_sculpt_view is "Coyote's Call";

Section Sculpture By Lot

Sculpture By Lot is a room.  "The path curves from the west to the southeast here, winding through a giant sculpture that looms over the fence by the parking lot.  The main hill of the park is to the north."

nearlot_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]Up the hill to the north is the red metal tubes and bars of Coyote's Call.[otherwise if sinkhole_size is 1]Bits of the Coyote's Call structure can still be seen as it falls into the sinkhole."  The description is "[distant_coyote][the east]."  Understand "iconic", "red", "metal", "structure", "coyote", "coyote's", "call", "central", "hill" as nearlot_view.  The printed name of nearlot_view is "Coyote's Call";

Going west from Sculpture By Lot is jumping-fences.
Going east from Parking Lot is jumping-fences.

Instead of jumping-fences when the player is enclosed by a person (called the host):
	if the host is spiders:
		continue the action;
	otherwise:
		say "The fence is in the way, blocking [the host]'s access."

Northwest of Sculpture by Lot is Plaza.

North of Sculpture By Lot is Top Of Hill.
Northeast of Sculpture By Lot is Top Of Hill.
East of Playground is Top Of Hill.
Southeast of Beach Sculpture is Top Of Hill.
North of Top of Hill is Water Sculpture

Section Top Of Hill

To say what top of hill looks like:
	if sinkhole_size is 0:
		say "From the top of the hill, you can see the entire park below you: the reservoir to the north, the playground to the west, and all eight of the permanent sculptures in the park.  The sculpture here dominates the hill, and looks like a great place for puzzles LS DEBUG.[no line break]";
	otherwise if sinkhole_size is 1:
		say "The entire hill has collapsed in on itself, revealing a giant pit underneath. [if spidered]Bushes and trees are frozen mid-fall, as they pitch forward into the yawning chasm.[otherwise]The sides of the pit continue to expand, as dirt and trees slowly topple in from the sides.[end if](LS DEBUG describe the collapsed sculpture.) "

Top of Hill is a room.  "[What top of hill looks like]".
The printed name of top of hill is "[if sinkhole_size is 0]Top of Hill[otherwise if sinkhole_size is 1]Giant Pit[otherwise]Gianter Piter LS DEBUG"

Southeast of Sculpture By Lot is Bewildering Bridges.
Southeast of Top Of Hill is Bewildering Bridges.
Northwest of Bewildering Bridges is Top of Hill.
West of Bewildering Bridges is Sculpture By Lot.

Section Bewildering Bridges

Bewildering Bridges is a room.  "Three paths from the west, northwest, and north converge here at a bewildering complex of bridges, walkways, and staircases, some fixed, and some turning gently in the wind."

bridges_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]A ways northwest up the hill you can see the iconic red metal structure of Coyote's Call.[otherwise if sinkhole_size is 1]."  The description is "[distant_coyote][the east]."  Understand "iconic", "red", "metal", "structure", "coyote", "coyote's", "call", "central", "hill" as bridges_view.  The printed name of bridges_view is "Coyote's Call";

North of Bewildering Bridges is East Hill.
East of Top of Hill is East Hill.
Northeast of Bewildering Bridges is nowhere.

Section East Hill

East Hill is a room.  "A north-south path rises here on the lower east end of the hill.  A sculpture labeled [Bird_Cage] is displayed here; a mass of metal bits on poles."

easthill_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]Up the hill to the west is the iconic red metal structure of Coyote's Call.[otherwise if sinkhole_size is 1]Much of the hill to the west is missing, including Coyote's call."  The description is "[distant_coyote][the northeast]."  Understand "iconic", "red", "metal", "structure", "coyote", "coyote's", "call", "central", "hill" as easthill_view.  The printed name of easthill_view is "Coyote's Call";

Bird_Cage is in East Hill.  The description of Bird_Cage is "A set of twisted pieces of metal and stone, each sitting atop a metal pole."  The printed name of Bird_Cage is "'Bird and Cage'". Understand "bird", "cage", "bird and cage" as bird_cage.

North of East Hill is Water Sculpture.
Northeast of Top of Hill is Water Sculpture.
East of Beach Sculpture is Water Sculpture.
Northwest of East Hill is Water Sculpture.
Southwest of East Hill is Bewildering Bridges.

Section WaterSculpture

Water Sculpture is a room.  "Here at the northeast section of the park is a fountain-sculpture-thing in the shallow water of the reservoir.  Paths run from here south along the edge of the hill, southwest up the hill, and west along the beach."

water_sculpt_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]To the southwest atop the hill is the iconic red metal structure of Coyote's Call.[otherwise if sinkhole_size is 1]To the southwest, the iconic red metal of Coyote's Call is no longer visible."  The description is "[distant_coyote][the northeast]."  Understand "iconic", "red", "metal", "structure", "coyote", "coyote's", "call", "central", "hill" as water_sculpt_view.  The printed name of water_sculpt_view is "Coyote's Call";

Section Void and Nowhere

Void is a room.  "This is the off-stage area of the game."

Instead of going nowhere, say "That direction seems to be outside Lestar's area of influence.  Hopefully that means you won't need to go that way."

Instead of going nowhere when the noun is inside, say "You'll have to be more specific about what you want to enter."

Instead of going nowhere when the noun is outside, try exiting instead.

Instead of going nowhere when the noun is up, say "Unfortunately, you're not one of the Vested that can fly."

Instead of going nowhere when the noun is down, say "You can't go down from here."

north of Under Bridge is swimming.
northwest of Under Bridge is swimming.
northeast of Under Bridge is swimming.
northwest of Beach Sculpture is swimming.
north of Beach Sculpture is swimming.
northeast of Beach Sculpture is swimming.
northwest of Water Sculpture is swimming.
north of Water Sculpture is swimming.
northeast of Water Sculpture is swimming.
southwest of swimming is Under Bridge.
south of swimming is Beach Sculpture.
southeast of swimming is Water Sculpture.

Instead of going to swimming when spidered, say "The open water doesn't have any spiders for you to transfer to."

Instead of going to swimming, say "I'll have to think of a good reason for you to not swim, or to let you swim after all LS DEBUG."

Park Proper is a region.  Path By Hill, Water Sculpture, East Hill, Bewildering Bridges, Sculpture By Lot, Plaza, Top of Hill, Playground,Under Bridge, Beach Sculpture is in Park Proper.


Book Cast

Amaia is a woman in the Hyundai.  "Amaia is turned sideways in the driver's seat, grasping your hand and Lestar's.  Even frozen, she radiates intensity and movement."  The description of Amaia is "Amaia is a tall dark-haired woman with piercing but tired brown eyes. "
[Amaia is the Future part of the Moirai.  Amaia is Spanish/Basque for 'end place'.]

Lestar is a man in the Hyundai.  "Lestar's eyes are shut in calm concentration.  His relaxed hands hold yours and Amaia's, completing the triangle."  The description of Lestar is "Lestar is an old man with giant bushy white eyebrows that make it impossible for him to hide his emotions."  Understand "relaxed", "triangle" as Lestar.
[Lestar is the Present part o the Moirai.  Lestari is Indonesian for 'Everlasting']

Lester is a man in the Hyundai.  Lester is scenery.
Instead of doing anything with lester, say "(It's 'Lestar', not 'Lester'.)"

The giant bushy white eyebrows are part of Lestar.  The description of the eyebrows is "Yeah, they're kind of hard to not just stare at."

Zora is a woman in the Hyundai.  "Your own face relaxes as you look at yourself from the outside.  Somehow, it's easier to see yourself this way than in the mirror."  The description of Zora is "You're pragmatically dressed in jeans, a 'Hu' T-shirt, and sneakers.  Your curls are somehow behaving today, probably because you didn't try to do anything with them this morning."  Understand "Zora" as Zora.
[Zora is the Past part of the Moirai.  Zora is Serbo-Croatian for 'Dawn'.]

The player is Zora.

The spiders are a plural-named person in the Hyundai.  "In the area, you can sense the collective presence of dozens of spiders."  The description of the Spiders is "The minds of the spiders are refreshingly simple, unlike most people's minds.  You can [bold type]enter[roman type] them to explore an area."  Understand "spider", "dozens of spiders" as spiders.

Your consciousness is a woman in the Void.  The description of your consciousness is "Your consciousness has no literal form, but when you move across minds, you imagine your core self as a tight ball of sparks containing your memories."  Understand "core self", "tight ball", "tight ball of sparks", "ball of sparks", "ball", "sparks" as consciousness.

Consciousness can be transforming.  Consciousness is not transforming.

To decide whether spidered:
	if the spiders enclose the player, yes;
	otherwise no;

Before going somewhere when spidered:
	if going east from the parking lot:
		say "You spot a spider on the east wall, and through it, move your consciousness to the spiders on the other side."; 
	otherwise if going west from Sculpture By Lot:
		say "You spot a spider on the west wall, and through it, move your consciousness to the spiders on the other side."; 
	otherwise if going to swimming:
		continue the action;
	otherwise:
		say "You transfer your consiousness to a new group of spiders..."

Book Background Cast

Kids are plural-named people in the Void.  "[if sinkhole_size is 0]Kids are playing, shrieking, and chasing each other up and around the platforms."

Instead of entering the Kids, say "Hoo boy, as traumatic as it is for you to enter people's minds, you'd rather not inflict full access to an adult mind on a pre-teen, even if they're supposed to forget afterwards."

Park-goers are plural-named backdrop in the Void.  They are scenery.  The description is "The park is well-attended today, with a variety of park-goers enjoying the day and the scenery."  Understand "people", "goers", "park goers" as park-goers.

Instead of entering park-goers, say "Entering someone's mind is traumatic enough that you're not going to do it without some particular reason."

Does the player mean examining the park-goers:  It is likely.

When play begins:
	Move the Kids to the Playground;
	Move park-goers to Park Proper;


Book Actions

Instead of entering the hyundai when spidered:
	say "You transfer your consciousness into the spiders inside the car.";
	move the spiders to the Hyundai;
	try looking instead.
	
Instead of exiting when the player is enclosed by a person (called host) and the player is enclosed by the Hyundai:
	say "You transfer your consciousness into the spiders outside the car.";
	move the spiders to the Parking Lot;
	try looking instead.

Instead of going outside when the player is enclosed by the hyundai:
	try exiting instead.
	
Instead of going inside:
	try entering spiders instead.

Instead of entering Lestar:
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

Instead of entering Amaia:
	say "You can't imagine actually entering Amaia's consciousness and giving her full access to your mind.  You'd never be able to look her in the eye again, and you have to work with her."
	
Instead of touching Amaia:
	say "Amaia still intimidates you, and you're pretty sure her surface thoughts would just be 'Zora!  Do your job already!'";
	rule succeeds.
	
Instead of doing anything other than looking or examining or entering or waiting or touching or physical Lestaring or physical Amaiaing or taking inventory when the player is Zora:
	say "While frozen, you can [bold type]enter[roman type] the minds around you, and you're aware of your surroundings, but can't do anything physical."

Book Setup

When play begins: 
	now the right hand status line is "[time of day]";
	say "Amaia screeches into the parking lot, and expertly zips into an open spot.  She closes her eyes briefly, checking, then opens them again, only fractionally less concerned.  'OK,' she says, breathlessly, 'whatever it is that's going to happen hasn't happened yet.  Zora,' she turns to you apologetically over her shoulder, 'you won't have a lot of time, but the future's still branching, so it should be enough.  Lestar, you're up.' [line break][line break]From the passenger seat, Lestar grins at both of you, his white eyebrows quirking soothingly, and he reaches behind his seat to pat you reassuringly on the arm.  'You got this, kid,' he says 'You've been doing great; this'll be just like the other times.'  From Amaia's panicked expression, you can tell she disagrees, but she says nothing.  You take a deep breath and grab Lestar's hand, dry and warm, and it grounds you.[line break][line break]Amaia takes Lestar's other hand, then grabs yours, the contact sleek with sweat from both of you.  Lestar nods at you both, and closes his eyes.[line break][line break]Everything freezes.[line break][line break]You have all the time in the world."

The time of day is 10:53 AM. 

Book Memories

A memory is a kind of thing.
Instead of doing something other than examining or taking or giving with a memory:
	say "You can't interact with a memory like that."

Book Preset events

sinkhole_size is a number that varies.  sinkhole_size is 0.


To carry out sinkhole appearing:
	if the location of the player is Top of Hill:
		if spidered:
			say "With a roar, the entire top of the hill collapses in on itself, and your perception shatters as spiders are shaken off webs and perches, spinning out emergency strands to catch the wind and slow their falls.  Straining, you manage to reassert your hold on time, freezing everything in place again.  Gradually, you stitch together a new coherent view of your surroundings.";
			try looking;
		otherwise:
			say "LS DEBUG figure out what to do when the host ends up falling?  Or have them refuse?";
			try looking;
	otherwise if the location of the player is entrance or the location of the player is the parking lot:
		say "You hear a roar from inside the park.";
	otherwise:
		say "Whoops, a sinkhole."



Every turn:
	If the time of day is 10:54 AM:
		say "A cloud passes over the sun.";
	If the time of day is 10:56 AM:
		if the location of the player is Top of Hill, say "You feel an ominous rumbling from deep under the earth.";
		otherwise say "You feel a slight tremor in the earth from somewhere nearby.";
	If the time of day is 10:57 AM:
		now sinkhole_size is 1;
		carry out sinkhole appearing;
	If the time of day is 10:59 AM:
		say "The sun emerges again from behind the cloud.";
	if the time of day is 11:00 AM:
		say ""
		


Book traveling

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