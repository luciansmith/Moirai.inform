"Fate's Gallery" by Lucian Smith

The story headline is "An Interactive Story"

The release number is 0.

Include Response Assistant by Aaron Reed

[Other options:  Momentum Moirai, When the Moon Hits Your Eye, The Moirai, Zora of the Moirai, The Moirai Gallery]

Book 0 Rules

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

A room can be liminal, parky, or chasmy.  A room is usually parky.

Section parking lot

Quinlan Park Parking Lot is a room.  "Scattered cars fill the parking lot[if the hyundai is in the parking lot], including [the Hyundai] you came here in[otherwise], but your Hyundai hasn't arrived yet[end if]. The parking lot is just off of 48th street to the west.   To the north is the entrance to the park.".  parking lot is liminal.

Looming sculpture is fixed in place. It is here.  "Looming over the parking lot to the east is a huge sculpture  whos details have yet to be decided LS TBD.}".  The description is "It's a sculpture looming over the east fence LS TBD."

Fence is a backdrop.  It is here.  The description is "A fence walls off the park."  The fence is in the Path By Hill, Under Bridge, Water Sculpture, East Hill, Bewildering Bridges, and Sculpture By Lot.

Instead of going east from the Parking Lot when not spidered, say "The park continues on the other side of the tall fence to the east, but your host can't scale it."

Instead of going west from the Sculpture By Lot when not spidered, say "The parking lot can be found on the other side of the tall fence to the west, but your host can't scale it."

A Hyundai is a transparent vehicle in the parking lot.  "The Hyundai is parked with almost mathematical precision between two other cars.  You'd never guess that this was accomplished in 1.5 seconds.  Unless you knew Amaia.  Which you do.  But still." The description of the hyundai is "Practical, blue, and nondescript.  Not your typical Vested vehicle, but Amaia is more about function than form."  Understand "car/blue/practical/vehicle" as the Hyundai.

The Parking Lot is south of the Quinlan Park Entrance.
The Parking Lot is west of Sculpture By Lot.
The entrance is northeast of the parking lot.
Southwest of entrance is nowhere.

Section entrance

To say mention_booths:
	now the information booth is mentioned;
	if Jace is not in the ticket booth:
		now the ticket booth is mentioned;

Quinlan Park Entrance is a room.  "Two booths flank the entrance to the park to the north, where you can buy tickets and get information[mention_booths].  To the south is the parking lot.". Entrance is liminal.

An information booth is here.  It is a fixed in place container.  The description is "The information booth is unmanned, but there's a [stack of flyers] resting on the sill."  Understand "booths" as the information booth.

A stack of flyers is part of the information booth.  The description is "The flyer reads:[line break][line break][bold type]'Welcome to Quinlan Park!'[roman type][line break][line break]'Established in 1974, Dr. Robert Quinlan set aside this portion of his estate as a public park, commisioned the central 'Coyote's Call' sculpture from Wynona Locklear, and set up a trust to commission and rotate other art pieces at other sites throughout the park.  Enjoy your stay, and find out more below about our amazing artists!'[line break][line break]Below this is a cartoon map of the park, with small text blocks describing each of the sculptures currently on display:  the central Coyote's Call, then (clockwise from the southwest entrance): <something>, Fire and Forge, <something>, <water sculpture>, Bird and Cage, <bridges>, and <looming> (LS TBD: list the rest, and write the block text for each.  You should eventually be able to 'x bird and cage' and get this description if not next to the real thing, and probably 'look up bird and cage on map' to be more specific (not implemetned yet))."
Understand "flyer/sill" as stack of flyers.

Instead of taking the stack of flyers:
	if spidered:
		say "The spiders can't pick up a flyer, and you couldn't take it with you even if they could.";
	otherwise:
		say "LS TBD: Determine what to do when in a human host."

[Instead of entering the information booth:
	if spidered:
]		

