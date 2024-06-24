"Fate's Gallery" by Lucian Smith

[Other options:  Momentum Moirai, When the Moon Hits Your Eye, The Moirai, Zora of the Moirai, The Moirai Gallery]

The story headline is "An Interactive Story"

The release number is 0.

Include Response Assistant by Aaron Reed.
Include Hybrid Choices by AW Freyr.
Include Basic Screen Effects by Emily Short.

Use the American dialect, serial comma, and VERBOSE room descriptions.

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



Book Map

A room can be liminal, parky, or chasmy.  A room is usually parky.

Chapter offstage

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

Chapter Real Life

Section parking lot

Quinlan Park Parking Lot is a room.  "Scattered cars fill the parking lot[if the hyundai is in the parking lot], including [the Hyundai] you came here in[otherwise], but your Hyundai hasn't arrived yet[end if]. The parking lot is just off of 48th street to the west.   To the north is the entrance to the park.".  parking lot is liminal.

Looming sculpture is fixed in place. It is here.  "Looming over the parking lot to the east is a huge sculpture  whose details have yet to be decided (LS TBD).".  The description is "It's a sculpture looming over the east fence (LS TBD)."

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

An information booth is here.  It is a fixed in place enterable container.  The description is "The information booth is unmanned, but there's a [stack of fliers] resting on the sill."  Understand "booths" as the information booth.

A stack of fliers is part of the information booth.  The description is "The flier reads:[line break][line break][b]'Welcome to Quinlan Park!'[r][line break][line break]'Established in 1974, Dr. Robert Quinlan set aside this portion of his estate as a public park, commissioned the central 'Coyote's Call' sculpture from Wynona Locklear, and set up a trust to commission and rotate other art pieces at other sites throughout the park.  Enjoy your stay, and find out more below about our amazing artists!'[line break][line break]Below this is a cartoon map of the park, with small text blocks describing each of the sculptures currently on display:  the central Coyote's Call, then (clockwise from the southwest entrance): <something>, Fire and Forge, <something>, <water sculpture>, Bird and Cage, <bridges>, and <looming> (LS TBD: list the rest, and write the block text for each.  You should eventually be able to 'x bird and cage' and get this description if not next to the real thing, and probably 'look up bird and cage on map' to be more specific (not implemented yet))."
Understand "flier/flyer/sill" as stack of fliers.

Instead of taking the stack of fliers:
	if spidered:
		say "The spiders can't pick up a flier, and you couldn't take it with you even if they could.";
	otherwise:
		say "LS TBD: Determine what to do when in a human host."

[Instead of entering the information booth:
	if spidered:
]		

A ticket booth is here.  It is open, container, enterable, and fixed in place.  The description is "The ticket booth has a sign with a pay-what-you-want pricing scheme ranging from 'I just need more grass and art in my life - FREE' through 'I think you guys are amazing and would love to be listed as a patron - $1000'.[if Jace is enclosed by the ticket booth]  [A Jace] is manning the booth, taking donations from the park-goers." Understand "tickets/booths" as ticket booth;

Rule for writing a paragraph about the ticket booth:
	If Jace is in the ticket booth:
		say "You can see [a Jace] manning the ticket booth, but the information booth is empty.";
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

Fire_Forge is a fixed in place thing in Under Bridge.  The description of fire_forge is "A plaque in the ground identifies this sculpture as 'Fire and Forge'.  Long spines of twisting reddish metal emerge from the ground, reminiscent of flames." The printed name of fire_forge is "'Fire and Forge'".  Understand "fire and forge", "fire/forge/sculpture/simple/delicate" as fire_forge.  Fire_forge is privately-named.

fire_plaque is part of fire_forge.  The printed name of fire_plaque is "plaque".  fire_plaque is privately-named.  Understand "plaque" as fire_plaque.  The description of fire_plaque is "[i]Fire and Forge.  Metal and stain, 2007, Amelia Thomas.[line break][line break]The red metal spires most obviously evokes flames, but also passion, leading the majority of scholars to believe this to be representative of the relationship of Aphrodite and Hephaestus."

twisted metal is part of fire_forge.  The description of the twisted metal is "As you examine the twisted metal from different angles, you can almost imagine you see both swords and erotic imagery.  This would be consistent with the church of Aphrodite's reclamation of her dominion over both sex and war in its series of reforms in the 70[apostrophe]s and 80[apostrophe]s.  A small stamped icon of a cluster of dates would seem to indicate that the sculptor was part of the Inannan denomination."  Understand "Innana/Innanan/swords", "erotic imagery", "spines/spires/twisting/reddish/flames" as twisted metal.

cluster of dates is part of twisted metal.  The description is "(as in the fruit.)"  Understand "stamped/icon/fruit" as cluster of dates.

East of Path By Hill is Playground.

Section Playground

Playground is a room.  "You're at the top of the hill in the park.  This side has slides, swings, and a wide variety of brightly-colored [equipment].  The path curves from the south to the east side of the hill, along the ridge."

Some climbing equipment is fixed in place in the Playground.  The description is "It looks like a blast to play in.  Slides that cross over each other; several different kinds of swings; a roundabout; ropes and bars everywhere.[if not evacuated and sinkhole_size is 0]  Kids are playing on every surface."  Understand "slides/slide/swings/swing/bright/brightly-colored/brightly/colored/ropes/bars/roundabout/merry-go-round/spinner" as climbing equipment.

Instead of examining climbing equipment when spidered:
	if Wyatt is hidden and the location of Wyatt is the Playground:
		try examining Wyatt;

playground_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]Dominating the sky to the east are the red metal tubes and bars of Coyote's Call.[otherwise]Coyote's Call has fallen into the gaping and still-expanding sinkhole."  The description is "[distant_coyote][the east]."  Understand "iconic/red/metal/structure/coyote/coyote's/call/central/hill/tubes/bars" as playground_view.  The printed name of playground_view is "Coyote's Call";

North of Playground is Beach Sculpture.
Northeast of Playground is Beach Sculpture.
Northwest of Playground is Beach Sculpture.
Northeast of Path By Hill is Beach Sculpture.
East of Under Bridge is Beach Sculpture.

Section Beach Sculpture

Beach Sculpture is a room.  "An east-west path runs along the Brushstroke Reservoir beach. A large complicated structure sits here, fodder for some sort of puzzle (LS TBD).  To your south, you can see the playground on top of the hill."

beach_sculpt_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]To the southeast atop the hill is the iconic red metal structure of Coyote's Call.[otherwise]You can no longer see Coyote's Call to the southeast."  The description is "[distant_coyote][the southeast]."  Understand "iconic/red/metal/structure/coyote/coyote's/call/central/hill/tubes/bars" as beach_sculpt_view.  The printed name of beach_sculpt_view is "Coyote's Call";

Section Sculpture By Lot

Sculpture By Lot is a room.  "The path curves from the west to the southeast here, winding through a giant sculpture that looms over the fence by the parking lot.  The main hill of the park is to the north."

nearlot_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]Up the hill to the north are the red metal tubes and bars of Coyote's Call.[otherwise if sinkhole_size is 1]Bits of the Coyote's Call structure can still be seen as it falls into the sinkhole.[otherwise]You can no longer see Coyote's Call to the north."  The description is "[distant_coyote][the north]."  Understand "iconic/red/metal/structure/coyote/coyote's/call/central/hill/tubes/bars" as nearlot_view.  The printed name of nearlot_view is "Coyote's Call";

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
		say "Nothing remains of the hill or its contents.  In fact, I probably shouldn't let you be here (LS TBD).[no line break]"

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
		say "Art is a conversation between the artist, the subject, and the viewer, but as you take in the tubes and spires of this particular piece, you can't help but wonder what the current Vested of Coyote would make of it.  They've not gone public, so they could be anyone.  Could they be like you, newly awakened to their abilities, trying and failing (or succeeding?) to find answers in the church dedicated to the idea they represent?  Like Lestar, so self-assured and confident, understanding and perfectly molded to their place in the world?  Like Amaia, driven to prove themselves, to surpass their forebearers?  How would that color their response to this giant red mass of sculpted metal?[no line break]";
	otherwise:
		say "The entire hill gave way all at once, and Coyote's Call is now falling, its original configuration lost.  But you can't help thinking that it was at the epicenter of the collapse.[no line break]";

Coyote's Call is here.  "[what coyote's call looks like][no line break]".  The description is "[coyote's call's general description]".  Understand "coyote/call/coyote's/collection/giant/metal/tubes/beams/abstract/chaos/curve", "curve of the hill" as coyote's call.

