Park Map by Moirai begins here.
Use authorial modesty.

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

Table of parking lot descriptions
Enterable NPC	Description
Jace	"Jace estimates that the number of cars in the parking lot is a bit low for a Thursday morning, but still reasonable.  His booth is back to the north.[if the Hyundai is in the parking lot]  He's super excited that he can see your car here, with [i]three[r] Vested in it, and is trying to be cool about it, but keeps sneaking peeks involuntarily.[end if] "
Oscar	"[if the Hyundai is in the parking lot]14[otherwise]13[end if] cars.  Entrance to the north.  Street to the west.  Fence."

Looming sculpture is fixed in place. It is here.  "Looming over the parking lot to the east is a huge sculpture  whose details have yet to be decided (LS TBD).".  The description is "It's a sculpture looming over the east fence (LS TBD)."

Fence is a backdrop.  It is here.  The description is "A fence walls off the park."  The fence is in the Path By Hill, Under Bridge, Water Sculpture, East Hill, Bewildering Bridges, and Sculpture By Lot.

Instead of going east from the Parking Lot when not spidered:
	if the player is Zora:
		say "While frozen, you can [b]enter[r] and [b]touch[r] the minds around you, and you're aware of your surroundings, but can't do anything physical.";
	otherwise:
		say "The park continues on the other side of the tall fence to the east, but your host can't scale it.";

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

Table of park entrance descriptions
Enterable NPC	Description
Jace	"It's the part of the park that Jace knows best, and also the most boring.  His booth to sell tickets, and the other booth with flyers.  On busy days in the summer, May would be there to hand out flyers to people as they arrived, and would talk to him when things slowed down.  Otherwise it's just him watching for the occasional bird or squirrel to show up then dart away again if he moved too quickly, or if a visitor wandered by."
Oscar	"Two booths, one with flyers, one with the kid who Oscar is pleased to report now recognizes him well enough to wave him through without him having to show his annual pass.  Parking south.  Park north."



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

Table of plaza descriptions
Enterable NPC	Description
Jace	"The whole park opens up from here, with paths to the northwest to [fire_forge] around the hill, north up the hill to the playground and Coyote's call, or east to the (looming sculpture LS TBD) and the east side of the park.  This is where Jace often picks a new path when wandering the park, so he never travels the same lap twice.  Usually he has to hang out in the ticket booth to the south, though."
Oscar	"Brick path from south.  Dirt paths northwest, north, southeast."


To say distant_coyote:
	say "Coyote's Call is the iconic sculpture of Quinlan Park.  Made of large red metal tubes and beams, it dominates the landscape from atop the central hill[if sinkhole_size is 0] to [otherwise]. Normally, you'd be able to see it to "

plaza_view is in Plaza.  It is distant and privately-named.  "[if sinkhole_size is 0]To the northeast atop the hill is the iconic red metal structure of Coyote's Call.[otherwise]To the northeast, the iconic red metal of Coyote's Call is no longer visible."  The description is "[distant_coyote][the northeast]."  Understand "iconic/red/metal/structure/coyote/coyote's/call/central/hill/tubes/bars" as plaza_view.  The printed name of plaza_view is "Coyote's Call";

Sculpture Number One is a thing in Plaza.  "Prominently displayed just inside the entrance is some sort of sculpture (LS TBD)."

Northwest of Plaza is Path By Hill.
Northeast of Plaza is Top of Hill.
North of Plaza is Playground.
Southwest of Playground is Plaza.
Southeast of Playground is Plaza.
East of Plaza is Sculpture By Lot.

Section Path By Hill

Path By Hill is a room.   "The path runs southeast to northwest here along the edge of the park, and splits off to the east as well, heading up the hill above you.  A fence mostly hidden by shrubbery to your west hides 48th street, and blocks most of the sound from the passing cars."

Table of path by hill descriptions
Enterable NPC	Description
Jace	"The west end of the park is the most secluded, so Jace always whistles or coughs when coming around the hill here.  He's found some... interesting items in the shrubbery along the northwest/southeast path here."
Oscar	"West edge of the park.  Paths northwest, east, southeast."


