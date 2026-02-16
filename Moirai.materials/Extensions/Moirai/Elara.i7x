Elara by Moirai begins here.
Use authorial modesty.

Section Elara



Elara is an improper-named woman in the Void.  The printed name of Elara is "young woman".  The description is "[variably describe the table of Elara descriptions]". Understand "young/woman/pregnant" as Elara.

[I found Elara on a name list and thought it might kind of work; it turned out to be a name that is somewhat newly-popular, but is also the name of a woman from greek mythology who had a kid with Zeus while underground, and died in childbirth because the kid was a giant.  Which fits almost scarily well into the plotline I have for this poor woman.]

[Elara and her kid are the most difficult puzzles of the game, and there needs to be a lot of people cooperating to make things work.  She moves slowly, and can't climb hills, so can't make it out of the park through the front gate:  everyone's going to have to help get her south to the fence, then over the fence (definitely using the sculptures along the way).  Then she goes into labor, and she and the kid's life are in danger, so we'll need to get her obstetrician Dr. Ogden (who's out boating in the reservoir) to agree to meet us in the parking lot, perhaps if we push the loop window later by exiting the circle as ourselves?

This turns out to be the whole purpose of the disaster: if a child dies as they are being Vested, that power is lost forever, and the former US President who was Vested by 'Prometheus', dies of old age at exactly this moment, passing Prometheus to Elara's child.]

