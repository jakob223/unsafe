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

The Bedroom is a room. The description is "It's your bedroom. It's not very interesting. The hall is to the east. The side door leads out of the house to the West. [first time]You're lying in your bed, just having woken up.[only]".
The nightstand is scenery in the Bedroom. There is an iPod on the nightstand. The iPod can be playing. The iPod is not playing. The description of the iPod is "It's an iPod touch, third-generation, maybe? [if playing]It's playing your favorite song.[end if]".

test platform with "get ipod / e / u / w / open drawer / get earbuds / e / d / d / w / n / n / n"

East of the Bedroom is a room called the Hall. The description of The Hall is "The hall in the middle of your house. Your bedroom is to the West. The staircase leading upwards is to the North. The back entryway is to the South. The kitchen is to the East.[if the brown key is in the hall] There is a muddy brown key hanging from a hook on the wall.[end if] You can also go down to the basement from here." The muddy brown key is in the hall.

North of the Hall is the Staircase. The Staircase is an open door. The staircase is not openable.
Understand "stairs" as the staircase.
Instead of climbing the staircase:
	try going north.

Section 2 - Kitchen

East of the Hall is the Kitchen.
The toaster, the cabinet, the refrigerator, and the stool are in the kitchen.
Understand "fridge" as the refrigerator.
Understand "pull out [something]" as opening.
The cabinet is a closed openable fixed in place container. The description is "A cabinet with a top, middle, and bottom drawer."
The top drawer, the middle drawer, and the bottom drawer are closed openable containers. The top drawer, the middle drawer, and the bottom drawer are in the cabinet. [TODO: improve the drawer situation]
In the middle drawer is a big tupperware. The big tupperware is a closed openable fixed in place container. 
understand "bread" as the loaf.
In the big tupperware is a loaf of bread. The loaf can be wrapped or unwrapped. The loaf is wrapped. The description of the loaf is "A loaf of bread, whole grain and fresh from the bakery. It's pre-sliced! [if the bread is wrapped]It's tightly wrapped in plastic[else]It smells delicious[end if]."

Instead of eating the loaf:
	if the bread is wrapped:
		say "You can't eat this, it's wrapped in plastic.";
	else:
		say "You take a slice off of the loaf of bread and eat it. It tastes delicious! Probably even better toasted though.";

A slice of bread is a kind of edible thing. A slice of bread can be toasted. The description of a slice of bread is "[if toasted]A piece of toast - scrumptious![else]A slice of bread.[end if]".

Instead of inserting something into the toaster:
	If the noun is the fork and the toaster is plugged in and the toaster is done:		
		say "You stick the fork in the toaster, hoping it will help you remove your toast. Unfortunately, the toaster is electrified and as soon as your fork touches the coil you are electrocuted. You'll never get to eat that delicious toast... :([line break]";
		conclude with 24;
	else if the button is active:
		say "The toaster is hard at work, don't bother it.";
	Else if the noun is not the loaf of bread:
		say "That's not what you're supposed to put in a toaster!";
	else if the bread is wrapped:
		say "You need to unwrap that bread before you can put it in the toaster.";
	else if the toaster's slice count is 2:
		say "The toaster is full. Probably you don't want to overload it.";
	else:
		say "You put a slice of bread in the toaster.";
		increase the toaster's slice count by 1;
Instead of opening the bread: [unwrap means open]
	say "You take off the plastic wrap and now the bread smells heavenly.";
	now the bread is unwrapped;
	
The toaster is a fixed in place thing. 
The toaster has a number called its slice count. The toaster's slice count is initially 0.
The description is "The toaster turns bread into toast. There is a button on the front of the toaster labelled 'TOAST'. [line break]The toaster [if the toaster is plugged in]is plugged in.[else]is unplugged.[end if][if the toaster's slice count is greater than 0] It has [the toaster's slice count] slice[s] of [the toaster's content] in it.[end if]".
The toaster can be plugged in or unplugged. The toaster is unplugged. The toaster can be done. The toaster is not done.

To say the toaster's content:
	if the toaster is done:
		say "toast";
	else:
		say "bread";
		
Understand "plug [something] in" as plugging.
Understand "plug in [something]" as plugging.
Understand "plug [something]" as plugging.
Understand "unplug [something]" as unplugging.
Understand "plug [something] into the iPod" as plugging.
Understand "plug [something] into iPod" as plugging.
Understand "connect [something] to iPod" as plugging.
Understand "connect [something] to the iPod" as plugging.
Plugging is an action applying to one visible thing.
Unplugging is an action applying to one visible thing.