A ticket booth is here.  It is open, container, and fixed in place.  The description is "The ticket booth has a sign with a pay-what-you-want pricing scheme ranging from 'I just need more grass and art in my life - FREE' through 'I think you guys are amazing and would love to be listed as a patron - $1000'.[if Jace is enclosed by the ticket booth]  [A Jace] is manning the booth, taking donations from the park-goers." Understand "tickets/booths" as ticket booth;

Rule for writing a paragraph about the ticket booth:
	If Jace is in the ticket booth:
		say "You can see [Jace] manning the ticket booth, but the information booth is empty.";
	otherwise:
		say "Both the ticket booth and the information both are currently unmanned.";
	now the ticket booth is mentioned.

Instead of examining the ticket booth:
	say "[the description of the ticket booth][line break]".


Northeast of Entrance is Plaza.
East of Entrance is Sculpture By Lot.
Southeast of Entrance is Parking Lot.

The Park Entrance is south of Plaza.

Section plaza

Plaza is a room.  "Paths run through this plaza from the south entrance, then splitting northwest around the hill, north up the hill, and east along it. ".

To say distant_coyote:
	say "Coyote's Call is the iconic sculpture of Quinlan Park.  Made of large red metal tubes and beams, it dominates the landscape from atop the central hill[if sinkhole_size is 0] to [otherwise]. Normally, you'd be able to see it to "

plaza_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]To the northeast atop the hill is the iconic red metal structure of Coyote's Call.[otherwise]To the northeast, the iconic red metal of Coyote's Call is no longer visible."  The description is "[distant_coyote][the northeast]."  Understand "iconic/red/metal/structure/coyote/coyote's/call/central/hill/tubes/bars" as plaza_view.  The printed name of plaza_view is "Coyote's Call";

Sculpture Number One is a thing in Plaza.  "Prominently displayed just inside the entrance is some sort of sculpture (LS TBD)."

Northwest of Plaza is Path By Hill.
Northeast of Plaza is Top of Hill.
North of Plaza is Playground.
Southwest of Playground is Plaza.
Southeast of Playground is Plaza.
East of Plaza is Sculpture By Lot.

Section Path By Hill

Path By Hill is a room.   "The path runs southeast to northwest here along the edge of the park, and splits off to the east as well, heading up the hill above you.  A fence mostly hidden by shrubbery to your west hides 48th street, and blocks most of the sound from the passing cars."

pbh_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]Though the hill is in the way, you can still see the tops of the red metal structure of Coyote's Call past the rise to the east.[otherwise]To the east, the red metal of Coyote's Call is no longer visible."  The description is "[distant_coyote][the east]."  Understand "iconic/red/metal/structure/coyote/coyote's/call/central/hill/tubes/bars" as pbh_view.  The printed name of pbh_view is "Coyote's Call";


Northwest of the Path By Hill is Under Bridge.
North of Path By Hill is Under Bridge.
South of Under Bridge is nowhere.

Section Under Bridge

Under Bridge is a room.  "A simple and delicate sculpture entitled [fire_forge] sits here, nestled under the 48th Street Bridge on the banks of Brushstroke Reservoir to the north.  The path leads back southeast to the main park area."

Fire_Forge is a fixed in place thing in Under Bridge.  The description of fire_forge is "A plaque in the ground identifies this sculpture as 'Fire and Forge'.  Long spines of twisting reddish metal emerges from the ground, reminiscent of flames." The printed name of fire_forge is "'Fire and Forge'".  Understand "fire and forge", "fire/forge/sculpture/simple/delicate" as fire_forge.  Fire_forge is privately-named.

fire_plaque is part of fire_forge.  The printed name of fire_plaque is "plaque".  fire_plaque is privately-named.  Understand "plaque" as fire_plaque.  The description of fire_plaque is "[italic type]Fire and Forge.  Metal and stain, 2007, Amelia Thomas.[line break][line break]The red metal spires most obviously evokes flames, but also passion, leading the majority of scholars to believe this to be representative of the relationship of Aphrodite and Hephaestus."

