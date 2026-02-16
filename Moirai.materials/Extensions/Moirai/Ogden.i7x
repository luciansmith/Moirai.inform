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
	[stars]You're in Amaia's mind, bouncing through flashes of memories of birthday parties.  [i]<Focus!>[r] she barks at you, and for the first time, you're finally able to recapture your memory of staring at a candle flame, letting outside thoughts melt away to be replaced by full awareness of the candle's slight heat, the light smell of smoke, and the flickering intensity of the flame.  Amaia pelts you with more bright memories of clowns, of roller coasters, of fancy meals, but you hold tight to the candle through the onslaught.  But then with a lurch you're back with Amaia as she dives off a cliff, terrified but supremely confident that she would know she would die if this wasn't going to work...
	[bstars]Ogden scoffs.  [i]<You had to work to [b]not[i] see people's memories, but they can still see yours?>[r]"

O3a is a page.
The cdesc is "Explain the ethics of connecting to someone's mind."  It is for O2a and O2b.
The description is "[i]<Yes!  The people I connect to didn't ask me to be there!>[r] you exclaim.  [i]<It'd be a gross invasion of privacy to just rip through their heads, looking at their memories.>[r]
Ogden scoffs.  [i]<Being a Vested was wasted on you,>[r] he says.  [i]<What the hell is the point of an ability you don't use?>[r]
[i]<I'm using it right now!>[r] you exclaim.  [i]<I'm trying to help people escape a sinkhole by>[r]
Ogden's attention drops from you, and the rest of your thought echoes through your head, alone.  Then
[O3]".

O3b is a page.
The cdesc is "Threaten to look at his memories."  It is for O2a and O2b.
The description is "[i]<I mean, I could look at [b]your[i] embarassing memories,>[r] you retort.
[i]<As if someone like you... Hmm,>[r] replies Ogden.  [i]<I bet if I...>[r]
[O3]".

To say O3:
	say "[bstars]It's your first day at your new school, and you don't recognize anyone.  Everyone is looking at you with scepticism if not outright hostility, and you didn't even get to say goodbye to your old friends: your dad just transferred you without even-
[i]<Oh, come on, [b]what[i] school?> Ogden snorts, and everything rewinds, and[r]
[bstars]It's your first day at [b]Thoth Academy of Letters[r] and you don't recognize anyone.  Everyone is looking-
[i]<Aha!  TAL, hunh?  Not bad for aspiring geeks; one of my anaesthetists went there. But why weren't you always...>[r]"

O4a is a page.
The cdesc is "Let him rummage.  What he looks for will tell you what he cares about."  It is for O3a and O3b.
The description is "".

O4b is a page.
The cdesc is "Try to distract him with a different memory instead."  It is for O3a and O3b.
The description is "".

O4c is a page.
The cdesc is "Give him one more warning before looking at his memories in return."  It is for O3a and O3b.
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


CrashMem is a recurring scene.  CrashMem begins when Ogden is triggered.  CrashMem ends when Ogden is not triggered.  
Ogden can be triggered or not triggered.  Ogden is not triggered.

The crash start time is a time that varies.

When CrashMem begins:
	say "[crash_intro]";
	move the player to LexusES;
	now the crash start time is the time of day;
	now the time of day is 11:48 PM;



To say crash_intro:
	say "[b]PAIN[r]

OK. Okay! Deep breaths. You can still breathe. Lungs functional. Heart rate maybe 100. Fast, but not debilitating.

[b]Pain[r]

Focus.  Focus.

Open eyes.  Assess damage.  Visual acuity... moderate?  No, acuity is fine; light is minimal.  Left arm hanging useless. Source of pain. Surface examination--

[b]PAIN[r]

Broken bone.  Not compound. Good. Blood, from somewhere. Not arm. Source? Stop the bleeding. 

[i]<How... How are we here?>[r] Ogden demands. [i]<No. Get out.>[r] The image of him pushing you out of his head floats by, incongruous in context."

Section Car Crash Memories

LexusES is a liminal room.  The printed name is "In Your Shattered Lexus ES 350".  "Your Lexus has been demolished, though it mostly managed to protect you.  The driver's-side door is completely caved in from where the other vehicle struck you, explaining your broken [left arm].  The [windshield] is shattered, and there's [blood splatters] on the dashboard and the deflating [airbag].[pb][list memexits from LexusES][no line break]"


Your left arm is memTouch in LexusES.  The description is "[if the left arm is touched]Your left arm was broken, but you managed to immobilize it by improvising a sling from your shirt.[otherwise]Your left arm hangs uselessly by your side, broken from the impact of the collision."  Understand "broken/ogden's/shirt/sling/sleeve" as left arm.

Instead of touching the left arm:
	if the left arm is not touched:
		now the left arm is touched;
		say "Need to immobilize the fracture.  You wriggle your right arm out of its sleeve, and carefully fashion your shirt into a very rough sling.  The pain eases.  Slightly.";
	otherwise:
		say "You immobilized the fracture using your shirt as a makeshift sling."



The blood splatters are memTouch in LexusES.  The description is "[if the blood splatters are not touched]There's splattered blood all over the dash and your clothes, though the source is not obvious.[otherwise]The splattered blood from your head wound is all over the dash and your clothes.  Not deep enough to be immediate problem.  Will need bandage."  Understand "face/scalp/temple/capillary" as blood splatters.

Instead of touching the blood splatters:
	if the blood splatters are not touched:
		now the blood splatters are touched;
		say "Need to stop the bleeding.  Not the arm.  Not anything else visible.  Explore.  Touch face.  No blood on fingers.  Touch scalp.  Nothing.  Touch left temple.  Pain.  Minor pain.  Blood.  Shallow cut.  Capillary bleeding only.";
	otherwise:
		say "Will need bandage.  Don't have bandage.  Shallow; it can wait."

The shattered windshield is memTouch in LexusES.  The description is "The windshield is completely shattered, and you can't make out anything outside.  The spidered cracks are lit by glaring white lights--someone else's car, perhaps?"  Understand "spidered/cracks/glaring/white/light/lights/oddly/pretty" as shattered windshield.

Instead of touching the shattered windshield:
	say "Spidered cracks.  Sharp white light.  Oddly pretty."


The deflating airbag is a memTouch in LexusES.  The description is "Saved your face.  Maybe your life.  Still smells like gunpowder."  Understand "deflating/gunpowder" as airbag.

Instead of smelling in LexusES:
	say "The smell of gunpowder from the airbag almost overwhelms the smell of blood."


The passenger side door is a memConnection in LexusES.  It is noticed.  The destination of the passenger side door is Crossroads Accident.  The dest_time of the passenger side door is 11:35 PM.  The description is "Still functional, you hope."



Crossroads Accident is a liminal room.  "Three cars.  Your Lexus, the pickup truck that rammed you, and the Audi that you both then hit, coming the opposite direction."



Table of Ogden's Actions
time	doing
10:59 AM	Ogden waiting
with 30 blank rows


Ogden ends here.