Foliage is here.  It is scenery.  The printed name of foliage is "bushes and trees".  The description is "[foliage description].".  Understand "bushes/trees/chaos/foliage" as foliage.

To say foliage description:
	if sinkhole_size is 0:
		say "A variety of bushes and trees top the hill, most of which seem to have grown here since Coyote's Call was installed";
	otherwise:
		say "The falling bushes and trees add to the general chaos of the collapsing hill and structure";

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

falling_coyote is in the Void.  It is privately-named.  "[if the time of day is 10:58 AM]A spear of red metal from Coyote's Call falls through open space here.[otherwise]The majority of Coyote's Call is caught frozen near you as it tumbles."  The description is "[if the time of day is 10:58 AM]Etched into the base of the spear is a design that must have been buried in the dirt:  two crossed lines circumscribed by a rounded triangle[the spear design].[otherwise]Somehow, the artistic chaos from before has been dissipated into just... normal chaos.  It's now just a pile of falling red metal."    The printed name of falling_coyote is "falling pieces of Coyote's Call". Understand "falling/coyote/coyote's/call/spear/red/metal" as falling_coyote.

falling_coyote can be processed.  falling_coyote is not processed.

To say the spear design:
	if purple scarf  is processed:
		if falling_coyote is processed:
			say ".  It's definitely the same design that you remembered from the hidden woman outside the office complex";
		otherwise:
			move mysterious design memory to the player;
			say ".[lb]Wait.  That's the same design that you finally remembered from the purple scarf of the hidden woman outside the office complex from your first mission";

After examining falling_coyote:
	if the time of day is 10:58 AM:
		now falling_coyote is processed;



Chapter Mindscape

Section Mechanics

To say h-n-s intro:
	say "You release your hold of time, and let your mind connect to [maybe Wyatt], trying to focus on relatively innocuous memories, to keep him safe as he inevitably tumbles from memory to memory, getting his bearings...
[bstars]
You're telling Jace about the sinkhole, and he pulls the hand-held microphone from the wall, telling everyone there's a Vested emergency...
[bstars]
You're in the back seat of the Hyundai, Amaia driving and Lestar fiddling with the radio, when the voice of an announcer resolves through the static:  '...rts of a plume of smoke from sources up to ten miles away.  Given recent Vested activity in the area, civilians are being asked to leave the area.'  Amaia grimly depresses the accelerator, and you fret that you won't get there in time to...
[bstars]
Following your younger brother's lead, you aim your skis more directly downhill, feeling yourself pick up speed... and suddenly [maybe Wyatt]'s presence is gone.  You find yourself in control again, and stop the memory.  Where did he go?";

Hiding_and_seeking is a recurring scene.  Hiding_and_seeking begins when Wyatt is tagged.  Hiding_and_seeking ends when Wyatt is not tagged.  

The hiding start time is a time that varies.

When Hiding_and_seeking begins:
	say "[h-n-s intro]";
	move the player to skiing;
	now the hiding start time is the time of day;
	now the time of day is 7:32 PM;

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

Zora_mem1 is a privately-named scenery woman in Skiing.  The description is "You're skiing in rented equipment and are all bundled up in hand-me-down winter clothes that don't quite match, but are great at keeping you warm.  You have a determined expression on your face tinged with the exhilaration of going faster than you've gone before."  Understand "Zora/me/you/ski/skis/pole/poles/clothes/hand-me-down/hand-me-downs/face", "memory of myself", "memory of me", "memory of yourself" as Zora_mem1.  The printed name of Zora_mem1 is "the memory of yourself".  Instead of touching or entering Zora_mem1, say "You don't sense any one particular memory from connecting to the memory of yourself."

The crash is a memConnection in Skiing.  The printed name of the crash is "crash".  The description is "Hesitantly, you play the memory forward slightly and watch yourself as you tip left, overcorrect right, knock the front of your skis together, and tumble over them. [pb]For a second, as your legs fly over your head, you're a little kid again, learning how to somersault[reveal crash]."  The destination of the crash is Green Hill.  The dest_time of the crash is 1:12 PM.

The ski lift is a memConnection in Skiing.  The description is "You always enjoyed your time on the ski lift with your brothers.  Cameron even told you he was dating Micah when you were on the lift together once[reveal ski lift]."   The destination of the ski lift is Cailleach Ski Lift.  The dest_time of the ski lift is 8:42 PM.

The snow is scenery in Skiing.  The description is "Fine, cold, and powdery."  Understand "snow/fine/cold/powdery" as snow.  Instead of touching or entering the snow, say "You briefly sense other memories of snow throughout your life, but no one memory stands out enough to make a connection."

The crisp air is scenery in skiing.  The description is "The cold air was so dry it almost hurt your lungs, but it was invigorating on your cheeks as you flew down the mountain."  Understand "cold/air/dry/lungs/cheeks" as the crisp air.  Instead of touching or entering the crisp air, say "[first time]Happily, you have many memories of crisp mountain air, though this means trying to connect to any individual one is impossible.  [only]You briefly connect to the sensation of cold air on your face across all your memories, and feel invigorated."

Your younger brother is scenery in skiing.  The description is "Your younger brother Troy leapt off the ski lift in front of you as soon as it touched the top and sped down the hill, taunting you to keep up.  You almost did!"  Understand "troy/younger/brother" as your younger brother.  Instead of touching or entering your younger brother, say "This is exactly the sort of thing Troy did all the time; there's no one memory this reminds you of."


Section Green Hill room

Green Hill is a liminal room.  "The grassy hill behind your elementary school.  After your best friend Kitty taught you how, you spent every recess for a month [somersaulting] down this hill.[pb][list memexits from Green Hill][no line break]".  Green Hill is kidless.

somersaulting is a memConnection in Green Hill.  The description is "You remembered this frission of disorientation and exhilaration years later when you crashed skiing."  The destination of somersaulting is Skiing.  somersaulting is noticed.  The dest_time of somersaulting is 7:32 PM.

A grassy hill is scenery in Green Hill.  The description is "Soft grass and a gentle slope; perfect for somersaulting!"  Understand "green/grassy/hill/grass/soft/gentle/slope" as grassy hill.  Instead of touching or entering grassy hill, say "If Wyatt didn't come this way, you're not going to find him by delving further from here."

Kitty is a woman in Green Hill.  Kitty is scenery.  The description is "Kitty doesn't seem to be present in this version of your memory."  Instead of touching or entering Kitty, say "Without Kitty here, it's hard to connect to a particular memory.  Besides, if Wyatt didn't come this way, you wouldn't find him by continuing this direction."

Instead of doing somersaults when the location is Green Hill:
	say "Whee!"

Section Ski Lift room

Cailleach Ski Lift is a liminal room.  "Another memory; this one during one of your conversations with Cameron as you rode the Cailleach ski lift.[pb][list memexits from Cailleach Ski Lift ][no line break]". Cailleach Ski Lift is wyattful.

The lift seat is scenery in Cailleach Ski Lift.  The description is "There's nothing quite like the open privacy of a ski lift, drifting above the snow and the skiers below you."  Understand "ski/lift/seat/open/privacy" as the lift seat.  Instead of touching or entering lift seat, say "This is already your most prominent memory involving ski lifts."

Cameron is a memConnectPerson in Cailleach Ski Lift.  He is male.  "You and Cameron are sitting next to each other on the lift seat, Cameron earnestly telling you about Micah."  The description is "Cameron's face contains, in your memory, all of the emotions from that conversation at the same time.  The shyness of not wanting to tell you; the relief that he finally told someone; the joy in the way he describes Micah to you; the worry he has about eventually telling your folks[reveal Cameron]."  Understand "face/emotions/shyness/relief/joy/worry" as Cameron. The destination of Cameron is Arguing_about_Micah.  The dest_time of Cameron is 6:39 PM.

Micah_description is a memConnectPerson in Cailleach Ski Lift.  It is scenery and proper-named and male. The description is "When you eventually did meet Micah, it was like you had already met him, just from Cameron's vivid descriptions[reveal Micah_description]."  The printed name of Micah_description is "the description of Micah".  Understand "conversation/telling/micah/description", "description of micah" as Micah_description. The destination of Micah_description is Meet_Micah.  The dest_time of Micah_description is 4:22 PM.