twisted metal is part of fire_forge.  The description of the twisted metal is "As you examine the twisted metal from different angles, you can almost imagine you see both swords and erotic imagery.  This would be consistent with the church of Aphrodite's reclamation of her dominion over both sex and war in its series of reforms in the 70[apostrophe]s and 80[apostrophe]s.  A small stamped icon of a cluster of dates would seem to indicate that the sculptor was part of the Inannan denomination."  Understand "Innana/Innanan/swords", "erotic imagery", "spines/spires/twisting/reddish/flames" as twisted metal.

cluster of dates is part of twisted metal.  The description is "(as in the fruit.)"  Understand "stamped/icon/fruit" as cluster of dates.

East of Path By Hill is Playground.

Section Playground

Playground is a room.  "You're at the top of the hill in the park.  This side has slides, swings, and a wide variety of brightly-colored [equipment].  The path curves from the south to the east side of the hill, along the ridge."

Some climbing equipment is fixed in place in the Playground.  The description is "It looks like a blast to play in.  Slides that cross over each other; several different kinds of swings; ropes and bars everywhere.[if sinkhole_size is 0]  Kids are playing on every surface."  Understand "slides/slide/swings/swing/bright/brightly-colored/brightly/colored/ropes/bars" as climbing equipment.

playground_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]Dominating the sky to the east is the red metal tubes and bars of Coyote's Call.[otherwise]Coyote's Call has fallen into the gaping and still-expanding sinkhole."  The description is "[distant_coyote][the east]."  Understand "iconic/red/metal/structure/coyote/coyote's/call/central/hill/tubes/bars" as playground_view.  The printed name of playground_view is "Coyote's Call";

North of Playground is Beach Sculpture.
Northeast of Playground is Beach Sculpture.
Northwest of Playground is Beach Sculpture.
Northeast of Path By Hill is Beach Sculpture.
East of Under Bridge is Beach Sculpture.

Section Beach Sculpture

Beach Sculpture is a room.  "An east-west path runs along the Brushstroke Reservoir beach. A large complicated structure sits here, fodder for some sort of puzzle LS TBD.  To your south, you can see the playground on top of the hill."

beach_sculpt_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]To the southeast atop the hill is the iconic red metal structure of Coyote's Call.[otherwise]You can no longer see Coyote's Call to the southeast."  The description is "[distant_coyote][the southeast]."  Understand "iconic/red/metal/structure/coyote/coyote's/call/central/hill/tubes/bars" as beach_sculpt_view.  The printed name of beach_sculpt_view is "Coyote's Call";

Section Sculpture By Lot

Sculpture By Lot is a room.  "The path curves from the west to the southeast here, winding through a giant sculpture that looms over the fence by the parking lot.  The main hill of the park is to the north."

nearlot_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]Up the hill to the north is the red metal tubes and bars of Coyote's Call.[otherwise if sinkhole_size is 1]Bits of the Coyote's Call structure can still be seen as it falls into the sinkhole.[otherwise]You can no longer see Coyote's Call to the north."  The description is "[distant_coyote][the north]."  Understand "iconic/red/metal/structure/coyote/coyote's/call/central/hill/tubes/bars" as nearlot_view.  The printed name of nearlot_view is "Coyote's Call";

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
		say "From the top of the hill, you can see the entire park below you: the reservoir to the north, the playground to the west, and all eight of the permanent sculptures in the park.[no line break]";
	otherwise if sinkhole_size is 1:
		say "The entire hill has collapsed in on itself, revealing a giant pit underneath. [if spidered]Bushes and trees are frozen mid-fall, as they pitch forward into the yawning chasm.[no line break][otherwise]The sides of the pit continue to expand, as dirt and trees slowly topple in from the sides.[end if][no line break]";
	otherwise:
		say "Nothing remains of the hill or its contents.  In fact, I probably shouldn't let you be here LS TBD.[no line break]"

