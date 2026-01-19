Ogden by Moirai begins here.
Use authorial modesty.

Section Ogden



Ogden is an improper-named man in On_Speedboat.  The printed name of Ogden is "tanned boat driver".  The description is "[variably describe the table of Ogden descriptions]". Understand "tanned/boat/driver/legs/ogden/winchester/dr/doctor" as Ogden.

Table of Ogden descriptions
Enterable NPC	Description
spiders	"All you can see of [the Ogden] is a pair of tanned legs."
Ogden	"As good looking, you might say, as ever.  "

To say Maybe Ogdens:
	if the printed name of Ogden is "Ogden":
		say "Ogden's";
	otherwise:
		say "The driver is a doctor: one Dr. Ogden Winchester IV.  [name_him_Ogden]His";
		
To say name_him_Ogden:
	Now the printed name of Ogden is "Ogden"; [Full name is Ogden Winchester IV]
	Now Ogden is proper-named;

Ogden_init_touch is always "Hesitantly, you reach out to touch [the Ogden]'s mind, trying (and mostly failing) not to worry about what kind of a person he might be.  You are utterly ignored.  [The Ogden] seems to instead be "

Ogden_post_enter_touch is always "You touch [the Ogden]'s mind, LS DEBUG".

The mind-touch of Ogden is Ogden_init_touch.

The intro-page of Ogden is O1.
	
O1 is a page.
The cdesc is "Start a new conversation with Ogden."
The description is "You let go of time, and enter [the Ogden]'s mind instead.

[visit O1][Maybe Ogdens] consciousness and yours intertwine, and you pull your thoughts inward to avoid intruding on his thoughts, and brace yourself as he crashes into your mind.
[bstars]You're MEM1
[bstars]MEM2..."
It is for reset-conversation-or-not.

to say visit O1:
	now O1 is visited.

To say O2:
	say  "[stars]Homework finished, you're gazing across the room at Duncan, and his hair, and his shoulders, and the way he laughs, and your mind starts to wander, and then your mind starts to ACTUALLY WANDER and"

O2a is a page.
The cdesc is "oh no".  It is for O1.
The description is "[O2]".

O2b is a page.
The cdesc is "Try to break the connection."  It is for O1.
The description is "You continue to be swept along in your memory.[O2]".

O3a is a page.
The cdesc is "'Ogden, no!'"  It is for O2a and O2b.
The description is "[O2]".


[
J7_earlier is an end-page page.
The cdesc is "Show him the memory of the sinkhole.".  It is for J5a, J5b, J6a, and J5d.

A page-toggle rule for J7_earlier:
	say "You show Ogden the snapshot in your mind of the sinkhole.  [i]<Oh, man, is that what's about to happen?  I better evacuate the park!>[r]";
	try Ogden announcing Ogden3_announce;
	repeat through the Table of Ogden's Actions:
		if the doing entry is Ogden announcing something:
			blank out the whole row;
		otherwise if the doing entry is Ogden announcing Ogden2_announce:
			blank out the whole row;
	[Set up Ogden doing this next time round:]
	if there is a time corresponding to a time of the time of day minus one minute in the table of Ogden's actions:
		[say "Action found at [time of day minus one minute].";]
		now the doing corresponding to the time of the time of day minus one minute in the table of Ogden's actions is Ogden announcing Ogden3_announce;
	otherwise:
		[say "No previous action found at [time of day minus one minute].";]
		choose a blank row in the Table of Ogden's actions;
		now time entry is the time of day minus one minute;
		now doing entry is (Ogden announcing Ogden3_announce);
	[Now set up the kids and people evacuating in response to the announcement:]
	repeat through the Table of kids actions:
		if the doing entry is kids evacuating:
			blank out the whole row;
	if there is a time corresponding to a time of the time of day in the Table of kids actions:
		[say "Action found at [time of day minus one minute].";]
		now the doing corresponding to the time of the time of day in the table of kids actions is kids evacuating;
			
	


The resume-page of Ogden is J7_earlier.

J_reset is an end-page page.
The cdesc is "Reset to the beginning of the loop.".  It is for J7_evacuated.

J_continue is an end-page page.
The cdesc is "Not yet."  It is for J7_evacuated.
The description is "[Ogden_loop_explanation].  [i]<So, we have some time.  Time is the one thing we have plenty of.  Would you mind looking around with me before the loop resets?>

[r]Ogden hesitates, and you sense him instinctively sifting through your thoughts and memories, making sure he can trust you.  You try to relax, even as you get flashes of times you've failed people, fortunately interspersed with times things have worked out.

[i]<Ack, sorry!  Again!>  [r]Ogden sputters.  [i]<You're a perfectly normal person, and your intentions are good, and let's do this thing.  Only let's not jump into the sinkhole; that sounds painful even if it gets overwritten.>

<Deal,> [r]you reply.  OK.  Time to look around."

To say Ogden_loop_explanation:
	say "[i]<I can't take you with me, but you can take me with you.  If the loop resets with me in your head, I'll go with you, and we'll have this conversation again--for the first time, for you,>[r] you tell him"

A page-toggle rule for J_reset:
	say "[Ogden_loop_explanation].

Ogden mentally winces.  [i]<So I'll take you back to that embarassing memory again?  Sorry about that.>

<It's OK,> [r]you reply.  [i]<It's not as bad the second time through it.  And you've been kind.  Some people are... kind of judgy.  Which makes it hard to get them to help, which is like the only thing I can actually do.>

<Hey,> [r]Ogden says, [i]<that's not nothing.  And there's the spiders!  That's awesome!  You got this.  We got this.  See you soon!>

[i]<Thanks, Ogden,> [r]you reply.  And you mean it.  You turn your concentration to the strands of time, and they come into focus.  You gently tap on your strand, sending a signal to Lestar.[lb]";
	carry out loop resetting;

Before going to somewhere (called the destination) when Ogden is the host:
	if the destination is chasmy:
		say "Ogden winces.  [i]That's where your memory said the sinkhole was!  I'd rather not fall to my death just yet.[r]";
		stop the action;
	otherwise:
		say "[i]OK!  Let's figure stuff out! [r]Ogden thinks at you.";
		continue the action;

]


Table of Ogden's Actions
time	doing
10:59 AM	Ogden waiting
with 30 blank rows


Ogden ends here.