Lift_Zora is a memConnectPerson in Cailleach Ski Lift..  She is female and scenery.  The description is "You feel the intensity with which you listened to Cameron that day, being happy for him not only because he was in love, but also because he found something he cared about that your parents hadn't pushed him into.  Knowing that was possible helped you accept being a Vested, even though you knew your parents would object[reveal Lift_Zora]."  Understand "me/you/yourself/myself/Zora", "memory of myself", "memory of me", "memory of yourself" as Lift_Zora.  The printed name of Lift_Zora is "the memory of yourself".  

The ski slopes are a plural-named memConnection in Cailleach Ski Lift.  The description is "Below the lift is the ski run where you crashed.  You're not sure if they're literally next to each other in real life, but your memory has smushed them together if not."  The destination of the ski slopes is Skiing.  The ski slopes are noticed and scenery.  Understand "ski/slopes/below/run/crash/crashed" as the ski slopes.  The dest_time of the ski slopes is 7:32 PM.



Section Meet Micah room

Meet_Micah is a liminal room.  "You finally met Micah five months after Cameron and he started dating.  The details of the theater you're next to are fuzzy, but his smile is perfectly clear.[pb][list memexits from Meet_Micah ][no line break]".  The printed name of Meet_Micah is "Meeting Micah".  Understand "meeting" as Meet_micah.

Micah is a memConnectPerson in Meet_Micah.  He is male and proper-named. "Micah is chatting breezily about something, his arm casually hooked around Cameron's[reveal Micah]."  The description is "Micah was already grinning as you walked up, but his face positively lit up when he noticed you.  You'd classify Micah's outfit that evening as 'studied casual':  nothing too fancy; nothing to flamboyant, but everything immaculately clean and wrinkle-free."  Understand "smile/faux/casual" as Micah.  Micah is noticed.  The destination of Micah is Cailleach Ski Lift.  The dest_time of Micah is 8:42 PM.

Meet_Cameron is a privately-named memConnectPerson in Meet_Micah.  He is male and proper-named.  "Cameron and Micah were here before you walked up, and Micah is chatting up a storm."  The description is "Cameron is laughing at something Micah said, and looks more relaxed than you've ever seen him[reveal Meet_Cameron]."  Understand "Cameron" as Meet_Cameron.  The printed name of Meet_Cameron is "Cameron".  The destination of Meet_Cameron is Arguing_about_Micah.  The dest_time of Meet_Cameron is 6:39 PM.

Meet_Zora is a scenery woman in Cailleach Ski Lift..  The description is "The main thing you remember about yourself that day is how un-selfconscious you felt.  Micah just seemed to have that effect on people."  Understand "me/you/yourself/myself/Zora", "memory of myself", "memory of me", "memory of yourself" as Lift_Zora.  The printed name of Lift_Zora is "the memory of yourself".  

talking is scenery in Meet_Micah.  The description is "You eventually learned that Micah talks more when he's nervous, but at the time you just appreciated how he covered the empty spaces with banter without making anyone feel left out."  Instead of touching or entering talking, say "You do have other memories of Micah, but if Wyatt didn't get here, he probably didn't go down that particular rabbit hole."

theater is scenery in Meet_Micah.  The description is "Maybe it was one of the historic theaters up in the north end?  You remember that Micah picked the place and the movie, and that you liked the movie.  Whatever it was."  Instead of entering or touching the theater, say "You don't have any other memories associated with this theater."

Section Micah Argument room

Arguing_about_Micah is room.  "In this memory, you're in your family's kitchen, in the aftermath of Cameron telling your parents about Micah.  The [dripping faucet] punctuates this new target of their insistence on perfection, and adds an inconsistent drumbeat to the familiar refrain of how you all failed, and needed to be better about everything.[pb][list memexits from Arguing_about_Micah ][no line break]".   The printed name of Arguing_about_Micah is "Arguing about Micah".

Angry_Cameron is a memConnectPerson in Arguing_about_Micah.  He is male and scenery and proper-named and noticed.  The description is "Cameron changed in this moment.  He stood taller and straigher than he had in previous encounters with your parents, and he kept that.  You think your father respected that, at least, about this moment."  Understand "Cameron/changed/taller/straighter" as Angry_Cameron.  The printed name of Angry_Cameron is "Cameron".  The destination of Angry_Cameron is Cailleach Ski Lift.  The dest_time of Angry_Cameron is 8:42 PM.

The dripping faucet is scenery in Arguing_about_Micah.  The description is "Your dad turned away from the dishes to argue with Cameron, and didn't manage to turn the faucet off entirely when he did.  The irregular drips drove you crazy, and you couldn't get around your father to turn it off again.  You briefly considered finding the house's shutoff valve just to get it to quit, but of course, you couldn't leave Cameron here undefended."  Instead of touching or entering dripping faucet, say "Fortunately, that particular annoyance doesn't seem to lead to a series of other annoyances, at least not in your current mental state."

The argument is a memConnection in Arguing_about_Micah.  "The argument hangs around the kitchen like a cloud."  The description is "You and Cameron knew telling your parents about Micah would start an argument, because everything important always started arguments.  But truth be told, you both thought they'd try to argue Cameron out of being gay, but they didn't care about that in the slightest.  Instead, they tried to argue Cameron out of dating Micah.  Didn't he live down by that old bowling alley?  And he's studying music; isn't that kind of a waste?  You should have told us you were gay earilier; we could have introduced you to Mrs. Farthington's son; he's gay and just went off to Harvard.  But he'll still be there if you get in; you know you only have a few more months left to apply...

Cameron was clearly angry, but bless him, he didn't back down.  [one of]You didn't help much, but at least you were there.

Wait.  Lestar keeps telling you that you give yourself too little credit.  Maybe... maybe you actually did more?[or]You didn't say a lot, but you stepped in with something every time Cameron's arguments flagged.  And now that you're looking at this a bit more clearly, you remember the grateful looks he gave you when you did[reveal the argument].[stopping]".  The destination of the argument is Your Own Kitchen Argument.  The dest_time of the argument is 6:45 PM.

Section Your Argument room

Your Own Kitchen Argument is a liminal room.  "Eight months ago.  You were just back from your first Vested crisis at the Northfield ffice complex.  You were furiously scrubbing dishes, trying to vicariously wipe away the pain and anger and darkness that clung to you from the shooter's mind. [Kitchen_mom] came in to talk to you about it after listening to the news report, ostenstibly to be sympathetic but somehow explaining that everything you did was wrong, and how you could have done everything better."
The destination of Lift_Zora is Your Own Kitchen Argument.  The dest_time of Lift_Zora is 6:45 PM.

Kitchen_mom is a woman in Your Own Kitchen Argument.  She is scenery and proper-named.  The printed name of Kitchen_mom is "Your mom".  The description is "Perfectly dressed, even at 7:00 at night in her own house.  Tight black curls, dyed to hide the gray, with extensions, of course."  Understand "mom/black/curls/dyed/gray/extensions" as Kitchen_mom.  Instead of touching or entering Kitchen_mom, say "This sort of scenario with your mother is entirely too common to be able to link to a specific memory."

Kitchen_Zora is a memConnectPerson in Your Own Kitchen Argument.  She is female and scenery and proper-named. The printed name of Kitchen_Zora is "the memory of yourself".  The description is "You were tired, angry, elated, and worried all at once, but all your mom seemed to see was a bundle of mistakes.  You had just been through so much[reveal Kitchen_zora]." Understand "me/you/myself/yourself/zora/tired/angry/elated/worried/scrubbing/dishes", "memory of myself", "memory of me", "memory of yourself" as Kitchen_zora.


The another argument is a memConnection in Your Own Kitchen Argument.  "The argument hangs around the kitchen like a cloud."  The description is "You desperately wanted to share with your mom how scared you had been; how dreadful the shooter's mind was; how satisfying it was to reweave fate to save so many people; how the images of so many dead and dying still haunt you, even though you unwove their deaths from existence.  But every time you admitted any weakness; any mistake; any regret, your mother pounced on it like a hawk, tearing to pieces any connection or comfort with her endless litany of what to do next time, how to improve, why would you even[reveal Another argument]."  The destination of the Another argument is Arguing_about_Micah.  The printed name of Another argument is "argument".  The dest_time of another argument is 6:39 PM.

Section First Mission room

Outside the Office Complex is a liminal room.  "Eight months ago, morning.  Everything frozen in time, your perspective distributed across hundreds of spiders.  Amaia's prophecy had warned the three of you with barely enough time to get there as the first shot was fired; without your ability to extend the Moirai Bubble into the past, the earliest victims would have surely died."  The destination of Kitchen_Zora is Outside the Office Complex.  The dest_time of Kitchen_Zora is 8:21 AM.