Top of Hill is a room.  "[What top of hill looks like]".
The printed name of top of hill is "[if sinkhole_size is 0]Top of Hill[otherwise if sinkhole_size is 1]Giant Pit[otherwise]Giant-er Pit LS TBD"

To say what Coyote's Call looks like:
	if sinkhole_size is 0:
		say "A collection of giant metal tubes and beams graces the top of the hill, known as 'Coyote's Call'.  It's an abstract design of joyful chaos, somehow incorporating even the curve of the hill into its own expression.[no line break]";
	otherwise if sinkhole_size is 1:
		say "Coyote's Call is collapsing into the sinkhole along with everything else.[no line break][if spidered]  Frozen in time, the new configuration of its tubes and beams makes it seem even more joyfully chaotic.  You are probably the only person who will ever experience it this way, and it makes the combination of destruction and art intensely personal.[no line break]";
	otherwise:
		say "(Coyote's call is gone LS TBD)";

To say coyote's call's general description:
	if sinkhole_size is 0:
		say "Art is a converstation between the artist, the subject, and the viewer, but as you take in the tubes and spires of this particular piece, you can't help but wonder what the current Vested of Coyote would make of it.  They've not gone public, so they could be anyone.  Could they be like you, newly awakened to their abilities, trying and failing (or succeeding?) to find answers in the church dedicated to the idea they represent?  Like Lestar, so self-assured and confident, understanding and perfectly molded to their place in the world?  Like Amaia, driven to prove themselves, to surpass their forebearers?  How would that color their reponse to this giant red mass of sculpted metal?[no line break]";
	otherwise:
		say "The entire hill gave way all at once, and Coyote's Call is now falling, its original configuration lost.  But you can't help think that it was at the epicenter of the collapse.[no line break]";

Coyote's Call is here.  "[what coyote's call looks like][no line break]".  The description is "[coyote's call's general description]".  Understand "coyote/call/coyote's/collection/giant/metal/tubes/beams/abstract/chaos/curve", "curve of the hill" as coyote's call.


Southeast of Sculpture By Lot is Bewildering Bridges.
Southeast of Top Of Hill is Bewildering Bridges.
Northwest of Bewildering Bridges is Top of Hill.
West of Bewildering Bridges is Sculpture By Lot.

Section Bewildering Bridges

Bewildering Bridges is a room.  "Three paths from the west, northwest, and north converge here at a bewildering complex of bridges, walkways, and staircases, some fixed, and some turning gently in the wind."

bridges_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]A ways northwest up the hill you can see the iconic red metal structure of Coyote's Call.[otherwise if sinkhole_size is 1]Coyote's Call has disappeared from view; it used to be visible to the northwest."  The description is "[distant_coyote][the northwest]."  Understand "iconic/red/metal/structure/coyote/coyote's/call/central/hill/tubes/bars" as bridges_view.  The printed name of bridges_view is "Coyote's Call";

North of Bewildering Bridges is East Hill.
East of Top of Hill is East Hill.
Northeast of Bewildering Bridges is nowhere.

Section East Hill

East Hill is a room.  "A north-south path rises here on the lower east end of the hill.  A sculpture labeled [Bird_Cage] is displayed here; a mass of metal bits on poles."

easthill_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]Up the hill to the west is the iconic red metal structure of Coyote's Call.[otherwise if sinkhole_size is 1]Much of the hill to the west is missing, including Coyote's call."  The description is "[distant_coyote][the west]."  Understand "iconic/red/metal/structure/coyote/coyote's/call/central/hill/tubes/bars" as easthill_view.  The printed name of easthill_view is "Coyote's Call";

Bird_Cage is in East Hill.  The description of Bird_Cage is "A set of twisted pieces of metal and stone, each sitting atop a metal pole (more LS TBD)."  The printed name of Bird_Cage is "'Bird and Cage'". Understand "bird/cage/pole/metal/stone", "bird and cage" as bird_cage.