Carry out plugging:
	if the noun is the drain or the noun is the bathtub:
		say "You plug the drain.";
		now the drain is plugged;
	else if the noun is the toaster:
		say "You plug in the toaster.";
		now the toaster is plugged in;
	else if the noun is the earbuds and the player has the iPod:
		now the iPod is playing; [TODO: put (plugged into iPod) in the description]
		say "You plug the earbuds into the iPod. Your favorite song starts to play through them!";
		The song ends in five turns from now;
	else:
		say "You can't plug in [a noun].";

At the time when the song ends:
	if the player has the iPod:
		say "The iPod has stopped playing its song. Maybe it ran out of battery.";
		now the iPod is not playing.
	
Carry out unplugging:
	if the noun is the drain or the noun is the bathtub:
		say "You unplug the drain.";
		now the drain is unplugged;
	else if the noun is the refrigerator:
		say "You can't reach the outlet behind the refrigerator.";
	else if the noun is not the toaster:
		say "You can't plug in [a noun].";
	else if the toaster is done:
		say "You try to unplug the toaster but it seems to be stuck plugged in.";
	else if the button is active:
		say "The toaster is hard at work, don't bother it.";
	else:
		say "You unplug the toaster.";
		now the toaster is unplugged;

The TOAST button is an undescribed part of the toaster. The button can be active. The button is not active.
Instead of pushing the TOAST button:
	if the toaster is unplugged:
		say "Nothing happens. What did you expect from an unplugged toaster??";
	else if the toaster's slice count is 1:
		say "Wouldn't it be better to have 2 slices of toast than just one?";
	else if the toaster's slice count is 0:
		say "Nothing happens. This isn't a magical toaster - it turns BREAD into toast, not air.";
	else if the toaster is done:
		say "Do you want to set off a fire alarm or something? the toast is already done.";
	else if the button is active:
		say "The toaster is hard at work, don't bother it.";
	else:
		say "The bread recedes into the toaster, and the coils start to light up red. In just a minute, you'll have some tasty tasty toast.";
		the toaster beeps in two turns from now;
		now the button is active.

At the time when the toaster beeps:
	say "DING! The toast is ready. The toaster pops it out but malfunctions and the toast becomes stuck in the toaster.";
	now the toaster is done;
	now the button is not active;

[TODO: what if the player tries to take the toast out of the toaster with their hands?]
Test toaster with "open door / w / w / w / n / pull fork / take fork / s / s / d / u / e / open cabinet / open middle drawer / open big tupperware / get bread / unwrap bread / plug in toaster / put bread in toaster / put bread in toaster / press button / wait / wait / put fork in toaster"	
		

The refrigerator is a closed openable fixed in place container.
A fish is in the refrigerator. The description is "It's a blue herring. Delicious!"
A pie is in the refrigerator. The description is  "A meat pie that looks like it came out of the oven just this morning."
The fish and the pie are edible.

The stool is an enterable portable supporter in the kitchen. The description is "It's a stool that you can stand on."


South of the Hall is the Back Entryway. There is a blue key in the back entryway. There is a locked door called the back door. The back door is south of the back entryway. The blue key unlocks the back door. The description of the back entryway is "The back entryway to your house. It's a tiny room with a coat rack and a trash can being the most notable scenery. The hall is to the North, the backyard to the South." The coat rack and the trash can are scenery in the back entryway.

South of the back door is the Backyard. In the backyard is a stick. The description of the backyard is "Your backyard is so well-manicured that all it contains is grass and a stick. Your house is to the north." Grass is scenery in the backyard.


Section 3 - Second Floor

Above the Hall is a room called the Upstairs Hall. The description of the Upstairs Hall is "The second floor of your house. Stairs lead down. The study is west, and the bathroom is east."
The staircase is below the Upstairs Hall.