[Further brainstorming with Ellric:  Following the myth a bit, I think Ogden is actually Elara's baby daddy, who broke up with her when she accidentally got pregnant, and she wanted to keep the kid.  He knows he's too married to his job to be a good dad, and set her up with a nice apartment and is happy to pay child support, but doesn't want a relationship.  Maybe the PC can help them figure out something that works?  That's what I'd want as a player.  Other ideas: when you mention something about her to him, there's a flash of strong emotion that you instinctively avoid... but which you are given the opportunity to look at anyway.  And if you do, it's a bad idea.  Not sure how to ]

Table of Elara descriptions
Enterable NPC	Description
spiders	"[The Elara] is very clearly pregnant, and has a kind but pained face, as she takes deliberate deep breaths."
Elara	"As good looking, you might say, as ever.  "

To say Maybe Elara:
	if the printed name of Elara is "Elara":
		say "Elara";
	otherwise:
		say "The young woman's name turns out to be Elara ____.  [name_her_Elara]She";
		
To say name_her_Elara:
	Now the printed name of Elara is "Elara";
	Now Elara is proper-named;

Elara_init_touch is always "Hesitantly, you reach out to touch [the Elara]'s mind, trying (and mostly failing) not to worry about what kind of a person he might be.  You are utterly ignored.  [The Elara] seems to instead be "

Elara_post_enter_touch is always "You touch [the Elara]'s mind, LS DEBUG".

The mind-touch of Elara is Elara_init_touch.

The intro-page of Elara is E1.
	
E1 is a page.
The cdesc is "Start a new conversation with Elara."
The description is "You let go of time, and enter [the Elara]'s mind instead.

[visit E1][Maybe Elara] consciousness and yours intertwine, and you pull your thoughts inward to avoid intruding on his thoughts, and brace yourself as he crashes into your mind.
[bstars]You're MEM1
[bstars]MEM2..."
It is for Elara-reset-conversation-or-not.

to say visit E1:
	now E1 is visited.

To say E2:
	say  "[stars]Homework finished, you're gazing across the room at Duncan, and his hair, and his shoulders, and the way he laughs, and your mind starts to wander, and then your mind starts to ACTUALLY WANDER and"

E2a is a page.
The cdesc is "oh no".  It is for E1.
The description is "[E2]".

E2b is a page.
The cdesc is "Try to break the connection."  It is for E1.
The description is "You continue to be swept along in your memory.[E2]".

E3a is a page.
The cdesc is "'Elara, no!'"  It is for E2a and E2b.
The description is "[E2]".


[
J7_earlier is an end-page page.
The cdesc is "Show him the memory of the sinkhole.".  It is for E5a, E5b, E6a, and E5d.

A page-toggle rule for E7_earlier:
	say "You show Elara the snapshot in your mind of the sinkhole.  [i]<Oh, man, is that what's about to happen?  I better evacuate the park!>[r]";
	try Elara announcing Elara3_announce;
	repeat through the Table of Elara's Actions:
		if the doing entry is Elara announcing something:
			blank out the whole row;
		otherwise if the doing entry is Elara announcing Elara2_announce:
			blank out the whole row;
	[Set up Elara doing this next time round:]
	if there is a time corresponding to a time of the time of day minus one minute in the table of Elara's actions:
		[say "Action found at [time of day minus one minute].";]
		now the doing corresponding to the time of the time of day minus one minute in the table of Elara's actions is Elara announcing Elara3_announce;
	otherwise:
		[say "No previous action found at [time of day minus one minute].";]
		choose a blank row in the Table of Elara's actions;
		now time entry is the time of day minus one minute;
		now doing entry is (Elara announcing Elara3_announce);
	[Now set up the kids and people evacuating in response to the announcement:]
	repeat through the Table of kids actions:
		if the doing entry is kids evacuating:
			blank out the whole row;
	if there is a time corresponding to a time of the time of day in the Table of kids actions:
		[say "Action found at [time of day minus one minute].";]
		now the doing corresponding to the time of the time of day in the table of kids actions is kids evacuating;
			
	


The resume-page of Elara is E7_earlier.

J_reset is an end-page page.
The cdesc is "Reset to the beginning of the loop.".  It is for E7_evacuated.

J_continue is an end-page page.
The cdesc is "Not yet."  It is for E7_evacuated.
The description is "[Elara_loop_explanation].  [i]<So, we have some time.  Time is the one thing we have plenty of.  Would you mind looking around with me before the loop resets?>

[r]Elara hesitates, and you sense him instinctively sifting through your thoughts and memories, making sure he can trust you.  You try to relax, even as you get flashes of times you've failed people, fortunately interspersed with times things have worked out.

[i]<Ack, sorry!  Again!>  [r]Elara sputters.  [i]<You're a perfectly normal person, and your intentions are good, and let's do this thing.  Only let's not jump into the sinkhole; that sounds painful even if it gets overwritten.>

<Deal,> [r]you reply.  OK.  Time to look around."

To say Elara_loop_explanation:
	say "[i]<I can't take you with me, but you can take me with you.  If the loop resets with me in your head, I'll go with you, and we'll have this conversation again--for the first time, for you,>[r] you tell him"

A page-toggle rule for E_reset:
	say "[Elara_loop_explanation].

Elara mentally winces.  [i]<So I'll take you back to that embarassing memory again?  Sorry about that.>

<It's OK,> [r]you reply.  [i]<It's not as bad the second time through it.  And you've been kind.  Some people are... kind of judgy.  Which makes it hard to get them to help, which is like the only thing I can actually do.>

<Hey,> [r]Elara says, [i]<that's not nothing.  And there's the spiders!  That's awesome!  You got this.  We got this.  See you soon!>

[i]<Thanks, Elara,> [r]you reply.  And you mean it.  You turn your concentration to the strands of time, and they come into focus.  You gently tap on your strand, sending a signal to Lestar.[lb]";
	carry out loop resetting;

Before going to somewhere (called the destination) when Elara is the host:
	if the destination is chasmy:
		say "Elara winces.  [i]That's where your memory said the sinkhole was!  I'd rather not fall to my death just yet.[r]";
		stop the action;
	otherwise:
		say "[i]OK!  Let's figure stuff out! [r]Elara thinks at you.";
		continue the action;

]


Table of Elara's Actions
time	doing
10:59 AM	Elara waiting
with 30 blank rows


Elara ends here.