North of East Hill is Water Sculpture.
South of Water Sculpture is East Hill.
Northeast of Top of Hill is Water Sculpture.
East of Beach Sculpture is Water Sculpture.
Northwest of East Hill is Water Sculpture.
Southwest of East Hill is Bewildering Bridges.

Section Water Sculpture

Water Sculpture is a room.  "Here at the northeast section of the park is a fountain-sculpture-thing in the shallow water of the reservoir.  Paths run from here south along the edge of the hill, southwest up the hill, and west along the beach."

water_sculpt_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]To the southwest atop the hill is the iconic red metal structure of Coyote's Call.[otherwise if sinkhole_size is 1]To the southwest, the iconic red metal of Coyote's Call is no longer visible."  The description is "[distant_coyote][the southwest]."  Understand "iconic/red/metal/structure/coyote/coyote's/call/central/hill/tubes/bars" as water_sculpt_view.  The printed name of water_sculpt_view is "Coyote's Call";

Section Sinkhole

Sinkhole is a room.  Sinkhole is down from Top Of Hill.  "[if sinkhole_size is 0]A few spiders have made their way to this lightless cavern, but all of them can only sense the immediate area of their webs.  Piecing together vibrations, then, instead of light, you sense slight vibrations from above, some sort of constant vibrations from deep below.[otherwise if sinkhole_size is 1]You're partway down a giant sinkhole that apparently has been growing under the park for some time.  Everything is caught in a state of falling:  dirt, grass, the red metal pieces of Coyote's Call, and the spiders themselves.[otherwise]You're partway down a giant sinkhole that apparently has been growing under the park for some time.  Everything from the top of the hill has finished falling into the blackness beneath you, but the walls continue to expand in every direction.".  Sinkhole is chasmy.

Instead of going down from Top Of Hill when sinkhole_size is 0, say "You're at the top of a hill; all directions are 'down' except west along the ridge to the playground."

Instead of going nowhere from Sinkhole, say "From here, you can sense spiders above and below you, but the ones below are outside of Lestar's sphere of influence."

Instead of going nowhere from Sinkhole when the noun is down, say "From here, you can sense spiders above and below you, but the ones below are outside of Lestar's sphere of influence."

falling_coyote is in the Void.  It is privately-named.  "[if the time of day is 10:58 AM]A spear of red metal from Coyote's Call falls through open space here.[otherwise]The majority of Coyote's Call is caught frozen near you as it tumbles."  The description is "[if the time of day is 10:58 AM]LS TBD:  maybe some writing on it that can only be discovered in this way?[otherwise]Somehow, the artistic chaos from before has been dissapated into just... normal chaos.  It's now just a pile of falling red metal."  Understand "coyote/coyote's/call/spear/red/metal" as falling_coyote.

Section Void and Nowhere

Void is a room.  "This is the off-stage area of the game.".  Void is liminal.

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

Instead of going to swimming, say "I'll have to think of a good reason for you to not swim, or to let you swim after all LS TBD."

Book Cast

Amaia is a woman in the Hyundai.  "Amaia is turned sideways in the driver's seat, grasping your hand and Lestar's.  Even frozen, she radiates intensity and movement."  The description of Amaia is "Amaia is a tall dark-haired woman with piercing but tired brown eyes. "
[Amaia is the Future part of the Moirai.  Amaia is Spanish/Basque for 'end place'.]

Lestar is a man in the Hyundai.  "Lestar's eyes are shut in calm concentration.  His relaxed hands hold yours and Amaia's, completing the triangle."  The description of Lestar is "Lestar is an old man with giant bushy white eyebrows that make it impossible for him to hide his emotions."  Understand "relaxed/triangle" as Lestar.
[Lestar is the Present part of the Moirai.  Lestari is Indonesian for 'Everlasting']

Lester is a man in the Hyundai.  Lester is scenery.
Instead of doing anything with lester, say "(It's 'Lestar', not 'Lester'.)"