A quarter is a kind of thing. 
The description of a quarter is usually "An unremarkable quarter. Not anything fancy, it's from before state quarters were a thing."
West of the Upstairs Hall is the Study. The description of the Study is "Where you study. The hall is east." A desk is scenery in the study. 
The description of the desk is "It's a sturdy wooden desk. There's a drawer.".
1 quarter and a dime are on the desk. The description of the quarter is "Arkansas state quarter. Minted 2003. Looks pretty new for a 2003 quarter." The description of the dime is "Just a regular old dime. Minted 1994."
A desk drawer is part of the desk. The desk drawer is a closed openable container. There are earbuds in the desk drawer. The earbuds are wearable. The description of the earbuds is "The earbuds are red."
North of the Study is a door called the closet door. North of the closet door is a room called The Closet. The closet door is open. The description of the Closet is "A small room. The hall is south."

A wooden drawer is a kind of container. Every wooden drawer contains a quarter. Wooden drawers are usually closed. Wooden drawers are always openable.
In the closet is a chest of drawers. The description of the chest is "An old wooden chest of drawers, with 5 drawers."
A wooden drawer called the first drawer is part of the chest of drawers.
A wooden drawer called the second drawer is part of the chest of drawers.
A wooden drawer called the third drawer is part of the chest of drawers.
A wooden drawer called the fourth drawer is part of the chest of drawers.
A wooden drawer called the fifth drawer is part of the chest of drawers. The fifth drawer is open. [TODO: currently you can open 2 different drawers and then get both quarters with one command. We should disallow this.]

East of the Upstairs Hall is the Bathroom. The description of the Bathroom is "It's just a bathroom."
The mirror is a fixed in place thing in the bathroom. The description of the mirror is "You can see your own reflection in the mirror. [if the player is wearing some hair gel]Your hair looks awesome with the hair gel on it.[else]You look the same as always.[end if]".
There is a medicine cabinet in the bathroom. The medicine cabinet is an openable closed container. There is a can of hair gel in the medicine cabinet. The description is "A can of hair gel. You can put it on. There's a warning on the gel that says 'EXTREMELY FLAMMABLE'."
Understand the command "spray" as "wear" [for hair gel]

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

The bathtub is a fixed in place thing in the bathroom. The description of the bathtub is "It's a bathtub. Big enough to sit in comfortably or lie down in uncomfortably. The drain is [if the drain is plugged]plugged[else]unplugged[end if]. The faucet is [if the faucet is on]on[else]off[end if]."
The drain is a part of the bathtub. The drain can be plugged. The bathtub has a number called the water level. The water level is initially 0.
The faucet is a part of the bathtub. The faucet can be on or off.
Instead of switching on the faucet:
	say "You turn on the faucet. Water starts flowing out.";
	
	[TODO: deal with filling the tub]
Instead of switching off the faucet:
	say "You turn off the faucet. Water stops flowing.";
	


Section 4 - Basement

Below the Hall is the Basement. There is a door called The Tunnel of Extraction. It is open. It is not openable. It is west of the Basement. [???] The description is "A long, winding tunnel. It used to be used to extract minerals and stuff. Now, it's probably still useful for extracting other things."

The description of the Basement is "The dark basement of your house. The hall is upstairs. The Tunnel of Extraction is to the west."

A vat is in the basement. The vat is a closed openable fixed in place container. There is rocket fuel in the vat. The description of the vat is "A large vat holding a greenish liquid. Who knows how long it's been here?"
A bucketful of rocket fuel is a thing. The bucketful is nowhere.
Instead of opening the vat:
	say "You lift the large plastic lid off of the vat, revealing the pungent rocket fuel beneath.";
	now the vat is open.
Instead of inserting the bucket into the vat:
	if the piranha-infested water is in the bucket:
		say "You should probably empty the bucket out first.";
	else:
		say "You dip the bucket in the vat of rocket fuel and come out with a fair amount. This stuff is lighter than it looks!";
		now the bucketful is in the bucket.
There is a key cabinet in the basement. The key cabinet is a fixed in place openable container. The description of the key cabinet is "A small cabinet that looks like it once held keys for all the rooms in the house.[if open] Now it looks like there aren't very many keys in it at all.[end if]". There is a small metal key in the key cabinet. 
Instead of taking the key cabinet:
	say "(the small metal key)";
	try taking the small metal key.

The House is a region. The Bedroom and the Kitchen and the Hall and the Upstairs Hall and the Study and the Back Entryway and the Closet and the Bathroom and the Basement are in the House.

Part 3 - Between

Section 1 - Garden

West of the bedroom is a door called the Side Door. West of the side door is a room called The Garden. The side door is closed.
In the garden is a locked closed container called the Shed. The brown key unlocks the shed.
The roof of the Shed is part of The Shed. On top of the Roof is a bucket. The bucket is an unopenable open container.

