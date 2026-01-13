Jace by Moirai begins here.
Use authorial modesty.

Section Jace

Jace is an improper-named man in the ticket booth.  The printed name of Jace is "young man".  The description is "A young man with a [emotion of Jace] expression, a Quinlan Park employee vest, and a name tag reading 'Jace'[name_him_jace]." Understand "young/man/nametag/name/tag/vest/employee" as Jace.

Jace has a text called emotion.  The emotion of Jace is "friendly but bored".

To say name_him_jace:
	Now the printed name of Jace is "Jace";
	Now Jace is proper-named;

Jace_init_touch is always "You reach out with your mind to touch [the Jace]'s mind, trying to keep your own surface thoughts focused more on curiosity than on your underlying worry.  [The Jace], in turn, turns out to be mulling over the question of what might have happened in the rest of the series if Akio had died in episode 2, instead of just being injured."

Jace_post_enter_touch is always "You touch [the Jace]'s mind, trying to convey your gratitude.  He's still mostly thinking, 'An Actual Vested!  And me!'".

The mind-touch of Jace is Jace_init_touch.

Instead of touching or entering Jace when disaster memory is not enclosed by the player:
	say "You'll have to enter his mind at some point, but you don't know [i]why[r] yet, or how he could help.  Until you do, you need to do more reconnaisance."

The intro-page of Jace is J1.
	
J1 is a page.
The cdesc is "Start a new conversation with Jace."
The description is "[if J1 is not visited]You take a deep (metaphorical) breath.  You've put it off as long as you could, but if you're going to be able to do anything here, this is the only way.


You let go of time, and enter [the Jace]'s mind instead.

[end if][visit J1]You hunker down mentally as [maybe Jace]'s consciousness and yours intertwine.  You've trained enough that you can give Jace some mental privacy, but untrained, he immediately carreens painfully through your thoughts and memories following connections that happen to resonate, and you're pulled along.
[bstars]You're racing to the park, Amaia in the throes of a prophecy but expertly navigating through traffic anyway; her hands in a death lock on the steering wheel of the Hyundai--
[bstars]The Hyundai looking so...normal, sitting in your high school's the parking lot as you and your parents approach the intense woman and old man standing next to it, here because..."
It is for reset-conversation-or-not.

to say visit J1:
	now J1 is visited.

To say J2:
	say  "[stars]Homework finished, you're gazing across the room at Duncan, and his hair, and his shoulders, and the way he laughs, and your mind starts to wander, and then your mind starts to ACTUALLY WANDER and"

J2a is a page.
The cdesc is "oh no".  It is for J1.
The description is "[J2]".

J2b is a page.
The cdesc is "Try to break the connection."  It is for J1.
The description is "You continue to be swept along in your memory.[J2]".

J3a is a page.
The cdesc is "'Jace, no!'"  It is for J2a and J2b.
The description is "[J3]".

J3b is a page.
The cdesc is "Try to break the connection."  It is for J2a and J2b.
The description is "You continue to be swept along in your memory.[lb][J3]".

To say J3:
	say "and you're suddenly READING EACH OTHERS MINDS and he KNOWS and [i]<Oh, geez, I'm so sorry I don't even>[r] HORRIFIED and SCARED and sees you across the room, eyes glazed over [i]<Who even are you and how>[r] and yells".

J4a is a page.
The cdesc is "Try to explain.".  It is for J3a and J3b.
The description is "[i]<I'm a Vested, and our minds--> [r]you start to explain, but the memory continues to sweep forward...

yells 'Zora!' and you--[i]<Holy crap, you're a Vested?!  That is so cool!>

[r]Blessedly, the memory starts to fade, replaced by Jace's excitement.

[i]<Oh, man, 'Concrete Sinners' has Vested in it, and the writers handle it so well, it's like they always pick the best mythos to draw from.  I've always wondered what it was like to be a Vested; I read President Calder's memoir like eight times and watched the 'Forged in Flames' documentary about him twice, but they both seemed a little glossed-over, like they were both just painting him as kind of a generic hero.  And the ancient myths are more the stories people told about Vestedness, instead of the actual Vested, if that makes any sense.  Is this... >[r]He looks around, but the memory is gone.  [i]<...your origin story?>[r]".