The giant bushy white eyebrows are part of Lestar.  The description of the eyebrows is "Yeah, they're kind of hard to not just stare at."

Zora is a woman in the Hyundai.  "Your own face relaxes as you look at yourself from the outside.  Somehow, it's easier to see yourself this way than in the mirror."  The description of Zora is "You're pragmatically dressed in jeans, a 'Hu' T-shirt, and sneakers.  Your curls are somehow behaving today, probably because you didn't try to do anything with them this morning."  Understand "Zora" as Zora.
[Zora is the Past part of the Moirai.  Zora is Serbo-Croatian for 'Dawn'.]

The player is Zora.

The spiders are a privately-named plural-named people in the Hyundai.  "In the area, you can sense the collective presence of dozens of spiders."  The description of the Spiders is "The minds of the spiders are refreshingly simple, unlike most people's minds.  [if spidered]As long as there are more spiders where you want to go, you can move in that direction when connected to them[otherwise]You can [bold type]enter[roman type] them to explore an area[end if]."  Understand "spider/spiders", "dozens of spiders" as spiders.

Your consciousness is a woman in the Void.  The description of your consciousness is "Your consciousness has no literal form, but when you move across minds, you imagine your core self as a tight ball of sparks containing your memories."  Understand "core self", "tight ball", "tight ball of sparks", "ball of sparks", "ball/sparks" as consciousness.

Consciousness can be transforming.  Consciousness is not transforming.

To decide whether spidered:
	if the spiders enclose the player, yes;
	otherwise no;

To decide whether evacuated:
	[LS TBD:  set this when Jace evacuates the park.]
	no;

Before going somewhere when spidered:
	if going east from the parking lot:
		say "You spot a spider on the east wall, and through it, move your consciousness to the spiders on the other side."; 
	otherwise if going west from Sculpture By Lot:
		say "You spot a spider on the west wall, and through it, move your consciousness to the spiders on the other side."; 
	otherwise if going to swimming:
		continue the action;
	otherwise:
		say "You transfer your consiousness to a new group of spiders..."

Jace is an improper-named man in the ticket booth.  The printed name of Jace is "young man".  The description is "A young man with a [emotion of Jace] expression, a Quinlan Park employee vest, and a name tag reading 'Jace'[name_him_jace]." Understand "young/man/nametag/name/tag/vest/employee" as Jace.

Jace has a text called emotion.  The emotion of Jace is "friendly but bored".

To say name_him_jace:
	Now the printed name of Jace is "Jace";
	Now Jace is proper-named;
	
Instead of touching or entering Jace when disaster memory is not enclosed by the player:
	say "He does seem to have some sort of authority here, but without knowing what the problem is, you'd feel entirely too awkward connecting with him, even just to exchange surface thoughts."

Instead of touching or entering Jace:
	say "Yup!  This'll be a thing! -LS TBD."

Section Background Cast

To say playing_kids:
	if sinkhole_size is 0:
		say "Kids are playing, shrieking, and chasing each other up and around the platforms.[no line break]";
	if sinkhole_size is 1:
		if spidered:
			say "The kids are reacting to the disaster in different ways.  Most seem to be running away, but some are transfixed by the sight, and at least one seems to have been caught taking a step [italic type]towards[roman type] the sinkhole.[no line break]";
		otherwise:
			say "Most of the kids are running away, but some are transfixed by the destruction to the east, and a couple are taking hesitant steps towards the hole.[no line break]";

To say kid_description:
	if sinkhole_size is 0:
		say "The kids are all having a great time. LS TBD: hint at something here.[no line break]";
	otherwise:
		say "Only a few kids remain, either transfixed or crying.  A few are being snatched up by desperate parents. (LS TBD: more here, I think.)[no line break]";

Some kids are plural-named people in the Void.  "[playing_kids][no line break]".  The description of the kids is "[kid_description][no line break]".

