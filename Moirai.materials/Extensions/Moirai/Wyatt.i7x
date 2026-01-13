Wyatt by Moirai begins here.
Use authorial modesty.

Section Wyatt

Wyatt is an improper-named man in the Void.  "[if Wyatt is revealed]Wyatt's emerged from his hiding spot and has reunited with his parents.[otherwise if Wyatt is found]Wyatt is here, hiding under the roundabout.[otherwise][The Wyatt]'s got to be around here somewhere...".  The description is "A young boy maybe six years old with tousled hair sporting a few extra leaves and twigs.  He's wearing shorts and a wave-patterned T-shirt, and his hands and knees are completely black with dirt.[if Wyatt is found]  He's currently curled up underneath the exact center of the roundabout."  Understand "young/boy/six/tousled/leaves/twigs/kid", "tousled hair", "six years old", "six-year-old", "six-year old" as Wyatt.  The printed name of Wyatt is "young boy".  

Wyatt can be hidden, found, or revealed.  Wyatt is hidden.

The intro-page of Wyatt is hide-and-seek.

The mind-touch of Wyatt is "[The Wyatt] is hyper-focused on hiding."

hide-and-seek is a page.  [The description is "[h-n-s intro]".]

Wyatt can be tagged.  Wyatt is not tagged.

Instead of entering Wyatt:
	if Wyatt is revealed:
		say "Wyatt and his family are already safe.  In theory you could ask Wyatt to help, but that would involve putting him in danger, which you are [b]not[r] going to do.";
	otherwise:
		if hiding_and_seeking has ended:
			switch to cyoa at redo-mindscape-or-not;
		otherwise:
			now Wyatt is tagged.

redo-mindscape-or-not is a page.  The cdesc is "Decide whether to find Wyatt in your own memories again."  The description is "You've already chased Wyatt through your mind once.  Would you like to do all that again or just do what you did last time and skip to the end?".

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

Zora_mem1 is a privately-named scenery woman in Skiing.  The description is "You're skiing in rented equipment and are all bundled up in hand-me-down winter clothes that don't quite match, but are great at keeping you warm.  You have a determined expression on your face tinged with the exhilaration of going faster than you've gone before."  Understand "Zora/me/you/ski/skis/pole/poles/clothes/hand-me-down/hand-me-downs/face", "memory of myself", "memory of me", "memory of yourself" as Zora_mem1.  The printed name of Zora_mem1 is "the memory of yourself".  Instead of touching or entering Zora_mem1, say "You don't sense any one particular memory from connecting to this memory of yourself."

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

Meet_Zora is a scenery woman in Cailleach Ski Lift..  The description is "The main thing you remember about yourself that day is how un-selfconscious you felt.  Micah just seemed to have that effect on people."  Understand "me/you/yourself/myself/Zora", "memory of myself", "memory of me", "memory of yourself" as Lift_Zora.  The printed name of Lift_Zora is "the memory of yourself".   Instead of touching or entering Meet_Zora, say "You don't sense any one particular memory from connecting to this memory of yourself."

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

Your Own Kitchen Argument is a liminal room.  "Eight months ago.  You were just back from your first Vested crisis at the Northfield office complex.  You were furiously scrubbing dishes, trying to vicariously wipe away the pain and anger and darkness that clung to you from the shooter's mind. [Kitchen_mom] came in to talk to you about it after listening to the news report, ostenstibly to be sympathetic but somehow explaining that everything you did was wrong, and how you could have done everything better."
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

No_wyatt is a backdrop.  No_wyatt is in Green Hill and Meet_Micah and Arguing_about_Micah.  The description is "Wyatt doesn't seem to have visited this memory at all."  Understand "wyatt" as No_wyatt.  Instead of touching or entering No_wyatt, say "Wyatt isn't here for you to connect with, and it seems he never visited this memory."

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
The intro-page of Meet_Zora is the blank page.

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
The mind-touch of Meet_Zora is "Covered by an 'instead' rule."

Section Wyatt's actions

Table of Wyatt's Actions
time	doing
10:59 AM	Wyatt waiting
with 23 blank rows



Wyatt ends here.