J5a is a page.
The cdesc is "'Kind of, I guess.  It's, uh, not been easy.'".  It is for J4a.
The description is "[i]<Wow, yeah, but still!  Powers of the ancients, passed on to the next-born for thousands of years!  Who did you get?  You're not Wisdom, are you?  Angiras, Kratu, Athena?  We go to their church!  A Kratu denomination; my dad says they have fewer extremists.>

[r]You sigh, and answer his question.  [i]<I'm 'the Past', basically.  Clotho, Urðr, Laima; those guys.  It sort of fits; memories are kind of my thing.  But I can't decide anyone's fate; that's something my stupid church made up.>[r]  You feel Jace startle at the idea of a Vested not liking their own church, and feel bad for shaking his worldview.  A little.[pb][i]<Wow, OK!  I guess I never thought about.... that.>[r]  You feel an awkard memory push itself to the forefront of Jace's mind, and use the sidestepping technique Amaia taught you to avoid connecting to it, until it fades again.  Jace presses on.  [i]<So, the Past!  And memories!  [if the time of day is less than 10:59 AM]Do you need one of my old memories or something?[otherwise]Oh!  The... whatever the problem is in the park![end if]>[r]".

J4b is a page.
The cdesc is "Try to break the connection." It is for J3a and J3b.
The description is "You continue to be swept along in your memory.

yells 'Zora!' and you finally snap back to yourself again, and everyone's looking at Duncan and Duncan is looking at you and your eyes plead but he smirks [i]<Oh, geez, I'm so sorry, I don't need to see this, I should be-->[r][bstars]You're in a meadow by a lake, your consciousness distributed in hundreds of spiders, letting time slip by, and totally at peace.  A breeze plays across the meadow and you feel it in each web in turn.".

J5c is a page.
The cdesc is "Appreciate the meadow for a bit.".  It is for J4b.
The description is "Jace quietly waits in the memory of the meadow with you.  His excitement and wonder leak everywhere, making the memory not quite as calming as it usually is.  It's still a nice break from reliving the most embarassing moment of your entitre life, so there's that.

Finally, you speak.  [i]<Thanks for finding this place.  There aren't many who find their way here, so it's nice.>

<I... assume there aren't many who find their way to 'the most embarassing moment of your life', either, so sorry about that,>[r] Jace responds.  Which means he's one of the people who also hears your inner monologue.  [i]<Yeah,>[r] he confirms.   Well, OK, then.

You both appreciate the meadow for a bit more.  [i]<So, you're a Vested?>[r]  Jace asks.  [i]<Power of the ancients, passed on to the next-born for thousands of years?>  [r]Feeling confirmation from you, he can't contain his delight.  [i]<That's so cool!  And you can go into people's heads!  And into spider's heads!  I can't even imagine how you manage to stitch together a coherent perspective from all of them at once.  I've read stories, of course, but none of them even hinted at abilities like this!>[r]".

J6a is a page.
The cdesc is "'It's not actually that glamourous.'".  It is for J5c.
The description is "[i]<Well, sure, >[r]Jace replies, [i]<but you can still do stuff nobody else can!  Not even other Vested!>  [r]You can't help but think about the weight of the burden that having this job has been, and Jace winces.  [i]<Sorry, yeah, the extra responsibility must be hard.  But, you know, if you weren't there, more people would be hurt?  Because of you, people have better lives, right?>

[r]He's... trying to cheer you up.  You were worried about being judged, and you're being cheered.  It didn't really work, but it's sweet.  [i]<Look, I know there's something you need my help for; you've avoided asking twice now.  What do you need?  I'm happy to help.>[r]".