Instead of entering the Kids, say "[if sinkhole_size is greater than 0]You feel there must be a way to get most people out of here all at once instead of trying to do it one kid at a time.[otherwise]Hoo boy.  As traumatic as it is for you to enter people's minds, you'd rather not inflict full access to an adult mind on a pre-teen, even if they're supposed to forget afterwards."


Park-goers are plural-named backdrop in the Void.  They are scenery.  The description is "[if sinkhole_size is 0]The park is well-attended today, with a variety of park-goers enjoying the day and the scenery.[otherwise if sinkhole_size is 1]The park-goers seem confused and can't quite figure out what's going on."  Understand "people/goers/crowd/crowds/park-goers", "park goers" as park-goers.

Instead of entering park-goers, say "Entering someone's mind is traumatic enough that you're not going to do it without some particular reason."


to say disaster_victims:
	if the location is Top of Hill:
		say "People are caught frozen in time but doomed:  a stumbling woman falling forward into the hole; a man clinging desperately to a cylinder of Coyote's Call as he and the cylinder plunge into the abyss"; 
	otherwise if location is Sinkhole:
		say "People are frozen in time, falling past you"


disaster_victims are plural-named privately-named people in the Void.  Understand "victims/people/goers/crowd/crowds/woman/man/cylinder", "park goers" as disaster_victims.  "[disaster_victims].".  The description is "These people are going to die if you can't figure out a way to help them."

Instead of touching the disaster_victims:
	say "You brace yourself as the panic from each person washes over you, and think back at them [italic type]<This isn't the end; I'll figure out a way to help; I'm so sorry.>[roman type]  If you do succeed, these people will never be in this position, but it feels right to do it anyway.  You think Lestar might understand."
	
Instead of entering disaster_victims:
	say "There's nothing these people can do to save themselves at this point in the loop; you'll have to help earlier in the cycle.";

When play begins:
	Move the Kids to the Playground;
	Move playground_view to Playground;
	Move park-goers backdrop to all parky rooms;


Book Actions

Instead of entering an open enterable thing (called the box) when spidered:
	if the box encloses the player:
		say "You're already in [the box].";
		rule fails;
	say "You transfer your consciousness into the spiders inside [the box].";
	move the spiders to the box;
	try looking instead.
	
Instead of exiting when the player is enclosed by a person (called host) and the player is enclosed by an open enterable thing (called the box):
	say "You transfer your consciousness into the spiders outside [the box].";
	move the spiders to the location;
	try looking instead.
	
Instead of touching someone (called the touchee) when the touchee encloses the player:
	say "You're already completely linked to [the touchee]."
	
Instead of touching the spiders when not spidered:
	say "The surface thoughts of the spiders are entirely instinctual, and refreshing in their simplicity.  You feel your own emotions being acknowledged in return, without them affecting the spiders in the slightest."

Instead of going outside when the player is enclosed by an open enterable thing:
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

A memory is a kind of thing.  Understand "memory" as a memory.

Instead of doing something other than examining or taking or giving with a memory:
	say "You can't interact with a memory like that."
	
Instead of giving a memory to a person:
	say "You'd rather not share that right now."

disaster memory is a memory in the Void.  The description is "A snapshot in your mind of Coyote's Call disappearing into a giant sinkhole in the middle of the park."  Understand "snapshot/disappearing/sinkhole" as disaster memory.


Book Preset events

sinkhole_size is a number that varies.  sinkhole_size is 0.


To carry out sinkhole appearing:
	now sinkhole_size is 1;
	now top of hill is chasmy;
	move disaster_victims to Top of Hill;
	move falling_coyote to Sinkhole;
	move park-goers backdrop to all parky rooms;
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
	say "LS TBD:  the sinkhole expands.";
	