Understand the command "dip" as "put".
Understand the command "fill" as "put".
[TODO: pouring the bucket out into the tub or the rocket]

The description of the Shed is "A narrow rusty shed. [if the player is on the stool]On the shed's roof, you can see [a list of the things on the roof of the shed].[else]The shed is really tall and you can't see above it.[end if]".

The cage is a transparent open lockable container. The small metal key unlocks the cage. The description of the cage is "A white metal cage that looks to have held a pet rabbit long ago." The cage is in the shed.

A rule for reaching inside the roof of the shed:
	if the player is not on the stool:
		say "You can't reach the roof of the shed.";
		deny access;
	allow access.

Section 2 - Other stuff

West of the Garden is the Outskirts of Town. The description of the Outskirts of Town is "There's less town here than elsewhere. The garden is east. The space center is north. The road is west."
North of the Outskirts of Town is the Space Center.
North of the Space Center is the Launch Pad.
West of the Outskirts of Town is the Road.
The description of the Road is "It's a road, like what people travel on. The outskirts of town are to the east. To the North you can see a fork in the road. The stream is west."
North of the road is a room called Further Along the Road. The description of Further Along the Road is "More road! [If the fork is stuck]There's a fork in the road here. [end if]The main road goes North and South. To the West there's a parking lot."
The fork is a thing. The fork can be stuck. The fork is stuck. The fork is in further along the road. The fork is undescribed.
Instead of taking or pulling the fork when the fork is stuck:
	say "You try to pull the fork out of the road, but it's pretty stuck. Your hand slips off the fork just as you feel it has dislodged slightly from the road.";
	now the fork is not stuck.