A frozen bullet is in Outside the Office Complex.  "A bullet hangs in the air, frozen in its trajectory."  The description is "Small enough that you didn't see it your first time though, the bullet hangs in the air, aimed directly at the young man on the sidewalk."  Instead of touching or entering the frozen bullet, say "You couldn't weave things such that the bullet was never fired, but you eventually managed to find a way to get it to miss its target.  Wyatt isn't hiding inside the bullet."

Passersby are people in Outside the Office Complex.  "Four passersby had the misfortune of happening to be walking by this office at this moment."  The description is "The first was a young man named Paul, the second, a middle aged woman named Bethany, and the third, an older gentleman named Nat.  Paul was the first to get shot, but you watched them all die too many times before finally weaving them safe[note the fourth]."  Understand "four/passersby/pedestrians" as passersby.  Instead of touching or entering the passersby, say "You can't connect to all four of them at once; you'll have to pick Paul, Bethany, or Nat[list the fourth]."

To say note the fourth:
	if the mysterious woman is in Outside the Office Complex, say ".  The fourth is a woman you only now realize was there, wearing a purple scarf and eyeing a spider".
	
To say list the fourth:
	if the mysterious woman is in Outside the Office Complex, say ".  Or the fourth mysterious woman".

Paul is a man in Outside the Office Complex.  He is scenery.  The description is "Paul was trying to make it from his dorm room at the university to his intership at the office.  Never heard the shot that killed him (originally) and simply wouldn't believe he was in danger when you visited him before this moment."  Instead of touching or entering Paul, say "Paul invariably fell into one of your early dumb memories the first time you connected with him, and after that just thought you were an idiot, no matter what you tried.  Wyatt isn't hiding inside Paul."  Understand "first/young/man/Paul/student/person/passerby" as Paul.

Bethany is a woman in Outside the Office Complex.  She is scenery.  The description is "Bethany was here for an interview, and immaculately dressed in a GET DESCRIPTION FROM SARA."  Instead of touching or entering Bethany, say "Bethany was pretty tolerant of your requests, but kept telling you to 'just' do things that were impossible, and got testy when you refused.  Wyatt isn't hiding inside Bethany."  Understand "second/middle/aged/woman/Bethany/interview/interviewee/person/passerby" as Bethany.

Nat is a man in Outside the Office Complex.  He is scenery.  The description is "Nat's a retired army vet, who was in the area just because it was a place he hadn't walked yet."  Instead of touching or entering Nat, say "It took a few loops before you worked up the courage to connect to Nat, but it was totally worth it; he had invaluable tactical advice for you.  Wyatt isn't hiding inside Nat."  Understand "third/old/older/gentleman/man/retired/army/vet/person/passerby" as Nat.

The_fourth is a privately-named woman in Outside the Office Complex.  She is scenery.  The description is "Wait... there *were* four people walking by that morning, but you only ever interacted with three of them.  Who was the fourth person, and why didn't you notice them at the time?[pb]You hear a young boy's giggle echo across your memory[swap the fourth woman]." Understand "fourth" or "fourth person" or "fourth passerby" as the_fourth.

Instead of touching or entering the_fourth, try examining the_fourth.

To say swap the fourth woman:
	Move the_fourth to the Void;
	Move the mysterious woman to Outside the Office;
	Move the passersby to Outside the Office;
	Move the frozen bullet to Outside the Office;

A mysterious woman is a woman in Void.  "Somehow, you never directly noticed the fourth passerby before, but now that you know she was there, you can mostly see her in your memory."  The description is "[one of]You struggle, trying to clarify the fourth person in your memory.  It's a woman, you can't rememer how old, wearing a scarf and looking intently at... a spider.  At you[or]The fourth person is a woman of indeterminate age, wearing a scarf, and looking intently at one of the spiders you were inhabiting[stopping]."  Understand "fourth/person/passerby/woman/mysterious" as the mysterious woman.

A purple scarf is a thing carried by the mysterious woman.  The description is "Focusing intently on your memory, you think you can make out a design on the scarf: two crossed lines circumscribed by a rounded triangle[the scarf design]."

the purple scarf can be processed.  The purple scarf is not processed.

To say the scarf design:
	if falling_coyote is processed:
		if purple scarf is processed:
			say ".  It's definitely the same design that you saw on the unearthed base of the bit of Coyote's Call you caught as it plunged into the sinkhole";
		otherwise:
			move mysterious design memory to the player;
			say ".[lb]Wait.  That's the same design that you saw on the spear of metal from Coyote's Call";

After examining the purple scarf:
	now the purple scarf is processed;


Office_Zora is a scenery woman in Outside the Office Complex.  The printed name of Office_zora is "the memory of yourself".  The description is "Despite practicing for weeks, you were still disoriented from the ritual, and unsure how on earth 'entering people's minds and talking to them' was going to help.  But you were bolstered by Lestar's confidence and Amaia's competence, determined to do your best."  Understand "me/you/yourself/myself/Zora/spider/spiders", "memory of myself", "memory of me", "memory of yourself" as Office_Zora.  Instead of entering or touching Office_Zora, say "The moment this memory reminds you most of is right now."

Instead of touching or entering the mysterious woman, carry out ending the mind maze.