To carry out loop resetting:
	now sinkhole_size is 0;
	now the time of day is 10:43 AM;
	now the emotion of Jace is "friendly but bored";
	move Jace to the ticket booth;
	move the Hyundai to the Void;
	move coyote's call to Top Of Hill;
	if the spiders are in the Hyundai:
		move the spiders to the Parking Lot;
	say "You feel the web of time time tighten beneath you, and with a rush, you slip backwards along it before it finally goes slack again, and you regain your hold.";
	try looking;
	say "[italic type]That's as far as I've coded, Testers!  So, besides general reactions to what you've seen so far, my question is:  what do you want to do next?  Thank you!  -LS[roman type]"

To carry out seeing the disaster:
	if the disaster memory is in the void:
		move disaster memory to player;
		say "This certainly seems to qualify as a disaster.  You take in your surroundings, determined to remember this moment.";

Every turn:
	carry out NPC actions;
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
	if the location of the player is a chasmy room or the location of the player is the playground:
		carry out seeing the disaster;
		
After going to a chasmy room:
	carry out seeing the disaster;
	continue the action;

After going to the playground:
	if sinkhole_size is greater than 0:
		carry out seeing the disaster;
	continue the action;

A person can be actually waiting or not actually waiting.  A person is usually actually waiting;

Instead of waiting when the time of day is 11:06 AM and the disaster memory is in the Void:
	say "You sense the web of time beginning to to tighten, and decide to keep hold of it, instead.  You still haven't figured out what actually happened here.";
	now the player is not actually waiting;
		
After going somewhere in a parky room for the first time:
	try looking;
	if the time of day is 10:53 AM:
		say "Whatever Amaia is worried about is apparently happening in this park.  You'll need to [bold type]wait[roman type] to advance the loop and see what's going on."

After going somewhere in a parky room:
	if the time of day is 10:53 AM and every parky room is visited:
		try looking;
		say "That's all the areas of the park.  Something's going to happen in one of them, so you'll need to [bold type]wait[roman type] to advance the loop and see what's going on.";
	otherwise:
		continue the action;

Book NPC Actions

An announcement is a kind of thing.  An announcement has a text called words.

announcing is an action applying to one thing.

Report an actor announcing (this is the report announcing rule):
	if the location of the player is chasmy:
		say "From somewhere in the non-destroyed park, you hear an announcement being made.";
	otherwise:
		if the location of the player is the location of the actor:
			say "You see [the actor] pull a hand-held microphone off the wall of the ticket booth.[line break][line break]";
		say "With a squawk, hidden speakers come to life, and you hear [an actor] say, '[the words of the noun]'[line break]"

The specification of the announcing action is
"The first action I defined for an NPC, so that Jace can announce stuff to the park."

jace1_announce is an announcement in the Void.  The words of jace1_announce are "Um, hi, I guess the park is... closed?  Everyone should get out, at least.  If you can!  If you can't, um, sorry, I'll see if I can get help.  I'll do that next.  But, like, right now, everyone else leave, so you don't, like, fall in the hole."
	
After jace announcing jace1_announce:
	now the emotion of Jace is "worried";
	continue the action;
	
After Jace announcing jace2_announce:
	now the emotion of Jace is "panicked";
	continue the action;

jace2_announce is an announcement in the Void.  The words of jace2_announce are "Oh shit everyone get out!  911[apostrophe]s on their way but that hole's getting larger!  Parking lot, everyone!"
	
A player's action awareness rule for someone announcing:
	rule succeeds;

A accessibility rule for someone announcing: rule succeeds.

Table of NPCs
NPC	Action table
Jace	Table of Jace's Actions

Table of Jace's Actions
time	doing
10:59 AM	Jace announcing jace1_announce
11:02 AM	Jace announcing jace2_announce
11:03 AM	Jace exiting
11:04 AM	Jace going south

To carry out NPC actions:
	repeat with N running from 1 to the number of rows in the Table of NPCs:
		let the NPC be the NPC in row N of the Table of NPCs;
		let the action table be the Action table in row N of the Table of NPCs;
		[say "[the NPC] [the action table]";]
		if there is a time corresponding to a time of the time of day in the action table:
			[say "Action found at [time of day].";]
			try the doing corresponding to the time of the time of day in the action table;



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