pbh_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]Though the hill is in the way, you can still see the tops of the red metal structure of Coyote's Call past the rise to the east.[otherwise]To the east, the red metal of Coyote's Call is no longer visible."  The description is "[distant_coyote][the east]."  Understand "iconic/red/metal/structure/coyote/coyote's/call/central/hill/tubes/bars" as pbh_view.  The printed name of pbh_view is "Coyote's Call";


Northwest of the Path By Hill is Under Bridge.
North of Path By Hill is Under Bridge.
South of Under Bridge is nowhere.

Section Under Bridge

Under Bridge is a room.  "A simple and delicate sculpture entitled [fire_forge] sits here, nestled under the 48th Street Bridge on the banks of Brushstroke Reservoir to the north.  The main path leads back southeast to the main park area, and a smaller worn path along the water leads east."

Table of bridge descriptions
Enterable NPC	Description
Jace	"In the middle of particularly hot days, the bridge overhead provides some of the only shade in the whole park, so Jace often takes his lunch breaks here, next to [fire_forge].  "
Oscar	"[fire_forge], under the bridge.  You can get out of here east along the water or souteast."


Fire_Forge is a fixed in place thing in Under Bridge.  The description of fire_forge is "A plaque in the ground identifies this sculpture as 'Fire and Forge'.  Long spines of twisting reddish metal emerge from the ground, reminiscent of flames." The printed name of fire_forge is "'Fire and Forge'".  Understand "fire and forge", "fire/forge/sculpture/simple/delicate" as fire_forge.  Fire_forge is privately-named.

fire_plaque is part of fire_forge.  The printed name of fire_plaque is "plaque".  fire_plaque is privately-named.  Understand "plaque" as fire_plaque.  The description of fire_plaque is "[i]Fire and Forge.  Metal and stain, 2007, Amelia Thomas.[line break][line break]The red metal spires most obviously evokes flames, but also passion, leading the majority of scholars to believe this to be representative of the relationship of Aphrodite and Hephaestus."

twisted metal is part of fire_forge.  The description of the twisted metal is "As you examine the twisted metal from different angles, you can almost imagine you see both swords and erotic imagery.  This would be consistent with the church of Aphrodite's reclamation of her dominion over both sex and war in its series of reforms in the 70[apostrophe]s and 80[apostrophe]s.  A small stamped icon of a cluster of dates would seem to indicate that the sculptor was part of the Inannan denomination."  Understand "Innana/Innanan/swords", "erotic imagery", "spines/spires/twisting/reddish/flames" as twisted metal.

cluster of dates is part of twisted metal.  The description is "(as in the fruit.)"  Understand "stamped/icon/fruit" as cluster of dates.

East of Path By Hill is Playground.

Section Playground

Playground is a room.  "You're at the top of the hill in the park.  This side has slides, swings, and a wide variety of brightly-colored [equipment].  The path curves from the south to the east side of the hill, along the ridge."

Table of playground descriptions
Enterable NPC	Description
Jace	"The top of the hill has a large play area that Jace remembers playing on as a kid.  The path goes along the hill to the east, or back down to the entrance area to the south."
Oscar	"Hilltop.  Swings and stuff.  You can go anywhere.  Paths east south, though."

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

Table of beach sculpture descriptions
Enterable NPC	Description
Jace	"'Beach' is a bit of a stretch for this section of park by the water, but they do haul in sand every other year to keep it looking nice for the two-foot slope between the east-west path and Brushstroke Reservoir. (LS TBD: mention sculpture)"
Oscar	"Water north.  Path by it east and west.  Kid stuff up the hill, south. (LS TBD: mention sculpture, once it exists.)"

beach_sculpt_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]To the southeast atop the hill is the iconic red metal structure of Coyote's Call.[otherwise]You can no longer see Coyote's Call to the southeast."  The description is "[distant_coyote][the southeast]."  Understand "iconic/red/metal/structure/coyote/coyote's/call/central/hill/tubes/bars" as beach_sculpt_view.  The printed name of beach_sculpt_view is "Coyote's Call";

