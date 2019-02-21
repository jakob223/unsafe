"Unsafe" by Brian Chen and Jakob Weisblat

The story description is "TODO fixme".
The release number is 1.
The story creation year is 2019.

Part 1 - Meta

Instead of going through a closed door:
	say "You can't go through [the door gone through] because it's closed."
[comment: The can't go through closed doors rule is not listed in the check going rulebook.]
[TODO: similar rule for using objects you're not holding]

When play begins:
	now the right hand status line is "Moves: [turn count - 1]"; [Inform's turn count basically says what number the "current move" is, so we subtract one.]
	say "You wake up in your bedroom."
	
To conclude with (par - a number):
	now the right hand status line is "Moves: [turn count]";
	end the story saying "You have died";
	say "You've reached one of this game's 14 endings! In that game you used [turn count] moves. The optimal number of moves is [par].";
	if turn count is less than par:
		say "Uh-oh, the puzzle is broken! Send us an email!";
	else if turn count is par:
		say "Great job, you got the optimal number of moves!";
	else:
		say "You can reach this ending more quickly!"

Part 2 - House

Section 1 - First Floor

The Bedroom is a room. The description is "It's your bedroom. It's not very interesting. The hall is to the east."

East of the Bedroom is a room called the Hall. The description of The Hall is "The hall in the middle of your house. Your bedroom is to the West. The staircase leading upwards is to the North. The back entryway is to the South. (??) The kitchen is to the East."

North of the Hall is the Staircase. The Staircase is an open door. The staircase is not openable.

East of the Hall is the Kitchen.
The toaster, the cabinet, the refrigerator, and the stool are in the kitchen.
Understand "fridge" as the refrigerator.
The cabinet is a closed openable fixed in place container. The description is "A cabinet with a top, middle, and bottom drawer."
The top drawer, the middle drawer, and the bottom drawer are closed openable containers. The top drawer, the middle drawer, and the bottom drawer are parts of the cabinet. [TODO: improve the drawer situation]
In the middle drawer is a bread box. The bread box is a closed openable fixed in place container. In the bread box is a loaf of bread. [TODO: make the loaf of bread have slices which are edible] [TODO: the load of bread is wrapped.]
The refrigerator is a closed openable fixed in place container.
A fish is in the refrigerator. The description is "It's a blue herring. Delicious!"
A pie is in the refrigerator. The description is  "A meat pie that looks like it came out of the oven just this morning."
The fish and the pie are edible.

The stool is an enterable portable supporter in the kitchen. The description is "It's a stool that you can stand on."

The toaster is a fixed in place device. The description is "The toaster turns bread into toast. [if the toaster is plugged in]It is plugged in.[else]It is unplugged.[end if]". The toaster can be plugged in or unplugged. The toaster is unplugged. [TODO: the toaster needs to become more interesting.]

South of the Hall is the Back Entryway. There is a blue key in the back entryway. There is a locked door called the back door. The back door is south of the back entryway. The blue key unlocks the back door. The description of the back entryway is "The back entryway to your house. It's a tiny room with a coat rack and a trash can being the most notable scenery. The hall is to the North, the backyard to the South." The coat rack and the trash can are scenery in the back entryway.

South of the back door is the Backyard. In the backyard is a stick. The description of the backyard is "Your backyard is so well-manicured that all it contains is grass and a stick. Your house is to the north." Grass is scenery in the backyard.


Section 2 - Second Floor

Above the Hall is a room called the Upstairs Hall. The description of the Upstairs Hall is "The second floor of your house. Stairs lead down. The study is west, and the bathroom is east."
The staircase is below the Upstairs Hall.

West of the Upstairs Hall is the Study. The description of the Study is "Where you study. The hall is east."
North of the Study is a door called the closet door. North of the closet door is a room called The Closet. The closet door is open. The description of the Closet is "A small room. The hall is south."

East of the Upstairs Hall is the Bathroom. The description of the Bathroom is "It's just a bathroom."
The mirror is scenery in the bathroom. The description of the mirror is "You can see your own reflection in the mirror. [if the player is wearing some hair gel]Your hair looks awesome with the hair gel on it.[else]You look the same as always.[end if]".
There is a medicine cabinet in the bathroom. The medicine cabinet is an openable closed container. There is a can of hair gel in the medicine cabinet. The description is "A can of hair gel. You can put it on. There's a warning on the gel that says 'EXTREMELY FLAMMABLE'."
[todo: what verbs will people try to use with hair gel? probably "spray" so we should write something]

[naming things unambiguously is annoying]
A dollop of hair gel is nowhere. A dollop of hair gel is wearable. Instead of taking off the dollop of hair gel: say "That's not how hair gel works."

Instead of wearing the can of hair gel:
	if the mirror is not visible:
		say "You can't put hair gel on without using a mirror! How unseemly.";
	else if the player is wearing a dollop of hair gel:
		say "You are already wearing hair gel. There's no point";
	else:
		say "Carefully, you spray the hair gel on your head while looking on the mirror. It looks great! You look very fancy.";
		now the player is wearing a dollop of hair gel.

Instead of opening or closing the medicine cabinet when the player is not on the stool:
	say "You're not tall enough to reach the medicine cabinet. Drat!"

[TODO: mention the basement when you're in the hall]
Below the Hall is the Basement. There is a door called The Tunnel of Extraction. It is open. It is not openable. It is west of the Basement. [???] The description is "A long, winding tunnel. It used to be used to extract minerals and stuff. Now, it's probably still useful for extracting other things."

The description of the Basement is "The dark basement of your house. The hall is upstairs. The Tunnel of Extraction is to the west."

The House is a region. The Bedroom and the Kitchen and the Hall and the Upstairs Hall and the Study and the Back Entryway and the Closet and the Bathroom and the Basement are in the House.

Part 3 - Between

West of the bedroom is a door called the Side Door. West of the side door is a room called The Garden. The side door is closed.
In the garden is a locked closed container called the Shed.
The roof of the Shed is part of The Shed. On top of the Roof is a bucket. The bucket is an unopenable open container.

The description of the Shed is "A narrow rusty shed. [if the player is on the stool]On the shed's roof, you can see [a list of the things on the roof of the shed].[else]The shed is really tall and you can't see above it.[end if]".

A rule for reaching inside the roof of the shed:
	if the player is not on the stool:
		say "You can't reach the roof of the shed.";
		deny access;
	allow access.

West of the Garden is the Outskirts of Town. The description of the Outskirts of Town is "There's less town here than elsewhere. The garden is east. The space center is north. The road is west."
North of the Outskirts of Town is the Space Center.
North of the Space Center is the Launch Pad.
West of the Outskirts of Town is the Road.
The description of the Road is "It's a road, like what people travel on. The outskirts of town are to the east. To the North you can see a fork in the road. The stream is west."
North of the road is a room called Further Along the Road. The description of Further Along the Road is "More road! The road goes south. To the west there's a parking lot."
West of Further Along the Road is the Parking Lot. The description of Parking Lot is "Where cars park, except there aren't any cars today. The road is to the east." [TODO: the player's car]
North of Further Along is the Abandoned Train Station. The description of Abandoned Train Station is "No trains."
East of the Abandoned Train station is the Control Room. The description of Control Room is "Where things get controlled."

Abandoned Warehouse is a room. West of the Town Square is the warehouse. The Abandoned Warehouse is south of the Road. The description is "The warehouse is old and abandoned.It is big and extends south. Not much more to say. The Road is to the North. The Tunnel of Extraction is below. There are holes in the wall to the East and West." The Tunnel of Extraction is below the warehouse.

South of the Abandoned Warehouse is a room called A Spooky Lair. 
The description of the lair is "A lair in which a demonic ritual might be held. There is a table with a pentagram drawn on it."
The table is scenery in the Spooky lair. The table is a supporter. There is a candle on the table. The candle is lit. A sacrificial knife is on the table. The description of the sacrificial knife is "A knife that looks like it might be used in a demonic ritual - or, you know, for cutting stuff".
A snake is a kind of animal. There are 4 snakes in the spooky lair.

Instead of taking or touching the candle when the player is wearing a dollop of hair gel:
	say "You touch the candle. The flame leaps onto your hair. Boom!";
	conclude with 17.
	
[i think we can't allow taking the candle then going to the bathroom?]
Instead of taking the candle:
	say "You feel like taking the candle will disrupt the rituals here and curse you and your descendants. Probably better not to disturb it."

Test candle with "e / e / get stool / w / n / e / put stool down / get on stool / open cabinet / get gel / put on gel / w / d / d / w / s / get candle".

Part 4 - Nature

Section 1 - Pirhanas

West of the Road is By the Stream. The description of By the Stream is "There's a stream, makein whatever sound water makes. There's also a scary warning sign." The sign is scenery in By the Stream. The description is "The sign says BEWARE OF PIRANHAS." A thing called the stream is scenery in By the Stream. The description is "It's a stream of water." Understand "water" as the stream.

Instead of entering the stream: say "Water is nice, but out here? Maybe in the privacy of your own home you'd reconsider."

[Filling is an action applying to one carried thing and requiring light. Instead of filling something: say "That doesn't make sense."

Instead of filling the bucket:
]	
	
Section 2 - Bear

South of By the Stream is a Clearing. The description of the Clearing is "It's very clear here. The edge of the woods is to the west. A hole that leads into the abandoned warehouse is to the east. There's a stream to the north."

West of the Clearing is the Edge of the Woods. The description of the Edge of the Woods is "The woods start here and extend to the west. There's a clearing to the east."
West of the Edge is a room called the Woods. The description of the Woods is "There's lots of trees. The edge of the woods is to the east. Going south, you can enter a hunting lodge." Trees are scenery in the Woods. The description is "The trees have bark and leaves." Understand "bark" and "leaves" as trees.

Instead of going nowhere from the Woods: say "Too many trees. You'd get lost."

South of the Woods is the Hunting Grounds. The description of the Hunting Grounds is "Where hunters hunt things, as long as it's the right season. The woods are to the north. You can head into the Hunting Lodge to the south."

South of the Hunting Grounds is the Hunting Lodge. The description of the Hunting Lodge is "Where hunters rest or something. The exit is north." Instead of going outside from the Hunting Lodge, try going north.

East of the clearing is the abandoned warehouse.

The grizzly bear is a neuter animal. The bear can be asleep or awake. The bear is awake.

To decide whether the woods are accessible:
	if the bear is asleep, decide yes;
	if the time machine's use count is not 0, decide yes;
	decide no.

Every turn when the player can see the bear and the bear is awake:
	say "The grizzly bear [one of]tries to catch an insect as it flies by[or]stares off into the distance[or]menacingly bares its teeth[or]looks profoundly bored[at random]."
		
Instead of going to the woods when not the woods are accessible:
	if the bear is in the Woods:
		say "You're too scared of the bear to go there.";
	else:
		say "As you walk into the woods, a large grizzly bear shows up, baring (bear-ing?) its teeth at you. You hastily take three steps back.";
		say "The bear seems to be guarding the entrance to the woods. Seems like it would be awfully difficult to get through here unless the bear were somehow distracted. With food, maybe?";
		now the bear is in the Woods.

[TODO: implement the "poke" verb]

Instead of attacking the bear:
	if the player is holding the stick:
		say "You take your stick and poke the bear. It wakes up and promptly eats you.";
		conclude with 24;
	else:
		say "With your bear (*ahem*) bare hands? You're kind of dumb, but not *that* dumb."

Test bear with "e / s / take key / unlock door / open door / s / take stick / n / n / e / open fridge / take fish / w / d / w / w / w / w / throw fish / z / z / z / w / attack bear".

To decide if the fish is ready to be thrown:
	if the player is in the Edge of the Woods and the bear is in the Woods:
		decide yes;
	decide no.

[TODO: implement "throw fish west" or "throw fish to bear" something]
Instead of dropping the fish when the fish is ready to be thrown:
	say "You throw the fish to the west. The bear looks at the fish curiously.";
	now the fish is nowhere;
	the bear eats the fish in one turn from now.

At the time when the bear eats the fish:
	If the player is in the edge of the woods:
		say "The bear finally decides to eat the fish, in a big gulp.";
	the bear rubs its belly in zero turns from now. [??]
	
At the time when the bear rubs its belly:
	If the player is in the edge of the woods:
		say "The bear rubs its belly sleepily. Maybe it'll fall asleep soon.";
	the bear falls asleep in zero turns from now. [??]
	
At the time when the bear falls asleep:
	If the player is in the edge of the woods:
		say "The bear flops onto its full stomach and starts snoring.";
	now the bear is asleep.


Part 5 - Town

South of the Outskirts of Town is the Town Square.
South of the Town Square is a door called the Mad Scientist's Grand Entrance. south of the Mad Scientist's grand entrance is the Mad Scientist's house.
The description of the Mad Scientist's House is "A house filled with so many useless gadgets the like of which you've never seen. There are tubes, filling two thirds of the room. High up on the wall there is a shelf. Taking up one entire wall of the room is an enormous amplifier." Gadgets and tubes and a tool shelf and an amplifier are scenery in the Mad Scientist's house. A door called a ladder is above the mad scientist's house. The ladder is open and unopenable. [TODO: climb ladder / go up ladder / use ladder]
[TODO: suppress shelf description]
The description of the shelf is "A high-up shelf that you imagine stores the mad scientist's secrets.  [if the player is on the stool]On the tool shelf, you can see [a list of the things on the shelf]. That's disappointing[else]It's so high up that you can't see on it[end if]." The shelf is a supporter. A small tool box and a bottle of soylent are on the shelf. The small tool box is an openable closed container. Super glue is in the small tool box. Super glue and soylent are edible. [TODO: if you eat the soylent, it tastes good.]
The description of soylent is "A full nutritional meal replacement. It's made of people." The description of the super glue is "Super glue. It has a warning: EXTREMELY STICKY. Unfortunately, the cap seems to be super glued on, so it's not going to be much use to you." The super glue can be cut or whole. The glue is whole.
Instead of cutting the super glue:
	If the player has the knife:
		if the super glue is whole:
			say "You use the sacrificial knife to cut the super glue's tip right off. Glue gurgles out of the tube viscously.";
			now the glue is cut;
			[The glue recongeals in 3 turns from now.]
		else:
			say "That seems hard to do without gluing your fingers together.";
	else:
		say "With your bare hands??"
[At the time when the glue recongeals:
	The glue is now whole.
	If the player is holding the glue:
		say "The tube of super glue appears to have dried enough glue to glue itself back together.";]
Instead of eating the super glue:
	if the super glue is whole:
		say "That doesn't look very edible right now. Maybe if you could actually squeeze it into your mouth?";
	else:
		say "You squeeze the tube of super glue into your mouth. It tastes like candy! Shortly thereafter, it starts to taste like your throat is glued shut. Maybe this wasn't a great idea...";
		conclude with 19
		
A rule for reaching inside the shelf:
	if the player is not on the stool:
		say "You can't reach the shelf.";
		deny access;
	allow access.

Test glue with "e / e / take stool / w / down / go through tunnel / s / get knife / n / e / open entrance / s / put down stool / get on stool / get box / open box / get glue / cut glue / eat glue"

Above the ladder is the Mad Science Laboratory.
The time machine is a device in the Mad Science Laboratory. The time machine has a number called the use count. The time machine's use count is initially 0.