To carry out ending the mind maze:
	say "Hesitantly, you reach out to connect with the mysterious woman... and just as you do, Wyatt leaps out, laughing.  'You found me!' he exclaims, laughing even more because he knows he startled you.  'I saw her in the hiding zone so I hid in there with her!'[pb]'What's the 'hiding zone'?' you ask.[pb] 'It's the place you only see when you're hiding!  That's the secret to hide and seek.  When you're looking, you have to pretend you're hiding.  Then you see the hiding zone!'[pb]You shake your head, because that made entirely too much sense.  You look over at the frozen image of the woman in your memory, and wonder what it was that created 'the hiding zone' around her.  Some other Vested power?[pb]You sigh.  'Wyatt, I found you; that means you have to stop hiding and go with your parents; they're worried about you.[pb]'Aww, OK,' says Wyatt.  'See you around, spider lady!'  And...he's gone from your head entirely.";
	now the time of day is the hiding start time;
	move the hiding memory to the player;
	now Wyatt is revealed;
	Now Wyatt is not tagged;
	move the player to the spiders;
	move the spiders to the Playground;
	[Set up Wyatt leaving]
	blank out the whole of the Table of Wyatt's Actions;
	choose a blank row in the Table of Wyatt's actions;
	now the time entry is the hiding start time minus one minute;
	now the doing entry is Wyatt emerging;
	choose a blank row in the Table of Wyatt's actions;
	now the time entry is the hiding start time;
	now the doing entry is Wyatt going south;
	choose a blank row in the Table of Wyatt's actions;
	now the time entry is the hiding start time plus one minute;
	now the doing entry is Wyatt going south;
	choose a blank row in the Table of Wyatt's actions;
	now the time entry is the hiding start time plus two minutes;
	now the doing entry is Wyatt going south;
	[Set up Wyatt's parents leaving]
	repeat through the Table of couple's Actions:
		if the time entry is greater than the hiding start time minus two minutes:
			blank out the whole row;
	choose a blank row in the Table of couple's actions;
	now the time entry is the hiding start time;
	now the doing entry is couple going south;
	choose a blank row in the Table of couple's actions;
	now the time entry is the hiding start time plus one minute;
	now the doing entry is couple going south;
	choose a blank row in the Table of couple's actions;
	now the time entry is the hiding start time plus two minutes;
	now the doing entry is couple going south;
		
[	[Now set up the kids and people evacuating in response to the announcement:]
	repeat through the Table of kids actions:
		if the doing entry is kids evacuating:
			blank out the whole row;
	if there is a time corresponding to a time of the time of day in the Table of kids actions:
		[say "Action found at [time of day minus one minute].";]
		now the doing corresponding to the time of the time of day in the table of kids actions is kids evacuating;
]	
	



Section Hiding Wyatt

Faint_wyatt is a backdrop.  It is in Skiing, Cailleach Ski Lift, and Your Own Kitchen Argument.  The description is "You can tell Wyatt has been through here, though you can't tell which memory connection he used when he left."  Understand "wyatt/faint/echo" as faint_wyatt.  Instead of touching or entering faint_wyatt, say "Wyatt isn't here for you to connect with, but he did come this way."

No_wyatt is a backdrop.  No_wyatt is in Green Hill and Meet_Micah and Arguing_about_Micah.  The description is "Wyatt doesn't seem to have visited this memory at all."  Understand "wyatt" as No_wyatt.  Instead of touching or entering No_wyatt, say "Wyatt isn't here for you to connect with, but he did come this way."

Hiding_wyatt is a man in Outside the Office Complex.  He is scenery.  The description is "Wyatt is here, somewhere.  Now you just have to figure out what (or who) he's hiding inside."  Understand "wyatt/young/boy/giggle/echo/hiding" as Hiding_wyatt.  Instead of touching or entering Hiding_wyatt, say "You're trying to find him!"


Section people defaults and stuff

The intro-page of Zora_mem1 is the blank page.
The intro-page of Kitty is the blank page.
The intro-page of Kitchen_mom is the blank page.
The intro-page of Passersby is the blank page.
The intro-page of Paul is the blank page.
The intro-page of Bethany is the blank page.
The intro-page of Nat is the blank page.
The intro-page of The_fourth is the blank page.
The intro-page of mysterious woman is the blank page.
The intro-page of Office_Zora is the blank page.
The intro-page of Hiding_wyatt is the blank page.

The mind-touch of Zora_mem1 is "Covered by an 'instead' rule."
The mind-touch of Kitty is "Covered by an 'instead' rule."
The mind-touch of Kitchen_mom is "Covered by an 'instead' rule."
The mind-touch of Passersby is "Covered by an 'instead' rule."
The mind-touch of Paul is "Covered by an 'instead' rule."
The mind-touch of Bethany is "Covered by an 'instead' rule."
The mind-touch of Nat is "Covered by an 'instead' rule."
The mind-touch of the_fourth is "Covered by an 'instead' rule."
The mind-touch of mysterious woman is "Covered by an 'instead' rule."
The mind-touch of Office_Zora is "Covered by an 'instead' rule."
The mind-touch of Hiding_wyatt is "Covered by an 'instead' rule."



Book Cast

Section Amaia

Amaia is a woman in the Hyundai.  "Amaia is turned sideways in the driver's seat, grasping your hand and Lestar's.  Even frozen, she radiates intensity and movement."  The description of Amaia is "Amaia is a tall dark-haired woman with piercing but tired brown eyes. "
[Amaia is the Future part of the Moirai.  Amaia is Spanish/Basque for 'end place'.]

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
	say "With Lestar anchoring everything in the present, you can't interact with Amaia physically.  You could in theory [b]enter[r] her mind, but she is [i]entirely[r] too intimidating for that.  Even [b]touching[r] her mind to connect your surface thoughts is kind of beyond the pale."

Instead of entering Amaia:
	say "You can't imagine actually entering Amaia's consciousness and giving her full access to your mind.  You'd never be able to look her in the eye again, and you have to work with her."
	
The intro-page of Amaia is the blocked page.
	
The mind-touch of Amaia is "Amaia still intimidates you, and you're pretty sure her surface thoughts would just be 'Zora!  Do your job already!'".

	
Section Lestar

Lestar is a man in the Hyundai.  "Lestar's eyes are shut in calm concentration.  His relaxed hands hold yours and Amaia's, completing the triangle."  The description of Lestar is "Lestar is an old man with giant bushy white eyebrows that make it impossible for him to hide his emotions."  Understand "relaxed/triangle" as Lestar.
[Lestar is the Present part of the Moirai.  Lestari is Indonesian for 'Everlasting']

The mind-touch of Lestar is "Reaching out with your mind, you brush Lestar's surface thoughts with your own.  Instantly, you feel the thought, 'Hi, Zora!  Just figure out what's going on, then get people to safety.  You can do this.'  It must have been waiting for you, which in retrospect you feel you should have anticipated.  He's an old Vested, after all, and has been doing this for years.";

Instead of entering Lestar:
	say "[i]Entering Lestar's mind will be the main hint system of the game, I think, but I haven't tried to do anything with it yet.[r]"
	
The intro-page of Lestar is the blocked page.
	
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
	say "Lestar has anchored himself in the present, with that anchor extended slightly into the past and future, with your and Amaia's help.  Until he unanchors himself again, you cannot interact with him physically.  You have at times [b]entered[r] his mind, but as another Vested, he remembers everything.  [b]Touching[r] his mind would connect your surface thoughts, which is a little safer."

The giant bushy white eyebrows are part of Lestar.  The description of the eyebrows is "Yeah, they're kind of hard to not just stare at."

Lester is a man in the Hyundai.  Lester is scenery.  The mind-touch of Lester is "Blocked."  The intro-page of Lester is the blocked page.
Instead of doing anything with lester, say "(It's 'Lestar', not 'Lester'.)"

Section Zora

Zora is a woman in the Hyundai.  "Your own face relaxes as you look at yourself from the outside.  Somehow, it's easier to see yourself this way than in the mirror."  The description of Zora is "You're pragmatically dressed in jeans, a 'Hu' T-shirt, and sneakers.  Your curls are somehow behaving today, probably because you didn't try to do anything with them this morning."  Understand "Zora" as Zora.
[Zora is the Past part of the Moirai.  Zora is Serbo-Croatian for 'Dawn'.]

The player is Zora.

Zora can be transforming.  Zora is not transforming.

Instead of doing anything other than looking or examining or entering or waiting or touching or physical Lestaring or physical Amaiaing or taking inventory or choosing when the player is Zora:
	say "While frozen, you can [b]enter[r] the minds around you, and you're aware of your surroundings, but can't do anything physical."

The mind-touch of Zora is "Your thoughts echo back at you."

Instead of entering Zora when the player is enclosed by a person (called host):
	say "If you returned to yourself now, you'd break the past part of the loop. You'd need to get that all squared away first."

The intro-page of Zora is the blocked page.

Section spiders

The spiders are a privately-named plural-named people in the Hyundai.  "In the area, you can sense the collective presence of dozens of spiders."  The description of the Spiders is "The minds of the spiders are refreshingly simple, unlike most people's minds.  [if spidered]As long as there are more spiders where you want to go, you can move in that direction when connected to them[otherwise]You can [b]enter[r] them to explore an area[end if]."  Understand "spider/spiders", "dozens of spiders" as spiders.

The mind-touch of the spiders is "The surface thoughts of the spiders are entirely instinctual, and refreshing in their simplicity.  You feel your own emotions being acknowledged in return, without them affecting the spiders in the slightest."

Your consciousness is a woman in the Void.  The description of your consciousness is "Your consciousness has no literal form, but when you move across minds, you imagine your core self as a tight ball of sparks containing your memories."  Understand "core self", "tight ball", "tight ball of sparks", "ball of sparks", "ball/sparks" as consciousness.

The intro-page of spiders is the blocked page.
The intro-page of consciousness is the blocked page.
The mind-touch of consciousness is "Your thoughts echo back at you."

Consciousness can be transforming.  Consciousness is not transforming.

To decide whether spidered:
	if the spiders enclose the player, yes;
	otherwise no;

To decide whether Wyatted:
	if Wyatt encloses the player, yes;
	otherwise no;

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
		say "You transfer your consciousness to a new group of spiders..."

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

Section Jace

Jace is an improper-named man in the ticket booth.  The printed name of Jace is "young man".  The description is "A young man with a [emotion of Jace] expression, a Quinlan Park employee vest, and a name tag reading 'Jace'[name_him_jace]." Understand "young/man/nametag/name/tag/vest/employee" as Jace.

Jace has a text called emotion.  The emotion of Jace is "friendly but bored".

To say name_him_jace:
	Now the printed name of Jace is "Jace";
	Now Jace is proper-named;

Jace_init_touch is always "You reach out with your mind to touch [the Jace]'s mind, trying to keep your own surface thoughts focused more on curiosity than the underlying worry.  [The Jace], in turn, turns out to be mulling over the question of what might have happened in the rest of the series if Akio had died in episode 2, instead of just being injured."

Jace_post_enter_touch is always "You touch [the Jace]'s mind, trying to convey your gratefulness.  He's still mostly thinking, 'An Actual Vested!  And me!'".

The mind-touch of Jace is Jace_init_touch.

Instead of touching or entering Jace when disaster memory is not enclosed by the player:
	say "You'll have to enter his mind at some point, but you don't know [i]why[r] yet, or how he could help.  Until you do, you need to do more reconnaisance."

[Instead of touching or entering Jace:
	say "Yup!  This'll be a thing! -LS TBD."]
	
The intro-page of Jace is J1.
	
J1 is a page.  "[if J1 is not visited]You take a deep (metaphorical) breath.  You've put it off as long as you could, but if you're going to be able to do anything here, this is the only way.


You let go of time, and enter [the Jace]'s mind instead.

[end if][visit J1]You hunker down mentally as [maybe Jace]'s consciousness and yours intertwine.  You've trained enough that you can give Jace some mental privacy, but untrained, he immediately carreens painfully through your thoughts and memories following connections that happen to resonate, and you're pulled along.
[bstars]You're racing to the park, Amaia in the throes of a prophecy but expertly navigating through traffic anyway; her hands in a death lock on the steering wheel of the Hyundai--
[bstars]The Hyundai looking so...normal, sitting in your high school's the parking lot as you and your parents approach the intense woman and old man standing next to it, here because..."
The cdesc is "Start a new conversation with Jace."  It is for reset-conversation-or-not.

to say visit J1:
	now J1 is visited.

To say J2:
	say  "[stars]Homework finished, you're gazing across the room at Duncan, and his hair, and his shoulders, and the way he laughs, and your mind starts to wander, and then your mind starts to ACTUALLY WANDER and"

J2a is a page. "[J2]".  The cdesc is "oh no".  It is for J1.
J2b is a page. "You continue to be swept along in your memory.[J2]".  The cdesc is "Try to break the connection."  It is for J1.

To say J3:
	say "and you're suddenly READING EACH OTHERS MINDS and he KNOWS and [i]Oh, geez, I'm so sorry I don't even[r] HORRIFIED and SCARED and sees you across the room eyes glazed over [i]Who even are you and how[r] and yells".

J3a is a page.  "[J3]". The cdesc is "'Jace, no!'"  It is for J2a and J2b.
J3b is a page.  "You continue to be swept along in your memory.[lb][J3]". The cdesc is "Try to break the connection."  It is for J2a and J2b.

J4a is a page.  "[i]I'm a Vested, and our minds-- [r]you start to explain, but the memory continues to sweep forward...

yells 'Zora!' and you--[i]Holy crap, you're a Vested?!  That is so cool!

[r]Blessedly, the memory starts to fade, replaced by Jace's excitement.

[i]Oh, man, 'Concrete Sinners' has Vested in it, and the writers handle it so well, it's like they always pick the best mythos to draw from.  I've always wondered what it was like to be a Vested; I read President Calder's memoir like eight times and watched the 'Forged in Flames' documentary about him twice, but they both seemed a little glossed-over, like they were both just painting him as kind of a generic hero.  And the ancient myths are more the stories people told about Vestedness, instead of the actual Vested, if that makes any sense.  Is this... [r]He looks around, but the memory is gone.  [i]...your origin story?[r]".  The cdesc is "Try to explain.".  It is for J3a and J3b.

J5a is a page.  "[i]Wow, yeah, but still!  Powers of the ancients, passed on to the next-born for thousands of years!  Who did you get?  You're not Wisdom, are you?  Angiras, Kratu, Athena?  We go to their church!  A Kratu denomination; my dad says they have fewer extremists.

[r]You sigh, and answer his question.  [i]I'm 'the Past', basically.  Clotho, Urðr, Laima; those guys.  It sort of fits; memories are kind of my thing.  But I can't decide anyone's fate; that's something my stupid church made up.[r]  You feel Jace startle at the idea of a Vested not liking their own church, and feel bad for shaking his worldview.  A little.[pb][i]Wow, OK!  I guess I never thought about.... that.[r]  You feel a small blast of awkwardness from his mind, but he presses on.[i]  So, the Past!  And memories!  [if the time of day is less than 10:59 AM]Do you need one of my old memories or something?[otherwise]Oh!  The... whatever the problem is in the park![end if][r]".  The cdesc is "'Kind of, I guess.  It's, uh, not been easy.'".  It is for J4a.

J4b is a page.  "You continue to be swept along in your memory.

yells 'Zora!' and you finally snap back to yourself again, and everyone's looking at Duncan and Duncan is looking at you and your eyes plead but he smirks [i]Oh, geez, I'm so sorry, I don't need to see this, I should be--[r][bstars]You're in a meadow by a lake, your consciousness distributed in hundreds of spiders, letting time slip by, and totally at peace.  A breeze plays across the meadow and you feel it in each web in turn.". The cdesc is "Try to break the connection." It is for J3a and J3b.

J5c is a page.  "Jace quietly waits in the memory of the meadow with you.  His excitement and wonder leak everywhere, making the memory not quite as calming as it usually is.  It's still a nice break from reliving the most embarassing moment of your entitre life, so there's that.

Finally, you speak.  [i]Thanks for finding this place.  There aren't many who find their way here, so it's nice.

I... assume there aren't many who find their way to 'the most embarassing moment of your life', either, so sorry about that,[r] Jace responds.  Which means he's one of the people who also hears your inner monologue.  [i]Yeah,[r] he confirms.   Well, OK, then.

You both appreciate the meadow for a bit more.  [i]So, you're a Vested?  [r]Jace asks.  [i]Power of the ancients, passed on to the next-born for thousands of years?  [r]Feeling confirmation from you, he can't contain his delight.  [i]That's so cool!  And you can go into people's heads!  And into spider's heads!  I can't even imagine how you manage to stitch together a coherent perspective from all of them at once.  I've read stories, of course, but none of them even hinted at abilities like this![r]".  The cdesc is "Appreciate the meadow for a bit.".  It is for J4b.

J6a is a page.  "[i]Well, sure, [r]Jace replies, [i]but you can still do stuff nobody else can!  Not even other Vested!  [r]You can't help but think about the weight of the burden that having this job has been, and Jace winces.  [i]Sorry, yeah, the extra responsibility must be hard.  But, you know, if you weren't there, more people would be hurt?  Because of you, people have better lives, right?

[r]He's... trying to cheer you up.  You were worried about being judged, and you're being cheered.  It didn't really work, but it's sweet.  [i]Look, I know there's something you need my help for; you've avoided asking twice now.  What do you need?  I'm happy to help.[r]".  The cdesc is "'It's not actually that glamourous.'".  It is for J5c.


J5b is a page.  "[i]Right!  OK, yes.  You're probably here for a reason.  Talking to me!  In my head!  This is so--sorry! I mean, right.  Look, I can be calm!  I mean, not look, I guess.  Think?  Feel?  Was I being rude to say look?  I've never interacted with a Vested before; I didn't even know there was one in the state!  And now there's one in my head!  Eeee![r]". The cdesc is "'Jace, I need your help.'".  It is for J4a, J4b, and J5c.


J7_evacuated is a page.  "You show Jace the snapshot in your mind of the sinkhole.  [i]Oh, no!  [r]Jace says, horrified.  [i]Those poor people!  I should've evacuated the park earlier!  I don't...wait!  You're the Past, right?  You can take me to the past, and I can evacuate the park before it collapses![r]".  The cdesc is "Show him the memory of the sinkhole.".  It is for J5a, J5b, J6a, and J5d.  It is inactive;

J7_earlier is an end-page page.  The cdesc is "Show him the memory of the sinkhole.".  It is for J5a, J5b, J6a, and J5d.

A page-toggle rule for J7_earlier:
	say "You show Jace the snapshot in your mind of the sinkhole.  [i]Oh, man, is that what's about to happen?  I better evacuate the park![r]";
	try jace announcing jace3_announce;
	repeat through the Table of Jace's Actions:
		if the doing entry is Jace announcing something:
			blank out the whole row;
		otherwise if the doing entry is Jace announcing jace2_announce:
			blank out the whole row;
	[Set up Jace doing this next time round:]
	if there is a time corresponding to a time of the time of day minus one minute in the table of Jace's actions:
		[say "Action found at [time of day minus one minute].";]
		now the doing corresponding to the time of the time of day minus one minute in the table of Jace's actions is jace announcing jace3_announce;
	otherwise:
		[say "No previous action found at [time of day minus one minute].";]
		choose a blank row in the Table of Jace's actions;
		now time entry is the time of day minus one minute;
		now doing entry is (Jace announcing jace3_announce);
	[Now set up the kids and people evacuating in response to the announcement:]
	repeat through the Table of kids actions:
		if the doing entry is kids evacuating:
			blank out the whole row;
	if there is a time corresponding to a time of the time of day in the Table of kids actions:
		[say "Action found at [time of day minus one minute].";]
		now the doing corresponding to the time of the time of day in the table of kids actions is kids evacuating;
			
	


The resume-page of Jace is J7_earlier.

J_reset is an end-page page.  The cdesc is "Reset to the beginning of the loop.".  It is for J7_evacuated.

J_continue is an end-page page.  "[jace_loop_explanation].  [i]So, we have some time.  Time is the one thing we have plenty of.  Would you mind looking around with me before the loop resets?

[r]Jace hesitates, and you sense him instinctively sifting through your thoughts and memories, making sure he can trust you.  You try to relax, even as you get flashes of times you've failed people, fortunately interspersed with times things have worked out.

[i]Ack, sorry!  Again!  [r]Jace sputters.  [i]You're a perfectly normal person, and your intentions are good, and let's do this thing.  Only let's not jump into the sinkhole; that sounds painful even if it gets overwritten.

Deal, [r]you reply.  OK.  Time to look around."  The cdesc is "Not yet."  It is for J7_evacuated.

To say jace_loop_explanation:
	say "[i]I can't take you with me, but you can take me with you.  If the loop resets with me in your head, I'll go with you, and we'll have this conversation again--for the first time, for you,[r] you tell him"

A page-toggle rule for J_reset:
	say "[jace_loop_explanation].

Jace mentally winces.  [i]So I'll take you back to that embarassing memory again?  Sorry about that.

It's OK, [r]you reply.  [i]It's not as bad the second time through it.  And you've been kind.  Some people are... kind of judgy.  Which makes it hard to get them to help, which is like the only thing I can actually do.

Hey, [r]Jace says, [i]that's not nothing.  And there's the spiders!  That's awesome!  You got this.  We got this.  See you soon!

[i]Thanks, Jace, [r]you reply.  And you mean it.  [r]You turn your concentration to the strands of time, and they come into focus.  You gently tap on your strand, sending a signal to Lestar.[lb]";
	carry out loop resetting;

To say maybe Jace:
	if the printed name of Jace is "Jace":
		say "Jace";
	otherwise:
		say "the young man--wait, no, Jace; his name is Jace.  [name_him_jace]Jace";
		
Before going to somewhere (called the destination) when Jace is the host:
	if the destination is chasmy:
		say "Jace winces.  [i]That's where your memory said the sinkhole was!  I'd rather not fall to my death just yet.[r]";
		stop the action;
	otherwise:
		say "[i]OK!  Let's figure stuff out! [r]Jace thinks at you.";
		continue the action;

Section Wyatt

Wyatt is an improper-named man in the Void.  "[if Wyatt is revealed]Wyatt's emerged from his hiding spot and has reunited with his parents.[otherwise if Wyatt is found]Wyatt is here, hiding under the roundabout.[otherwise][The Wyatt]'s got to be around here somewhere...".  The description is "A young boy maybe six years old with tousled hair sporting a few extra leaves and twigs.  He's wearing shorts and a wave-patterned T-shirt, and his hands and knees are completely black with dirt.[if Wyatt is found]  He's currently curled up underneath the exact center of the roundabout."  Understand "young/boy/six/tousled/leaves/twigs/kid", "tousled hair", "six years old", "six-year-old", "six-year old" as Wyatt.  The printed name of Wyatt is "young boy".  

Wyatt can be hidden, found, or revealed.  Wyatt is hidden.

The intro-page of Wyatt is hide-and-seek.

The mind-touch of Wyatt is "[The Wyatt] is hyper-focused on hiding."

hide-and-seek is a page.  ["[h-n-s intro]".] 

Wyatt can be tagged.  Wyatt is not tagged.

Instead of entering Wyatt:
	if Wyatt is revealed:
		say "Wyatt and his family are already safe.  In theory you could ask Wyatt to help, but that would involve putting him in danger, which you are [b]not[r] going to do.";
	otherwise:
		if hiding_and_seeking has ended:
			switch to cyoa at redo-mindscape-or-not;
		otherwise:
			now Wyatt is tagged.

redo-mindscape-or-not is a page.  "You've already chased Wyatt through your mind once.  Would you like to do all that again or just do what you did last time and skip to the end?".  The cdesc is "Decide whether to find Wyatt in your own memories again."

redo-mindscape is an end-page.  The cdesc is "Chase Wyatt through your own mind again.".  It is for redo-mindscape-or-not.

A page-toggle rule for redo-mindscape:
	now Wyatt is tagged;

skip-mindscape is an end-page.  The cdesc is "Skip to finding Wyatt hiding in your memory of a mysterious woman.".  It is for redo-mindscape-or-not.

A page-toggle rule for skip-mindscape:
	now the hiding start time is the time of day;
	carry out ending the mind maze;

Wyatt_replay is a page.	

To say name_him_wyatt:
	Now the printed name of Wyatt is "Wyatt";
	Now Wyatt is proper-named;

To say maybe Wyatt:
	if the printed name of Wyatt is "Wyatt":
		say "Wyatt";
	otherwise:
		say "the boy (whose name seems to be Wyatt)[name_him_wyatt]";


[Wyatt is six so that he's not too young to be obsessed with hide and seek.  It's the summer after graduating first grade.  Kids that age are ready for variations on a theme, so I should also make up rules about how hiding works, probably made up by Wyatt on the spot, a la Calvinball.]

Instead of doing anything with Wyatt when Wyatt is hidden:
	if spidered:
		say "Aha!  Any kid hiding from normal humans doesn't really stand a chance hiding from a Vested whose consciousness is distributed across hundreds of spiders.  A spider fixing their web under the roundabout can still see a rogue shoe with bits of tattered web on it... attached to a kid curled up in the center.";
		now Wyatt is found; 
	otherwise:
		say "You and your host can't seem to find [the Wyatt] whatever you do.";

a worried couple is a plural-named person in the Void.  "[If Wyatt is revealed]Wyatt's parents seem exasperated but relieved that they finally found him.[otherwise]A couple is searching for their kid, and can't seem to find them."  The description is "[If Wyatt is revealed]Reunited, the family is heading to safety.[otherwise]Two parents are searching the area trying to find their kid." The printed name of the worried couple is "[if Wyatt is revealed]relieved couple[otherwise]worried couple";

Instead of entering the couple:
	say "Both parents are so hyper-focused on finding their kid that there's no space for you to make a more substantive connection.";

The mind-touch of the worried couple is "[If Wyatt is revealed]You sense profound relief mixed with a certain amount of incredulity that their kid is so good at hiding.[otherwise]You lightly touch the couple's mind, sifting through the anxiety and at least get a few phrases:  'hiding again', 'Wyatt!', 'here just a second ago...'";

After touching the couple:
	say "[name_him_wyatt]";
	continue the action;


the intro-page of worried couple is blocked page.

Emerging is an action applying to nothing.

Report an actor emerging (this is the report emerging rule):
	if the location of the player is Playground:
		say "Wyatt emerges from under the roundabout, and his parents immediately exclaim and run over to him, relieved.";

[Instead of the couple examining when the location of the couple is the Playground:]
Report the couple examining something:
	If the location is the playground:
		if the noun is the kids:
			say "The couple looks through all the kids, trying to find their own.";
		otherwise if the noun is the equipment:
			say "The couple looks around, behind, and under all the playground equipment, searching for their kid.";
		otherwise:
			say "The couple searches [the noun], trying to find their kid.";
		rule succeeds;

Section Background Cast

To say playing_kids:
	if evacuated:
		say "The kids are reluctantly being led or carried away by their parents";
	otherwise if sinkhole_size is 0:
		say "Kids are playing, shrieking, and chasing each other up and around the platforms";
	otherwise if sinkhole_size is 1:
		if spidered:
			say "The kids are reacting to the disaster in different ways.  Most seem to be running away, but some are transfixed by the sight, and at least one seems to have been caught taking a step [i]towards[r] the sinkhole";
		otherwise:
			say "Most of the kids are running away, but some are transfixed by the destruction to the east, and a couple are taking hesitant steps towards the hole";
		

To say kid_description:
	if evacuated:
		if sinkhole_size is 0:
			if spidered:
				say "You focus your view to look at the crowd from different perspectives, matching up kids with people looking for them.  Two young boys being picked up from the swings; a little girl stepping off the slide making eye contact with a man putting away a cell phone; a teenage girl carrying one kid and gesturing to a second.  But there--a wide-eyed couple gesturing to each other across the playground, both looking panicked.  Can they not find their kid?[nb]";
				move worried couple to playground;
				move Wyatt to playground;
				repeat through the Table of Initial Placements:
					if the NPC entry is the couple:
						now the Location entry is Playground;
					if the NPC entry is Wyatt:
						now the Location entry is Playground;
			otherwise:
				say "You and your host look around to try to make sure all the kids have someone helping them, but everyone's moving too quickly to be sure.[nb]";
		otherwise:
			say "All the kids seem to have been evacuated before the sinkhole appeared.[nb]";
	otherwise if sinkhole_size is 0:
		say "The kids are all having a great time swinging and climbing or chasing each other around.  Some of them seem to be playing some version of 'hide and seek'.[nb]";
	otherwise:
		say "Only a few kids remain, either transfixed or crying.  A few are being snatched up by desperate parents. (LS TBD: more here, I think.)[nb]";

Some kids are plural-named people in the Void.  "[playing_kids].".  The description of the kids is "[kid_description]".

Instead of entering the Kids, say "[if sinkhole_size is greater than 0]You feel there must be a way to get most people out of here all at once instead of trying to do it one kid at a time.[otherwise]Hoo boy.  As traumatic as it is for you to enter people's minds, you'd rather not inflict full access to an adult mind on a pre-teen, even if they're supposed to forget afterwards."

The mind-touch of Kids is "[if sinkhole_size is 0]You let your own mind lightly touch a few kids, picking up a lot of complicated emotions about relatively simple things, and try not to let too much of your worry spill over from your own complicated emotions about... well, about only slightly more complicated things.[otherwise]The emotions of the kids are all over the place, from distress to fascination."

The intro-page of Kids is blocked page.

Park-goers are plural-named backdrop in the Void.  They are scenery.  The description is "[if evacuated]The park-goers are heading to the exit.[otherwise if sinkhole_size is 0]The park is well-attended today, with a variety of park-goers enjoying the day and the scenery.[otherwise if sinkhole_size is 1]The park-goers seem confused and can't quite figure out what's going on."  Understand "people/goers/crowd/crowds/park-goers", "park goers" as park-goers.

Instead of entering park-goers, say "Entering someone's mind is traumatic enough that you're not going to do it without some particular reason."


to say disaster_victims:
	if the location is Top of Hill:
		say "People are caught frozen in time but doomed:  a stumbling woman falling forward into the hole; a man clinging desperately to a cylinder of Coyote's Call as he and the cylinder plunge into the abyss"; 
	otherwise if location is Sinkhole:
		say "People are frozen in time, falling past you"


disaster_victims are plural-named privately-named people in the Void.  Understand "victims/people/goers/crowd/crowds/woman/man/cylinder", "park goers" as disaster_victims.  "[disaster_victims].".  The description is "These people are going to die if you can't figure out a way to help them."

The mind-touch of the disaster_victims is "You brace yourself as the panic from each person washes over you, and think back at them [i]<This isn't the end; I'll figure out a way to help; I'm so sorry.>[r]  If you do succeed, these people will never be in this position, but it feels right to do it anyway.  You think Lestar might understand."
	
Instead of entering disaster_victims:
	say "There's nothing these people can do to save themselves at this point in the loop; you'll have to help earlier in the cycle.";
	
the intro-page of disaster_victims is blocked page.

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

Book Setup

When play begins: 
	now the right hand status line is "[time of day]";
	say "Amaia screeches into the parking lot, and expertly zips into an open spot.  She closes her eyes briefly, checking, then opens them again, only fractionally less concerned.  'OK,' she says, breathlessly, 'whatever it is that's going to happen hasn't happened yet.  Zora,' she turns to you apologetically over her shoulder, 'you won't have a lot of time, but the future's still branching, so it should be enough.  Lestar, you're up.' [line break][line break]From the passenger seat, Lestar grins at both of you, his white eyebrows quirking soothingly, and he reaches behind his seat to pat you reassuringly on the arm.  'You got this, kid,' he says 'You've been doing great; this'll be just like the other times.'  From Amaia's panicked expression, you can tell she disagrees, but she says nothing.  You take a deep breath and grab Lestar's hand, dry and warm, and it grounds you.[line break][line break]Amaia takes Lestar's other hand, then grabs yours, the contact sleek with sweat from both of you.  Lestar nods at you both, and closes his eyes.[line break][line break]Everything freezes.[line break][line break]You have all the time in the world."

The time of day is 10:55 AM. 

Book Memories

A memory is a kind of thing.  Understand "memory" as a memory.

Does the player mean doing anything with a memory: It is unlikely.

Instead of doing something other than examining or taking or giving with a memory:
	say "You can't interact with a memory like that."
	
Instead of giving a memory to a person:
	say "You'd rather not share that right now."

disaster memory is a memory in the Void.  The description is "A snapshot in your mind of Coyote's Call disappearing into a giant sinkhole in the middle of the park."  Understand "snapshot/disappearing/sinkhole" as disaster memory.

a hiding memory is a memory in the Void.  The description is "A snapshot in your mind of finding what's hidden in the 'hiding zone', as Wyatt called it, by looking for a place to hide."  Understand "hiding/zone/wyatt" as hiding memory.

mysterious design memory is a memory in the Void.  The description is "A snapshot in your mind of the odd design you saw on both the spear of metal from Coyote's Call and the scarf of the hidden woman from your first mission.  It's two crossed lines circumscribed by a rounded triangle."  Understand "odd/design/mysterious/spear/two/crossed/lines/circumscribed/rounded/triangle" as the mysterious design memory.


Book Preset events

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

The host is a person that varies.

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

Book NPC Actions

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

jace1_announce is an announcement in the Void.  The words of jace1_announce are "Um, hi, I guess the park is... closed?  Everyone should get out, at least.  If you can!  If you can't, um, sorry, I'll see if I can get help.  I'll do that next.  But, like, right now, everyone else should leave."
	
jace2_announce is an announcement in the Void.  The words of jace2_announce are "Oh shit everyone get out!  911[apostrophe]s on their way but that hole's getting larger!  Parking lot, everyone!"
	
jace3_announce is an announcement in the Void.  The words of jace3_announce are "Hi, everyone!  Um, the park is now closed.  Everyone needs to leave the park immediately.  The, uh, Army Corps of Engineers reported that, uh, crap, I can't... look.  There's a Vested emergency, okay?  Everyone is in danger; you need to leave right now."

evacuating is an action applying to nothing.

Report an actor evacuating (this is the report evacuating rule):
	if the location of the player is the location of the actor:
		say "Confused but concerned parents arrive and collect their kids, and start heading to the parking lot. ";

The specification of the announcing action is
"The first action I defined for an NPC, so that Jace can announce stuff to the park."


	
Jace can be announced.  Jace is not announced.

After jace announcing jace1_announce:
	now the emotion of Jace is "worried";
	now Jace is announced;
	activate J7_evacuated;
	deactivate J7_earlier;
	continue the action;
	
After Jace announcing jace2_announce:
	now Jace is announced;
	now the emotion of Jace is "panicked";
	continue the action;

After Jace announcing jace3_announce:
	now Jace is announced;
	now the emotion of Jace is "excited and worried";
	repeat through the Table of Initial Placements:
		move the NPC entry to the Location entry;
	continue the action;

A player's action awareness rule for someone announcing:
	rule succeeds;

A accessibility rule for someone announcing: rule succeeds.

Table of NPCs
NPC	Action table
Jace	Table of Jace's Actions
couple	Table of couple's actions
Wyatt	Table of Wyatt's Actions
kids	Table of kids actions

Table of Jace's Actions
time	doing
10:59 AM	Jace announcing jace1_announce
11:02 AM	Jace announcing jace2_announce
11:03 AM	Jace exiting
11:04 AM	Jace going south
with 20 blank rows

Table of Wyatt's Actions
time	doing
10:59 AM	Wyatt waiting
with 23 blank rows

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

Table of Initial Placements
NPC	Location
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
			

			
	


Book traveling

Instead of entering the spiders for the first time:
	Move the consciousness to the spiders;
	Move the spiders to the parking lot;
	now the player is the consciousness;
	now the consciousness is transforming;
	Now the host is the spiders;
	say "With practiced ease, you move your consciousness out of your own head, and into the surrounding spiders.  Your perception shifts, and you see the parking lot as if you were standing in it, though patched together from dozens of small views."["[line break][line break]Probably due to your nervousness, a memory surfaces of the first time you managed this."];
	try looking;
	rule succeeds.

Report going somewhere when the player is in the spiders:
	say "You transfer your consciousness to the spiders to [the noun].";
	continue the action.