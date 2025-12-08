Park Goers by Moirai begins here.
Use authorial modesty.

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


Park Goers ends here.