West of Further Along the Road is the Parking Lot. The description of Parking Lot is "Where cars park, except there aren't any cars today. The road is to the east." [TODO: the player's car]
North of Further Along is the Abandoned Train Station. The description of Abandoned Train Station is "No trains."
East of the Abandoned Train station is the Control Room. The description of Control Room is "Where things get controlled."

Section 3 - Warehouse

Abandoned Warehouse is a room. West of the Town Square is the warehouse. The Abandoned Warehouse is south of the Road. The description is "The warehouse is old and abandoned. It is big and extends south. Not much more to say. The Road is to the North. The Tunnel of Extraction is below. There are holes in the wall to the East and West." The Tunnel of Extraction is below the warehouse.

South of the Abandoned Warehouse is a room called A Spooky Lair. 
The description of the lair is "A lair in which a demonic ritual might be held. There is a table with a pentagram drawn on it."
The table is scenery in the Spooky lair. The table is a supporter. There is a candle on the table. The candle is lit. A sacrificial knife is on the table. The description of the sacrificial knife is "A knife that looks like it might be used in a demonic ritual - or, you know, for cutting stuff".
A snake is a kind of animal. There is a snake named Alice in the lair. There is a snake named Bob in the lair. There is a snake named Charlie in the lair. There is a snake named David in the lair.

Instead of taking or touching the candle when the player is wearing a dollop of hair gel:
	say "You touch the candle. The flame leaps onto your hair. Boom!";
	conclude with 17.
	
[i think we can't allow taking the candle then going to the bathroom?]
Instead of taking the candle:
	say "You feel like taking the candle will disrupt the rituals here and curse you and your descendants. Probably better not to disturb it."

Test candle with "e / e / get stool / w / n / e / put stool down / get on stool / open cabinet / get gel / put on gel / w / d / d / w / s / get candle".

A mouse is a kind of animal.
A jar is a kind of openable container. Every jar contains a mouse. Jars are usually closed.

There is an ancient cabinet in the spooky lair. The description of the ancient cabinet is "The ancient cabinet seems like it could have been here for millenia." The ancient cabinet is a closed openable container. There are 3 jars in the ancient cabinet. The ancient cabinet is fixed in place.

the can't take other people rule does nothing when taking the mouse.

Instead of inserting something into the cage:	
	if the noun is not a mouse:
		continue the action;
	if the cage is closed:
		say "You can't put a mouse in a closed cage!";
	else if the player is in the lair:
		say "A rattlesnake rushes into the cage and hungrily slurps up the mouse before it even has time to get its bearings.";
		now the noun is nowhere;
		move Charlie to the cage;
		The snake leaves the cage in 2 turns from now;
	else:
		say "The mouse scurries out of the cage and runs off to wherever it is mice go. Oh well, there are probably more mice wherever that one came from.";
		now the noun is nowhere.

At the time when the snake leaves the cage:
	if the cage is closed and the cage is locked:
		say "Angry at being locked up and not wanting to be a pet, the snake breaks through the cage and attaches itself to your eye. You feeel the effects of the venom almost immediately.";
		conclude with 22;
	else if the location of the player is the location of the cage:
		say "The snake slithers out of the cage with remarkable speed[if the cage is closed], slamming the door open as it goes. Maybe you should lock it next time[end if].";
	move Charlie to the lair.

test cage with "e / get key / w / open door / w / unlock shed with key / open shed / get cage / e / e / d / get small key / w / s / put cage down / open ancient cabinet / get jar / open jar / get mouse / put mouse in cage / close cage / lock cage with small key"
	

Part 4 - Nature

Section 1 - Pirhanas

West of the Road is By the Stream. The description of By the Stream is "There's a stream, makein whatever sound water makes. There's also a scary warning sign." The sign is scenery in By the Stream. The description is "The sign says BEWARE OF PIRANHAS." A thing called the stream is scenery in By the Stream. The description is "It's a stream of water." Understand "water" as the stream.

Instead of entering the stream: say "Water is nice, but out here? Maybe in the privacy of your own home you'd reconsider."

The bucketful of piranha-infested water is a thing. The piranha-infested water is nowhere. [TODO: it has no article]
Instead of inserting the bucket into the stream:
	say "You dip the bucket in the water, coming out with a bucketful of water and a few.. pirhanas?!";
	now the piranha-infested water is in the bucket.
[TODO: you can't just pour the bucket out anywhere, or if you do the water goes away.]	

Section 2 - Trees

South of By the Stream is a Clearing. The description of the Clearing is "It's very clear here. The edge of the woods is to the west. A hole that leads into the abandoned warehouse is to the east. There's a stream to the north."

West of the Clearing is the Edge of the Woods. The description of the Edge of the Woods is "The woods start here and extend to the west. There's a clearing to the east."
West of the Edge is a room called the Woods. The description of the Woods is "There's lots of trees. The edge of the woods is to the east. Going south, you can see signs for a hunting lodge." Trees are scenery in the Woods. The description is "The trees have bark and leaves." Understand "bark" and "leaves" as trees.

Instead of going nowhere from the Woods: say "Too many trees. You'd get lost."

South of the Woods is the Hunting Grounds. The description of the Hunting Grounds is "Where hunters hunt things, as long as it's the right season. The woods are to the north. You can head into the Hunting Lodge to the south."

South of the Hunting Grounds is a door called the hunting lodge entrance. South of the entrance is a room called the Hunting Lodge. The description of the Hunting Lodge is "Where hunters rest or something. One wall is covered in animal heads - a deer, a moose, a lion(!). Kinda creepy, to be honest. The exit is north." Instead of going outside from the Hunting Lodge, try going north. The moose head is a wearable portable thing in the hunting lodge. The deer head and the lion head are things in the hunting lodge. The deer head is portable. [TODO: don't tell the player the things again]

To decide if it is hunting season:
	if the time machine's use count is greater than 2:
		decide yes;
	decide no;
Instead of wearing the moose head:
	if the player is in the hunting grounds or the player is in the woods:
		say "You slip on the snow while trying to put the moose head over your own. Maybe you should do this on more stable ground.";
	else:
		continue the action.

The moose head can be accustomed. The moose head is not accustomed.
Instead of going somewhere when the player is wearing the moose head and the moose head is not accustomed:
	say "Wow, you nearly fell over. Walking while wearing a taxidermied moose head is hard. Maybe try that again?";
	now the moose head is accustomed.

Instead of going to the hunting grounds when the player is wearing the moose head and it is hunting season and the moose head is accustomed:
	say "You go into the hunting grounds, foolishly forgetting that there is a moose head atop your own. The hunters waste no time before shooting you.. at least you got a quick death.";
	conclude with 36;


test moose with "e / u / w / get quarter / n / get quarter / open second drawer / get quarter / s / e / d / d / w / e / open entrance / s / u / go into time machine / insert quarter into slot / insert quarter into slot / insert quarter into slot / press button / get out /d / n / w / w / w / w / s / open entrance / s / get moose head / wear moose head / n / n"

Section 3 - Bear

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

Understand the command "poke" as "attack".
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
The description of Town Square is "The Town Square stretches out in front of you. There are 10 or 20 unremarkable buildings that you couldn't care less about. South of you is the Mad Scientist's House. West, a hole in the wall leads into the Abandoned Warehouse. North of here, the town thins out."
South of the Town Square is a door called the Mad Scientist's Grand Entrance. south of the Mad Scientist's grand entrance is the Mad Scientist's house.
The description of the Mad Scientist's House is "A house filled with so many useless gadgets the like of which you've never seen. There are tubes, filling two thirds of the room. High up on the wall there is a shelf. Taking up one entire wall of the room is an enormous amplifier." Gadgets and tubes and a tool shelf and an amplifier are scenery in the Mad Scientist's house. A door called a ladder is above the mad scientist's house. The ladder is open and unopenable. [TODO: climb ladder / go up ladder / use ladder]
[TODO: suppress shelf description]
The description of the shelf is "A high-up shelf that you imagine stores the mad scientist's secrets.  [if the player is on the stool]On the tool shelf, you can see [a list of the things on the shelf]. That's disappointing[else]It's so high up that you can't see on it[end if]." The shelf is a supporter. A small tool box and a bottle of soylent are on the shelf. The small tool box is an openable closed container. Super glue is in the small tool box. Super glue and soylent are edible. [TODO: if you eat the soylent, it tastes good.]
The description of soylent is "A full nutritional meal replacement. It's made of people." 

The super glue can be cut or whole. The glue is whole.
The description of the super glue is "A tube of super glue. It has a warning: EXTREMELY STICKY. [if the glue is whole]Unfortunately, the cap seems to be super glued on, so it's not going to be much use to you.[else]It has been cut, and glue is slowly seeping out of the tube.[end if]".
Instead of cutting the super glue:
	If the player has the knife:
		if the super glue is whole:
			say "You use the sacrificial knife to cut the super glue's tip right off. Glue gurgles out of the tube viscously.";
			now the glue is cut;
			The glue recongeals in three turns from now;
		else:
			say "That seems hard to do without gluing your fingers together.";
	else:
		say "With your bare hands??"
		
At the time when the glue recongeals:
	Now the glue is whole;
	If the player has the glue:
		say "The tube of super glue appears to have dried enough glue to glue itself back together."
		
Instead of eating the super glue:
	if the super glue is whole:
		say "That doesn't look very edible right now. Maybe if there were an opening and you could actually squeeze it into your mouth?";
	else:
		say "You squeeze the tube of super glue into your mouth. It tastes like candy! Shortly thereafter, it starts to taste like your throat is glued shut. Maybe this wasn't a great idea...";
		conclude with 19
		
A rule for reaching inside the shelf:
	if the player is not on the stool:
		say "You can't reach the shelf.";
		deny access;
	allow access.

Test glue with "e / e / take stool / w / down / go through tunnel / s / get knife / n / e / open entrance / s / put down stool / get on stool / get box / open box / get glue / cut glue / eat glue"

Above the ladder is the Mad Science Laboratory. Understand "Lab" as the mad science laboratory.
Instead of climbing the ladder, try going up.
The time machine is a fixed in place enterable container in the Mad Science Laboratory. The time machine has a number called the use count. The time machine's use count is initially 0. [TODO: time machine contents are announced :/]
The red button is a fixed in place thing in the time machine. The coin slot is a fixed in place closed unopenable container in the time machine. The coin slot has a number called the credits. The coin slot's credits is initially 0.
[TODO: like, any description around here]
Instead of inserting something into the coin slot: [TODO: disallow inserting more than one coin at once]
	If the noun is not a quarter:
		say "That doesn't fit in the slot!";
		stop the action;
	say "You put a quarter in the slot. It makes a satisfying *clink*.";
	now the noun is nowhere;
	increase the coin slot's credits by 1.
	
Instead of pushing the button:
	if the coin slot's credits is 0:
		say "You need to insert a quarter first.";
	else:
		say "You feel yourself pressed back into the seat, and the world swirls around you. The sun sets and rises again 14 times. And then, suddenly, the world is calm."; [TODO: change number based on number of coins] [TODO: time machine should have a label explaining its use]
		increase the time machine's use count by the coin slot's credits;
		now the coin slot's credits is 0.

[ TODO: rules around time travel and the pie]

