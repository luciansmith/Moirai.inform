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

Ogden_init_touch is always "Hesitantly, you reach out to touch [the Ogden]'s mind, trying (and mostly failing) not to worry about what kind of a person he might be.  [The Ogden] is hyper-focused on the mechanics of driving the boat, and watching for debris on the reservoir.  It's the sort of hyperfixation that you've seen in people who are trying to distract themselves."

Ogden_on_boat_touch is always "You touch [the Ogden]'s mind, once again finding him hyper-focused on driving the boat.".

Ogden_parkinglot_touch is always "Ogden is in full professional mode, focused on making sure Elara and her baby survive.".

The mind-touch of Ogden is Ogden_init_touch.

The intro-page of Ogden is O1.
	
O1 is a page.
The cdesc is "Start a new conversation with Ogden."
The description is "[visit O1]You let go of time, and enter [the Ogden]'s mind instead.

[Maybe Ogdens] consciousness and yours intertwine.  You pull inward to avoid intruding on his thoughts, and to brace yourself as he crashes into your memories.
[bstars]You're trying to convince LS DEBUG: FIND WHO BROUGHT YOU to put spiders in their hair and swim out into the reservoir so you can investigate a speedboat...
[bstars]You're in the mind of a young terrified child, trying to convince them that if they go [i]right now[r] they can make it through the door without being seen...
[bstars][i]<Wait, this is a thing you can do?> Ogden asks."
It is for reset-conversation-or-not.

to say visit O1:
	now O1 is visited.

O2a is a page.
The cdesc is "Think about the times you entered people's minds.".  It is for O1.
The description is "[O2]".

O2b is a page.
The cdesc is "Try to explain."  It is for O1.
The description is "[i]<I'm a Vested, and can-->[r] you start, but Ogden interrupts you.
[i]<Yeah, Obviously you're a Vested, but how... wait, I can just look for myself.
[O2]".

To say O2:
	say "You feel Ogden sort through your memories of entering people's minds, going back earlier and earlier until-
	[stars]You're in Amaia's mind, bouncing through flashes of memories of birthday parties.  [i]<Focus!>[r] she barks at you, and for the first time, you're finally able to recapture your memory of staring at a candle flame, letting outside thoughts melt away to be replaced by full awareness of the candle's slight heat, the light smell of smoke, and the flickering brightness of the flame.  Amaia pelts you with more bright memories of clowns, of roller coasters, of fancy meals, but you hold tight to the candle through the onslaught.  But then with a lurch you're back with Amaia as she dives off a cliff, terrified but supremely confident that she would know she would die if this wasn't going to work...
	[bstars]Ogden scoffs.  [i]<You had to work to [b]not[i] see people's memories, but they can still see yours?>[r]"

O3a is a page.
The cdesc is "Explain the ethics of connecting to someone's mind."  It is for O2a and O2b.
The description is "[i]<Yes!  The people I connect to didn't ask me to be there!>[r] you exclaim.  ".

O3b is a page.
The cdesc is "Threaten to look at his memories."  It is for O2a and O2b.
The description is "[i]<I mean, I could look at [b]your[i] embarassing memories,>[r] you retort.
[i]<As if someone like you... Hmm,>[r] replies Ogden.  [i]<I bet if I...>[r]
[bstars]It's your first day at your new school, and you don't recognize anyone.  Everyone is looking at you with scepticism if not outright hostility, and you didn't even get to say goodbye to your old friends, your dad just transferred you without even-
[i]<Oh, come on, [b]what[i] school?> Ogden snorts, and everything rewinds, and
[bstars]It's your first day at [b]Thoth Academy of Letters[i] and you don't recognize anyone.  Everyone is looking-
[i]<Ah!  TAL, hunh?  Not bad for aspiring geeks; one of my anaesthetists went there. But why weren't you always...>[r]".

O4a is a page.
The cdesc is "Let him rummage.  What he looks for will tell you what he cares about."  It is for O3b.
The description is "".

O4b is a page.
The cdesc is "Try to distract him with a different memory instead."  It is for O3b.
The description is "".

O4c is a page.
The cdesc is "Give him one more warning before looking at his memories in return."  It is for O3b.
The description is "[i]<Hey.  Asshole.  Cut it out or I'll do the same to you,>[r] you warn. Ogden doesn't even acknowledge you, and
[bstars]There's a roar of a car engine outside, and you and your brother run to the window.  Outside, your dad starts honking the horn of his new metallic-purple sports car--".

O5a is a page.
The cdesc is "Enter a recent memory."  It is for O4a and O5c.
The description is "[Ogden defends himself]
You ".

O5b is a page.
The cdesc is "Find an embarassing memory."  It is for O4a and O5c.
The description is "".

[LS DEBUG:  only add this if you've been through the Wyatt interaction to the end.]
[If the hiding memory is in the player]
O5c is a page.
The cdesc is "Hide in Ogden's memories like Wyatt taught you."  It is for O4a.
The description is "Once you start looking for a place to hide, it's incredibly obvious: a place where Ogden's attention has been warped away from constant avoidance.  It's a bright knot of pain and excitement and fear and admiration and, somehow, kindness.".

To say Ogden defends himself:
	say "As you being to relax and reach out, you realize that Ogden is imagining walls and shields and concentrating really hard on the idea of you not seeing his memories.  That is, of course, not even close to how any of it works.  Your minds are connected; when one person concentrates on something, it's just one more thing that the other person can see.  You relax your own focus, letting your minds connect more deeply, and[bstars]"

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