Section Sculpture By Lot

Sculpture By Lot is a room.  "The path curves from the west to the southeast here, winding through a giant sculpture that looms over the fence by the parking lot.  The main hill of the park is to the north."

Table of sculpture by lot descriptions
Enterable NPC	Description
Jace	"The path goes through and under a giant sculpture that looms over this whole area."
Oscar	"Path goes west/southeast from here.  Huge sculpture."

[Jace's history of sculpture:  "(Sculptor)took this thing down and put it back up slightly differently about eight times, before the director finally told them the ninth time was going to have to be the final version.  Kicked up a fit, but they finished on time, and she grudgingly accepted that it worked, claiming the 'added stress of finalization added a certain stricken quality to the work'.]

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

Table of top of hill descriptions
Enterable NPC	Description
Jace	"It's the top of the hill, by Coyote's Call.  The epicenter of the sinkhole, so not a super stable place to be, even when you know when it'll happen."
Oscar	"Top of the hill, with Coyote's Call.  Where the sinkhole's going to be, so get out of here."

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

Coyote's Call is here.  "[what coyote's call looks like][no line break]".  The description is "[coyote's call's general description]".  Understand "coyote/call/coyote's/collection/giant/metal/tubes/beams/abstract/chaos/curve/sculpture", "curve of the hill" as coyote's call.

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

Bewildering Bridges is a room.  "Three paths from the west, northwest, and north converge here at a bewildering complex of bridges, walkways, and staircases, some fixed, and some turn gently in the wind."

Table of bewildering bridges descriptions
Enterable NPC	Description
Jace	"The southeast corner of the park has always been fascinating to Jace: the series of interlocking bridges always look to him like they could lead anywhere, even long after he's traveled all of them multiple times."
Oscar	"Bunch of bridges; all go nowhere.  We're in the southeast corner, so the opposite directions are good for getting out."
[LS DEBUG: inky noted that 'turning gently in the wind' is wrong if time is frozen.]

bridges_view is here.  It is distant and privately-named.  "[if sinkhole_size is 0]A ways northwest up the hill you can see the iconic red metal structure of Coyote's Call.[otherwise if sinkhole_size is 1]Coyote's Call has disappeared from view; it used to be visible to the northwest."  The description is "[distant_coyote][the northwest]."  Understand "iconic/red/metal/structure/coyote/coyote's/call/central/hill/tubes/bars" as bridges_view.  The printed name of bridges_view is "Coyote's Call";

North of Bewildering Bridges is East Hill.
East of Top of Hill is East Hill.
Northeast of Bewildering Bridges is nowhere.

Section East Hill

East Hill is a room.  "A north-south path rises here on the lower east end of the hill.  A sculpture labeled [Bird_Cage] is displayed here; a mass of metal bits on poles."

Table of east hill descriptions
Enterable NPC	Description
Jace	"The [Bird_Cage] mass of metal bits on poles has always seemed a little prosaic to Jace, so he doesn't frequent this east edge of the park very often.  The path here goes north/south, and the hill rises to the west."
Oscar	"There's [Bird_Cage] here, or whatever they call it.  It's the east edge of the park."

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

Table of water sculpture descriptions
Enterable NPC	Description
Jace	"The water running through the fountain sculpture here is as much a part of the design as the pipes and bowls, both in how its natural flow complements the rigidity of the pipes, but also in how the differently-sized bowls are tuned to harmonize with each other as the water strikes and fills them.  The whole structure rests just offshore in Brushstroke Reservoir, to the north.  Three paths to the west, southwest, and south all converge here."
Oscar	"Bunch of water splashing everywhere.  We're in the northeast corner of the park."

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


Table of Alternate Room Descriptions
Room	Alternates
Plaza	Table of plaza descriptions
Park Entrance	Table of park entrance descriptions
Quinlan Park Parking Lot	Table of parking lot descriptions
Quinlan Park Entrance	Table of park entrance descriptions
Path By Hill	Table of path by hill descriptions



Park Map ends here.