J5b is a page.
The cdesc is "'Jace, I need your help.'".  It is for J4a, J4b, and J5c.
The description is "[i]<Right!  OK, yes.  You're probably here for a reason.  Talking to me!  In my head!  This is so--sorry! I mean, right.  Look, I can be calm!  I mean, not look, I guess.  Think?  Feel?  Was I being rude to say look?  I've never interacted with a Vested before; I didn't even know there was one in the state!  And now there's one in my head!  Eeee!>[r]".


J7_evacuated is a page.
The cdesc is "Show him the memory of the sinkhole.".  It is for J5a, J5b, J6a, and J5d.  It is inactive.
The description is "You show Jace the snapshot in your mind of the sinkhole.  [i]<Oh, no!>  [r]Jace says, horrified.  [i]<Those poor people!  I should've evacuated the park earlier!  I don't...wait!  You're the Past, right?  You can take me to the past, and I can evacuate the park before it collapses!>[r]".

J7_earlier is an end-page page.
The cdesc is "Show him the memory of the sinkhole.".  It is for J5a, J5b, J6a, and J5d.

A page-toggle rule for J7_earlier:
	say "You show Jace the snapshot in your mind of the sinkhole.  [i]<Oh, man, is that what's about to happen?  I better evacuate the park!>[r]";
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

J_reset is an end-page page.
The cdesc is "Reset to the beginning of the loop.".  It is for J7_evacuated.

J_continue is an end-page page.
The cdesc is "Not yet."  It is for J7_evacuated.
The description is "[jace_loop_explanation].  [i]<So, we have some time.  Time is the one thing we have plenty of.  Would you mind looking around with me before the loop resets?>

[r]Jace hesitates, and you sense him instinctively sifting through your thoughts and memories, making sure he can trust you.  You try to relax, even as you get flashes of times you've failed people, fortunately interspersed with times things have worked out.

[i]<Ack, sorry!  Again!>  [r]Jace sputters.  [i]<You're a perfectly normal person, and your intentions are good, and let's do this thing.  Only let's not jump into the sinkhole; that sounds painful even if it gets overwritten.>

<Deal,> [r]you reply.  OK.  Time to look around."

To say jace_loop_explanation:
	say "[i]<I can't take you with me, but you can take me with you.  If the loop resets with me in your head, I'll go with you, and we'll have this conversation again--for the first time, for you,>[r] you tell him"

A page-toggle rule for J_reset:
	say "[jace_loop_explanation].

Jace mentally winces.  [i]<So I'll take you back to that embarassing memory again?  Sorry about that.>

<It's OK,> [r]you reply.  [i]<It's not as bad the second time through it.  And you've been kind.  Some people are... kind of judgy.  Which makes it hard to get them to help, which is like the only thing I can actually do.>

<Hey,> [r]Jace says, [i]<that's not nothing.  And there's the spiders!  That's awesome!  You got this.  We got this.  See you soon!>

[i]<Thanks, Jace,> [r]you reply.  And you mean it.  You turn your concentration to the strands of time, and they come into focus.  You gently tap on your strand, sending a signal to Lestar.[lb]";
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


jace1_announce is an announcement in the Void.  The words of jace1_announce are "Um, hi, I guess the park is... closed?  Everyone should get out, at least.  If you can!  If you can't, um, sorry, I'll see if I can get help.  I'll do that next.  But, like, right now, everyone else should leave."
	
jace2_announce is an announcement in the Void.  The words of jace2_announce are "Oh shit everyone get out!  911[apostrophe]s on their way but that hole's getting larger!  Parking lot, everyone!"
	
jace3_announce is an announcement in the Void.  The words of jace3_announce are "Hi, everyone!  Um, the park is now closed.  Everyone needs to leave the park immediately.  The, uh, Army Corps of Engineers reported that, uh, crap, I can't... look.  There's a Vested emergency, okay?  Everyone is in danger; you need to leave right now."



Section Jace's actions

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

Table of Jace's Actions
time	doing
10:59 AM	Jace announcing jace1_announce
11:02 AM	Jace announcing jace2_announce
11:03 AM	Jace exiting
11:04 AM	Jace going south
with 20 blank rows


Jace ends here.