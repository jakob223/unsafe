"Unsafe" by Brian Chen and Jakob Weisblat

The story description is "It's a puzzle".
The release number is 7.
The story creation year is 2019.

Part 1 - Meta

test all with "test candle / restart / test bear / restart / test piranhas / restart / test toaster / restart / test fly / restart / test pie / restart / test space / restart / test cage  / restart / test glue / restart /  test moose / restar / test trees / restart / test platform / restart / test car / restart / test running "

Instead of going through a closed door:
	say "You can't go through [the door gone through] because it's closed."


When play begins:
	now the right hand status line is "Moves: [turn count - 1]"; [Inform's turn count basically says what number the "current move" is, so we subtract one.]
	
To conclude with (par - a number):
	now the right hand status line is "Moves: [turn count]";
	say "[paragraph break]";
	end the story saying "You have died";
	say "You've reached one of this game's 14 endings! In that game you used [turn count] moves. The optimal number of moves is [par].";
	if turn count is less than par:
		say "Uh-oh, the puzzle is broken! Send us an email!";
	else if turn count is par:
		say "Great job, you got the optimal number of moves!";
	else:
		say "You can reach this ending more quickly!"

[I think this blocks what we want it to, but the output is suboptimal, see §6.15 of the Recipe Book]
Instead of taking something when the number of entries in the multiple object list is greater than 1:
	say "One thing at a time!".

Section 1 - The Player

The player is wearing pants, underwear, socks, a shirt, work shoes, a belt, a hat, and a jacket.	
The description is "You look like you could be in a cartoon. You're wearing [a list of things worn by the player]."
The description of the work shoes is "Shoes you wear to work. They look professional, but you can't do as much physical activity in them."

Instead of going from the house when the jacket is not worn:
	say "You step ouside, but you shiver and decide you need a jacket. You step back inside."

Instead of taking off the jacket when the player is not in the house:
	say "It's cold out here. You'd rather keep that on."

Instead of taking off socks when the player is wearing work shoes or the player is wearing the pair of running shoes:
	say "You need to take your shoes off first!"
Instead of taking off a shirt when the player is wearing a jacket:
	say "You need to take your jacket off first!"
Instead of taking off pants when the player is wearing shoes:
	say "You need to take your shoes off first!"
Instead of taking off pants when the player is wearing a belt:
	say "You need to take your belt off first!"
Instead of taking off pants when the player is wearing a belt:
	say "You need to take your belt off first!"
Instead of taking off underwear when the player is wearing pants:
	say "You need to take your pants off first!"

Section 2 - Liquids and Dumping

A liquid is a kind of thing.
Instead of taking a liquid:
	say "You try to pick up [the noun] but it slips through your fingers."

Dumping is an action applying to one visible thing.
Understand "dump [something]" as dumping.
Understand "dump [something] in tub" as dumping.
Understand "dump [something] out" as dumping.
Understand "dump out [something]" as dumping.
Understand "pour out [something]" as dumping.
Understand "pour [something]" as dumping.

Carry out dumping:
	say "That doesn't make sense."
	
Instead of dumping the bucket:
	If the player is in the bathroom and the piranha-infested water is in the bucket:
		say "You dump the water and the piranhas into the tub. ";
		if the drain is plugged:
			say "The piranhas swim around in the bathwater.";
			move the swimming piranhas to the bathtub;
			increase the water level by 1;
		else:
			say "The water, and the piranhas with it, flow out the drain.";
		now the piranha-infested water is nowhere; 
	else if the player is in the house:
		say "That doesn't really seem like a good idea here.";
	else if the rocket fuel	 is in the bucket:
		if the player is in the launch pad:
			try inserting the fuel into the spaceship;
		else:
			say "You pour the rocket fuel out onto the ground. It immediately starts to evaporate. Smells kinda funky.";
			now the fuel is nowhere;
	else if the piranha-infested water is in the bucket:
		say "You unceremoniously dump the piranhas and the water out of the bucket. Good riddance.";
		now the piranha-infested water is nowhere;
	else:
		say "You can't dump an empty bucket."

section 3 - Using

using is an action applying to one thing.
carry out using:
	say "You'll have to be more specific."
Understand "use [something]" as using.
Understand "play [the iPod]" as using.

Instead of using the ladder:
	try going up.
Instead of using the iPod:
	if the iPod is playing:
		say "Often people use music playing devices by listening to the place the music is coming from.";
	else:
		say "You try playing a song but you think the speaker in the iPod is broken. Maybe plug in headphones or something?"
Instead of using the stool:
	if the player has the stool:
		try dropping the stool;
		say "Now you might want to get on the stool.";
	else:
		try entering the stool.
Instead of using the car:
	if the player is in the car:
		say "Try going in a direction.";
	else:
		try entering the car.
Instead of using the hair gel:
	try wearing the hair gel.


section 4 - help

Include version 1 of Basic IF Help by Andrew Plotkin.

Part 2 - House

Section 1 - First Floor

The Bedroom is a room. The description is "It's your bedroom. It's not very interesting. The hall is to the East. The side door ([if the side door is open]open[else]closed[end if]) leads out of the house to the West. [first time][paragraph break]You've just gotten out of your bed, having woken up from a nap.[only]".
The bed is scenery in the Bedroom. The description is "It's just your bed." Instead of entering the bed: say "You don't feel sleepy."
The nightstand is scenery in the Bedroom. There is an iPod on the nightstand. The iPod can be playing. The iPod is not playing. The description of the iPod is "It's an iPod touch, third-generation, maybe? [if playing]It's playing your favorite song.[end if]". Instead of wearing the iPod, say "People tend to wear headphones these days; wearing iPods is less fashionable."

Instead of inserting the earbuds into the iPod:
	try plugging the earbuds.
test platform with "get ipod / e / u / w / open drawer / get earbuds / e / d / d / w / n / n / n / e / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button  / press button / press button / w / put on earbuds / put earbuds in ipod / get on edge"	

East of the Bedroom is a room called the Hall. The description of The Hall is "The hall in the middle of your house. Your bedroom is to the West. The staircase leading upwards is to the North. The back entryway is to the South. The kitchen is to the East. You can also go down to the basement from here.[if the brown key is in the hall][paragraph break]There is a muddy brown key hanging from a hook on the wall.[end if]". The muddy brown key is in the hall. The description is "It's a key, so it presumably unlocks something. It's brown."

North of the Hall is the staircase. The Staircase is an open door. The staircase is not openable. The staircase is scenery. The muddy brown key is undescribed.
After taking the muddy brown key:
	now the muddy brown key is described.
The description of the staircase is "Stairs that lead between the halls on the first and second floor of your home."
Understand "stairs" as the staircase.
Instead of climbing the staircase:
	try going North.

Section 2 - Kitchen

East of the Hall is the Kitchen.
The description of the Kitchen is "Where food happens. The hall is to the West."
The toaster, the cabinet, the refrigerator, and the stool are in the kitchen.
Understand "fridge" as the refrigerator.
Understand "pull out [something]" as opening.
The cabinet is a closed openable fixed in place container. The description is "A cabinet with a top, middle, and bottom drawer."
The top drawer, the middle drawer, and the bottom drawer are fixed in place closed openable containers. The top drawer, the middle drawer, and the bottom drawer are in the cabinet. cereal crumbs are a liquid in the top drawer. Instead of opening the bottom drawer, say "It's stuck. But you're pretty sure it's empty; you don't recall ever having used it."
Instead of taking the cereal crumbs, say "Those probably aren't worth your time."

In the middle drawer is a big tupperware container. The big tupperware is a fixed in place closed openable container. Understand "container" as the tupperware.
understand "bread" as the loaf. The description of the tupperware is "A tupperware around 12' by 8' by 6' deep. It could hold lots of food. It seems to be stuck to the drawer with honey or something."
Instead of taking the tupperware, say "It seems to be stuck to the drawer with honey or something. Probably best just to leave it there."
In the big tupperware is a loaf of bread. The loaf can be wrapped or unwrapped. The loaf is wrapped. The description of the loaf is "A loaf of bread, whole grain and fresh from the bakery. It's pre-sliced! [if the bread is wrapped]It's tightly wrapped in plastic[else]It smells delicious[end if]."
Understand "more bread" as the loaf of bread. Understand "another slice" as the loaf of bread.

Instead of eating the loaf:
	if the bread is wrapped:
		say "You can't eat this, it's wrapped in plastic.";
	else:
		say "You take a slice off of the loaf of bread and eat it. It tastes delicious! Probably even better toasted though.";

A slice of bread is a kind of edible thing. A slice of bread can be toasted. The description of a slice of bread is "[if toasted]A piece of toast - scrumptious![else]A slice of bread.[end if]".

Understand "use fork on toaster" as a mistake ("Try the verb INSERT.").
Instead of inserting something into the toaster:
	If the noun is the fork and the toaster is plugged in and the toaster is done:		
		say "You stick the fork in the toaster, hoping it will help you remove your toast. Unfortunately, the toaster is electrified and as soon as your fork touches the coil you are electrocuted. You'll never get to eat that delicious toast... :(";
		conclude with 24;
	else if the button is active:
		say "The toaster is hard at work, don't bother it.";
	else if the noun is the sacrificial knife:
		say "That seems too important to tarnish it by putting it in a toaster.[if the toaster is done] A might be more apropos.[end if]";
	else if the noun is not the loaf of bread:
		say "That's not what you're supposed to put in a toaster!";
	else if the bread is wrapped:
		say "You need to unwrap that bread before you can put it in the toaster.";
	else if the toaster's slice count is 2:
		say "The toaster is full. Probably you don't want to overload it.";
	else:
		say "You put a slice of bread in the toaster.";
		increase the toaster's slice count by 1;
Instead of going from the kitchen when the button is active:
	say "You can't leave the toaster unattended - what if the toast gets burnt?!"
Instead of opening the bread: [unwrap means open]
	if the player does not have the bread:
		say "You need to take the bread first.";
	else:
		say "You take off the plastic wrap and now the bread smells heavenly.";
		now the bread is unwrapped.
The toaster is a fixed in place thing. 
Instead of switching on the toaster:
	say "The toaster doesn't seem to have a switch. Just a button and a plug, and some slots for bread."

The toaster has a number called its slice count. The toaster's slice count is initially 0.
The description is "The toaster turns bread into toast. There is a button on the front of the toaster labelled 'TOAST'. [line break]The toaster [if the toaster is plugged in]is plugged in.[else]is unplugged.[end if][if the toaster's slice count is greater than 0] It has [the toaster's slice count] slice[s] of [the toaster's content] in it.[end if][if the toaster is done] The toast is ready to be eaten, should you be able to remove it.[end if]".
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

understand "use earbuds with iPod" as a mistake ("Try PLUGging IN the earbuds").
understand "use ipod with earbuds" as a mistake ("Try PLUGging IN the earbuds").

Carry out plugging:
	if the noun is the drain or the noun is the bathtub:
		say "You plug the drain.";
		now the drain is plugged;
	else if the noun is the toaster:
		say "You plug in the toaster.";
		now the toaster is plugged in;
	else if the noun is the earbuds:
		if the earbuds are connected:
			say "Those are already plugged in.";
		else if the player has the iPod:
			now the iPod is playing;
			now the earbuds are connected;
			say "You plug the earbuds into the iPod. Your favorite song starts to play through them!";
			The song ends in five turns from now;
		else:
			say "You can't plug the earbuds in unless you have something to plug them into.";
	else:
		say "You can't plug in [a noun].";

At the time when the song ends:
	if the player has the iPod:
		say "The iPod has stopped playing its song. Maybe it ran out of battery.";
		now the iPod is not playing.
The play button is part of the iPod.	
Carry out unplugging:
	if the noun is the drain or the noun is the bathtub:
		say "You unplug the drain.";
		now the drain is not plugged;
		if the water level is not 0:
			say "All the water in the bathtub drains out through the drain. That was faster than it should be. Gotta call the plumber eventually..";
			now the water level is 0;
		If the swimming piranhas are in the bathtub:
			now the swimming piranhas are nowhere;
	else if the noun is the refrigerator:
		say "You can't reach the outlet behind the refrigerator.";
	else if the noun is the earbuds and the player has the iPod:
		if the iPod is playing:
			say "You can't bring yourself to unplug the earbuds. Superstition or something.";
		else:
			say "You unplug the earbuds from the iPod.";
			now the earbuds are not connected;
	else if the noun is not the toaster:
		say "You can't unplug [a noun].";
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
	now the button is not active.

Instead of taking the toast button when the toaster is done:
	say "You can't reach into the thin toast hole. Maybe you could stick something in instead?"


Test toaster with "open door / w / w / w / n / pull fork / take fork / s / s / d / u / e / open cabinet / open middle drawer / open big tupperware / get bread / unwrap bread / plug in toaster / put bread in toaster / put bread in toaster / press button / wait / wait / put fork in toaster"	
		

The refrigerator is a closed openable fixed in place container.
A fish is in the refrigerator. The description is "It's a blue herring. Delicious!"
A pie is in the refrigerator. The description of the pie is "[if the pie is not aged]A meat pie that looks like it came out of the oven just this morning.[else]A meat pie that looks like it has been sitting out for a while. Maybe a bad idea to eat it.[end if]".
The fish and the pie are edible.

The stool is an enterable portable supporter in the kitchen. The description is "It's a stool that you can stand on." Instead of climbing the stool, try entering the stool.


South of the Hall is the Back Entryway. There is a blue key in the back entryway. There is a locked door called the back door. The back door is south of the back entryway. The blue key unlocks the back door. The description of the back entryway is "The back entryway to your house. It's a tiny room with a coat rack and a trash can being the most notable scenery. [if the Toyota key is tied]There is a Toyota key tied to the coat rack. [end if]The hall is to the North, the backyard to the South." The coat rack and the trash can are scenery in the back entryway. There is a right running shoe in the back entryway. The description is "The shoe goes on your right foot. You only run if you're wearing this shoe and its partner." There is a left running shoe in the Upstairs Hall. The description is "The shoe goes on your left foot. You only run if you're wearing this shoe and its partner."

The Toyota key is in the back entryway. The Toyota key can be tied. The Toyota key is tied. The description is "The key to your blue Toyota."
Untieing is an action applying to one visible thing.
Understand "untie [something]" as untieing.
Carry out untieing:
	say "That doesn't make any sense."

Instead of wearing the running shoes when the work shoes are worn:
	say "You should probably take your work shoes off first."
Instead of wearing the work shoes when the running shoes are worn:
	say "You should probably take off the running shoes first."
Instead of untieing the work shoes:
	say "These are velcro shoes, baby."
Instead of untieing the running shoes:
	say "You untie the running shoes.";
	now the running shoes are not laced.
Instead of untieing the Toyota key:
	say "You untie the Toyota key, but in your clumsiness it falls to the floor.";
	now the Toyota key is not tied.
Before taking the Toyota key:
	if the Toyota key is tied:
		say "The Toyota key is tied to the coat rack; you should untie it before you take it.";
		stop the action

The pair of running shoes is a wearable thing. The pair of running shoes is nowhere. The description is "Both of your running shoes, reunited."
Instead of wearing the left running shoe, say "You can't wear just one running shoe - that would simply be unstylish."
Instead of wearing the right running shoe, say "You can't wear just one running shoe - that would simply be unstylish."
Every turn when the player has the right running shoe and the player has the left running shoe:
	Now the left running shoe is nowhere;
	Now the right running shoe is nowhere;
	Now the player has the pair of running shoes.

South of the back door is the Backyard. In the backyard is a stick. The description of the backyard is "Your backyard is so well-manicured that all it contains is grass and a stick. Your house is to the North." Grass is scenery in the backyard.


Section 3 - Second Floor

Above the Hall is a room called the Upstairs Hall. The description of the Upstairs Hall is "The second floor of your house. Stairs lead down. The study is West, and the bathroom is East."
The staircase is below the Upstairs Hall.

A quarter is a kind of thing. 
The description of a quarter is usually "An unremarkable quarter. Not anything fancy, it's from before state quarters were a thing."
West of the Upstairs Hall is the Study. The description of the Study is "Where you study. The hall is East." A desk is scenery in the study. 
The description of the desk is "It's a sturdy wooden desk. There's a drawer.".
1 quarter and a dime are on the desk. The description of the quarter is "Arkansas state quarter. Minted 2003. Looks pretty new for a 2003 quarter." The description of the dime is "Just a regular old dime. Minted 1994."
A desk drawer is part of the desk. The desk drawer is a fixed in place closed openable container. There are earbuds in the desk drawer. The earbuds are wearable. The description of the earbuds is "The earbuds are red." The earbuds can be connected. The earbuds are not connected.
North of the Study is a door called the closet door. North of the closet door is a room called The Closet. The closet door is open. The description of the Closet is "A small room. The study is South."
Instead of examining the closet door:
	if the player is in the study:
		say "You look into the closet. Looks like a closet.";
	else:
		say "It looks like a door."
	
A wooden drawer is a kind of fixed in place container. Every wooden drawer contains a quarter. Wooden drawers are usually closed. Wooden drawers are always openable.
In the closet is a chest of drawers.
A wooden drawer called the first drawer is part of the chest of drawers. Understand "drawer 1" as the first drawer. Understand "top drawer" as the first drawer.
A wooden drawer called the second drawer is part of the chest of drawers. Understand "drawer 2" as the second drawer.
A wooden drawer called the third drawer is part of the chest of drawers. Understand "drawer 3" as the third drawer.
A wooden drawer called the fourth drawer is part of the chest of drawers. Understand "drawer 4" as the fourth drawer.
A wooden drawer called the fifth drawer is part of the chest of drawers. The fifth drawer is open. Understand "drawer 5" as the fifth drawer. [TODO: make it harder to not notice a drawer is open]
The description of the chest is "It's an old wooden chest with 5 drawers.[if the first drawer is open] The top drawer is open.[end if][if the second drawer is open] The second drawer is open.[end if][if the third drawer is open] The third drawer is open.[end if][if the fourth drawer is open] The fourth drawer is open.[end if][if the fifth drawer is open] The bottom drawer is open.[end if]". Instead of opening the chest, say "Which drawer do you want to open?".

East of the Upstairs Hall is the Bathroom. The description of the Bathroom is "It's just a bathroom. The Upstairs Hall is West."
The mirror is a fixed in place thing in the bathroom. The description of the mirror is "You can see your own reflection in the mirror. [if the player is wearing some hair gel]Your hair looks awesome with the hair gel on it.[else]You look the same as always.[end if]".
There is a medicine cabinet in the bathroom. The medicine cabinet is a fixed in place openable closed container. The description of the medicine cabinet is "A cabinet that could hold medicine and other bathroom-related stuff. It's far enough off the ground that you can't reach it unless you're standing on something, which is annoying." There is a can of hair gel in the medicine cabinet. The description is "A can of hair gel. You can put it on. There's a warning on the gel that says 'EXTREMELY FLAMMABLE'."
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

To say the water status:
	say "The drain is [if the drain is plugged]plugged[else]unplugged[end if]. The faucet is [if the faucet is on]on[else]off[end if]. ";
	if the water level is 0:
		say "The tub has no water in it.";
	else:
		say "The water is around [the water level]0% of the way up the edge of the tub.";
	if the water level is 10:
		say " the bathtub is overflowing into the bathroom. For some reason, you don't really care about this.";
	if the swimming piranhas are in the bathtub:
		say "A few piranhas are swimming peacefully around the tub.".
Instead of inserting the bucket into the bathtub:
	say "You don't really feel like dirtying your pristine tub with the garden bucket."
Every turn while the water level is greater than 9 and the drain is plugged:
	if the player is in the bathroom:
		say "The tub overflows and a fair amount of water flows out of the bathtub into the rest of the bathroom.";
	decrease the water level by 1.

Every turn while the faucet is on and the drain is plugged:
	if the water level is not 10:
		increase the water level by 1.
Understand "get out of [something]" as a mistake ("Try just typing GET OUT.").
Understand "leave [something]" as a mistake ("Try just typing LEAVE.").
Instead of entering the bathtub when the water level is less than 5:
	say "You can't enter that tub, it's not even half full!"
The bathtub is a fixed in place enterable container in the bathroom. The description of the bathtub is "It's a bathtub. Big enough to sit in comfortably or lie down in uncomfortably. [paragraph break][the water status]". Understand "tub" as the bathtub.
The drain is a part of the bathtub. The drain can be plugged. The bathtub has a number called its water level. The water level is initially 0.
The faucet is a part of the bathtub. The faucet can be on or off.
Instead of switching on the faucet:
	say "You turn on the faucet. Water starts flowing out.";
	now the faucet is on.
Instead of switching off the faucet:
	say "You turn off the faucet. Water stops flowing.";
	now the faucet is off.
Instead of turning the faucet:
	if the faucet is on:
		try switching off the faucet;
	else:
		try switching on the faucet.

Rule for printing  the name of the bathtub:
	say "bathtub";
	if the water level is 0:
		say " (empty)";
	else if the water level is 10:
		say " (overflowing)";
	omit contents in listing.

A thing can be tub-relevant. A thing is usually tub-relevant. A dollop of hair gel is not tub-relevant.

Instead of entering the bathtub when the player is wearing anything tub-relevant:
	say "You are a person of few principles, but one of those principles is never to enter a bathtub while wearing anything. (You're wearing [a list of things worn by the player].)".
Instead of entering the bathtub when the piranhas are in the bathtub:
	say "You get in the tub. The warm water feels wonderful for a few seconds, and then the piranhas start to attack. They eat your feet, your legs, and... you can imagine the rest.";
	conclude with 32.

Section 4 - Basement

Below the Hall is the Basement. There is a door called The Tunnel of Extraction. It is open. It is not openable. It is west of the Basement. The description is "A long, winding tunnel. It used to be used to extract minerals and stuff. Now, it's probably still useful for extracting other things."

The description of the Basement is "The dark basement of your house. The hall is upstairs. The Tunnel of Extraction is to the West."

A vat is in the basement. The vat is a closed openable fixed in place container. There is rocket fuel in the vat. The rocket fuel is a liquid. The description of the vat is "A large vat holding a greenish liquid. The lid is tightly sealed. Who knows how long it's been here?". Understand "liquid" and "greenish liquid" as the rocket fuel.
A bucketful of rocket fuel is a liquid. The bucketful is nowhere.
Instead of opening the vat:
	say "You lift the large plastic lid off of the vat, revealing the pungent rocket fuel beneath.";
	now the vat is open.
Understand "fill bucket with fuel/water/piranhas" as a mistake ("Try DIPping the bucket in something.").
Instead of inserting the bucket into the vat:
	if the piranha-infested water is in the bucket:
		say "You should probably empty the bucket out first.";
	else:
		say "You dip the bucket in the vat of rocket fuel and come out with a fair amount. This stuff is lighter than it looks!";
		now the bucketful is in the bucket.
Instead of inserting something into the vat:
	say "You don't get the feeling [the noun] would do well in a vat of rocket fuel."
	
There is a key cabinet in the basement. The key cabinet is a fixed in place openable container. The description of the key cabinet is "A small cabinet that looks like it once held keys for all the rooms in the house.[if open] Now it looks like there aren't very many keys in it at all.[end if]". There is a small metal key in the key cabinet. The description is "It's a key, so it presumably unlocks something. It's metal."
Instead of taking the key cabinet:
	say "(the small metal key)";
	try taking the small metal key.

The House is a region. The Bedroom and the Kitchen and the Hall and the Upstairs Hall and the Study and the Back Entryway and the Closet and the Bathroom and the Basement are in the House. The Mad Scientist's House is in the house. The laboratory is in the house. The Control Room is in the house. The Hunting Lodge is in the house. [really this is just indoors]

Part 3 - Between

Section 1 - Garden

West of the bedroom is a door called the Side Door. West of the side door is a room called The Garden. The side door is closed. It is scenery. The spigot is scenery in the garden. Instead of turning on the spigot, say "It won't turn." The flowers are scenery in the garden. The squash are scenery in the garden.
In the garden is a locked closed fixed in place container called the shed. The brown key unlocks the shed. The description of the garden is "A small garden. There are a few different kinds of flowers and a few different kinds of squash[if the time machine's use count is greater than 1], which are looking mighty tasty[end if]. It's a peaceful place. A spigot on the wall sits above a circular indent in the dirt.[if the bucket is hidden] You could swear there used to be a bucket somewhere around here, but you don't see it anywhere...[end if][paragraph break]The side door to your house is East, and a path leads off towards town to the West."

The roof of the Shed is part of The Shed. On top of the Roof is a bucket. The bucket is an unopenable open container.
The bucket can be hidden. The bucket is hidden.
Understand the command "dip" as "put".
Understand "fill [something] in [something]" as inserting it into.

The description of the Shed is "A narrow rusty shed. [if the player is on the stool]On the shed's roof, you can see [a list of the things on the roof of the shed].[else]The shed is really tall and you can't see above it.[end if]".

The cage is a transparent open lockable container. The small metal key unlocks the cage. The description of the cage is "A white metal cage that looks to have held a pet rabbit long ago." The cage is in the shed.
Before taking the bucket:
	now the bucket is not hidden.

A rule for reaching inside the roof of the shed:
	if the player is not on the stool:
		say "You can't reach the roof of the shed.";
		deny access;
	allow access.

Section 2 - Other stuff

West of the Garden is the Outskirts of Town. The description of the Outskirts of Town is "There's less town here than there is to the South. The garden is East. The space center is North. The road is West."
North of the Outskirts of Town is the Space Center. The description of the space center is "Your friendly neighborhood space center. They build rockets and stuff. The outskirts of town are South, the launch pad is North."
North of the Space Center is the Launch Pad. The description of the launch pad is "The place where rockets take off from. The rest of the Space Center is South."
A fixed in place enterable openable closed container called a spaceship is in the launch pad. The description of the spaceship is "A very small rocket. Just big enough to carry one person to space.". The spaceship can be low on fuel. The spaceship is low on fuel. The spaceship can be on or off.
Rule for printing the name of the spaceship: say "spaceship"; omit contents in listing.
There is an ON button and a LAUNCH button in the spaceship.  The on button is lit. The on button is fixed in place. The launch button is fixed in place. The spaceship can be waiting for confirmation. The computer is a fixed in place undescribed person in the spaceship. There is a spacesuit in the spaceship. There is a helmet in the spaceship. The spacesuit and the helmet are wearable. The spaceship can be broken. The spaceship is not broken.
The description of the on button is "A glowing green button labelled ON". The description of the launch button is "A [if the spaceship is on]glowing [end if]purple button labelled LAUNCH".
Flying is an action applying to one visible thing.
Understand "fly [something]" as flying.
Carry out flying:
	say "That doesn't make sense."
Instead of flying the spaceship:
	if the spaceship is not in the launch pad:
		say "You don't really know how but you try your best.[if the spaceship is out of control] It's not working very well.[end if]";
	else:
		say "In order to do that you need to lift off the ground."
Instead of pushing the ON button:
	if the player is not in the spaceship:
		say "You can't do that without being in the ship.";
	else if the spaceship is broken:
		say "The spaceship doesn't seem to work anymore. Maybe someone crashed it.";
	else if the spaceship is on:
		say "The spaceship is already on, you're not confident about what pressing that again would do so you're not gonna do it.";
	else:
		say "You press the ON button. All around you dials spin and lights blink.";
		now the spaceship is on;
		if the spaceship is low on fuel:
			say "[paragraph break]A dialog appears on the screen: WARNING: LOW FUEL. SAY 'confirm' to continue. Mission abort HIGHLY recommended.";
			now the spaceship is waiting for confirmation.
Instead of entering the spaceship when a mouse is enclosed by the player:
	say "This space center has a strict no-mice policy. You'll have to put down any mice you are carrying before you get in."
Instead of answering the computer that "confirm":
	if the spaceship is waiting for confirmation:
		say "The dialog on the screen goes away. The screen now reads READY FOR LAUNCH.";
		now the spaceship is not waiting for confirmation.
Instead of answering the computer that "SUIT UP":
	say "The spaceship's machinery puts a space suit on you faster than you could possibly have done it yourself.";
	now the player is wearing the spacesuit;
	now the player is wearing the helmet.
Instead of answering the computer that "CANCEL":
	if the spaceship is in the air:
		if the computer is not disabled:
			now the computer is disabled;
			say "The autopilot is disabled."

the air is a room. Outer Space is a room. floating is a region. the air and outer space are in floating.
Instead of pushing the LAUNCH button:
	if the spaceship is off:
		say "The button doesn't do anything. Maybe try turning on the spaceship first?";
	else if the spaceship is open:
		say "Launching with the door open seems like an extraordinarily bad idea, even for yourself.";
	else if the spaceship is waiting for confirmation:
		say "The warning about fuel flashes angrily at you. It's expecting a response.";
	else if the spaceship is in the launch pad:
		say "The computer counts down: '3... 2... 1... LAUNCHING'. [paragraph break] The world around you starts to disappear into the smoke emmitted from the rocket engine. You feel yourself pressed into the seat as the spaceship lifts off toward the sky. [paragraph break]The computer says 'This ship is equipped with an auto spacesuit. Simply say SUIT UP and the ship will automatically put your space suit on you so you can go out into space.'";
		now the spaceship is in the air;
		Autopilot engages in one turns from now;
	else:
		say "You've already launched, what do you expect to happen?"
Instead of opening the spaceship in the air:
	say "The doors of the spaceship don't open while you're in the atmosphere."
Instead of opening the spaceship in outer space:
	if the player is wearing the spacesuit and the player is wearing the helmet:
		continue the action;
	else:
		say "Space is pretty and all, but you wouldn't want to go out there without wearing a helmet and a spacesuit."
 

the computer can be disabled. The computer is not disabled.
At the time when autopilot engages:
	if the spaceship is low on fuel:
		say "The computer announces: 'Auto pilot has engaged. Say CANCEL to fly the ship yourself. Auto pilot has detected that the fuel level is low and will land the ship momentarily.'";
		the autopilot takes over in one turns from now;
	else:
		say "The spaceship has reached space. It's full of stars! It's the most beautiful thing you've ever seen! Now what?";
		now the spaceship is in outer space.
At the time when the autopilot takes over:
	if the computer is not disabled:
		say "The ship stops ascending as the auto pilot takes over. You start to fall toward earth.";
		the autopilot lands the ship in one turn from now;
	else:
		say "The VERY LOW FUEL light blinks on in the corner of the dashboard.";
		the ship runs out of fuel in zero turns from now.
the spaceship can be out of control. The spaceship is not out of control.
At the time when the ship runs out of fuel:
	say "With a putter then a WHOOSH, the ship runs out of fuel. You don't have much choice but to grip the controls and try to fly it like a plane.";
	now the spaceship is out of control;
	the ship crash lands in five turns from now.
Every turn while the spaceship is out of control:
	say "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
	say "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA![line break]"; 
	say "The ship barrels toward the ground at an alarming rate.".[TODO: vary this]
There is a room called the Ruins of the Tunnel of Extraction.
At the time when the ship crash lands:
	now the player is in the ruins of the tunnel;
	say "With a CRASH and a BOOM the ship crash lands into the ground. It breaks through the ground and as you die on impact you vaguely recognize your surroundings: this was formerly part of the Tunnel of Extraction.";
	now the spaceship is in the ruins of the tunnel;
	conclude with 21. 
Understand "ship" as spaceship. Understand "door" as spaceship.
At the time when the autopilot lands the ship:
	say "The spaceship lands in a near-crash. Your back hurts, but otherwise you feel okay. The ship looks in a rough shape though. All the lights turn off except for a few emergency lights. You should probably get out sooner rather than later.";
	now the spaceship is off;
	now the spaceship is broken;
	now the spaceship is open.
	
Understand "fill spaceship" as a mistake ("Try POURing the fuel into the ship")

Instead of inserting bucketful of rocket fuel into the spaceship:
	if the player is in the spaceship:
		say "You can't reach the fuel port from inside the ship.";
	else:
		say "You pour the rocket fuel into the ship's fuel hatch, closing the hatch when you are done.";
		now the bucketful of rocket fuel is nowhere;
		now the spaceship is not low on fuel;
		if the spaceship is closed:
			say "As if in a gesture of thanks, the computer opens the door to the spaceship for you.";
			now the spaceship is open;

Instead of taking off the spacesuit in outer space:
	say "That seems like an extraordinarily dumb thing to do."
Instead of taking off the helmet in outer space:
	if the player is in the spaceship:
		say "You can't reach onto your head while wearing this bulky spacesuit in this confining ship.";
	else:
		say "You see space, with your own eyes. It's stunningly beautiful. Then your head explodes.";
		conclude with 29.


test fly with "open door / w / w / n / n / open spaceship / get in spaceship / close spaceship / press ON / say confirm / press LAUNCH / wait / say CANCEL / wait / wait / wait / wait / wait / wait / wait / wait"

test space with "e / e / get stool / w / w / open door / w / put down stool / get on stool / get bucket / e / e / d / open vat / dip bucket in vat / w / n / e / n / n / put fuel in ship / get in ship / close door / press ON / press LAUNCH / say SUIT UP / open door / get out / take off helmet"

West of the Outskirts of Town is the Road.
The description of the Road is "It's a road, like what people travel on. The outskirts of town are to the East. To the North you can see a fork in the road. The stream is West. The warehouse is South."
North of the road is a room called Further Along the Road. The description of Further Along the Road is "More road! [If the fork is stuck]There's a fork in the road here. [end if]The main road goes North and South. To the West there's a parking lot."
The fork is a thing. The fork can be stuck. The fork is stuck. The fork is in further along the road. The fork is undescribed. The description of the fork is "A metal tool. On one end it has a handle that you can hold. On the other hand it has four pointy bits that you can stick into food or other things."
Instead of taking or pulling the fork when the fork is stuck:
	say "You try to pull the fork out of the road, but it's pretty stuck. Your hand slips off the fork just as you feel it has dislodged slightly from the road.";
	now the fork is not stuck.

West of Further Along the Road is the Parking Lot. The description of Parking Lot is "Where cars park[if the car is in the lot]. You see your boxy blue-gray Toyota in the corner of the lot.[else], except there aren't any today.[end if] The road is to the East." The blue car is a vehicle in the parking lot. The description of the blue car is "It's your car. Bluish-gray paint, steering wheel, headlights. All that.".  The blue car can be started. The blue car is closed. The blue car is openable. The blue car is transparent. the blue car can be ready. The blue car is not ready.

Before opening the blue car:
	if the player does not have the Toyota key:
		say "You can't do that without the key.";
		stop the action.

After entering the blue car:
	say "You get into and start the car. It's ready to roll!"
	
Understand "car door" as the car.

Instead of entering the house when the player is in the car:
	say "You can't drive indoors, that would be a safety hazard."

Before going when the player is in the car:
	if the car is open:
		say "That would be unsafe. You should close the car door.";
		stop the action.
		
understand "car key" as the Toyota key.
Understand "unlock [the car]" as opening.
Instead of unlocking the car with something:
	if the noun is the toyota key:
		say "Try OPENing the car.";
	else:
		say "That doesn't seem to fit in the keyhole. You seem to remember that your car key had a Toyota logo on it.".

test car with "e / s / untie Toyota key / get Toyota key / n / d / w / n / n / n / e / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button  / press button / press button / w / s / w / open car / get in car / close car / e / n / n"

Instead of going to the abandoned train station when the player is in the car:
	if the train is not ready:
		say "You drive across the tracks into the train station turnaround. This is the end of the road.";
		continue the action;
	else if the car is not ready:
		say "The boom gates are closing, it looks like a train is coming. You probably shouldn't go to the train station right now.";
		now the car is ready;
	else:
		say "The boom gates are closing, it looks like a train is coming. You drive around them and toward the train station. As you go past them, a train comes and runs you over. That was really dumb.";
		conclude with 39.

understand "drive around boom gates" as a mistake ("I don't understand those words. Maybe you want to go toward wherever the boom gates are.").
understand "drive around the boom gates" as a mistake ("I don't understand those words. Maybe you want to go toward wherever the boom gates are.").

Section 3 - Trains

North of Further Along is the Abandoned Train Station. The description of Abandoned Train Station is "No trains.[paragraph break][if the map is examined]There are exits to the South and East.[else]The road leads South back toward town.[end if]". There is a map in the train station. The description of the map is "You see a map detailing the station, the tracks, the road, and a little control room to the East. At the bottom right corner is the insignia for Melbourne Metro." The map can be examined. The map is not examined.
After examining the map:
	now the map is examined.
East of the Abandoned Train station is the Control Room. The description of Control Room is "Where things get controlled. The only exit is to the West."
The train can be ready. The train is not ready. 

The tracks are scenery in the train station. The description of the tracks is "Abandoned train tracks. Maybe trains run along them sometimes? You've never seen it happen."
Instead of entering the tracks:
	if the train is ready:
		say "As you start to climb down, you see the train coming in the distance and you think better of it. Maybe if you ran across you'd make it in time?";
	else:
		say "You wander around the abandoned train tracks. Cool! You return to the platform where it's probably safer."
The edge of the platform is an undescribed enterable supporter in the train station.
Understand "go to edge" as a mistake ("Try GET ON the edge").
Every turn when the player is on the edge of the platform:
	if the train is ready:	
		if the player is wearing the earbuds and the iPod is playing and the player has the iPod and the earbuds are connected:
			say "A train enters the station while you're jamming to the music, and you trip and fall into the train tracks in front of it. That was really dumb.";
			conclude with 37;
		else:
			say "A train approaches the platform and you step away from the edge in order to be safe. It passes the station by while you watch, not slowing a bit.";
			now the train is not ready.
	

There is a thing in the control room called the CALL TRAIN button. The call train button can be examined or unexamined. The description of the CALL TRAIN button is "A big yellow button labelled CALL TRAIN. Next to the button is a handwritten note reading 'This button doesn't work very well. Sometimes you have to press it ten or twenty times to get it to work.'.". The button has a number called the finnickiness. The finnickiness of the button is 18. There is an old screen in the control room. The description of the old screen is "It's an old TV screen built into the wall. It's playing a PSA about train safety." The old screen is fixed in place.

Instead of pushing the CALL TRAIN button:
	if the finnickiness of the button is 16 and the button is unexamined:
		say "Now that you've been standing here for a bit, you notice a sticky note next to the button.";
	if the finnickiness of the button is not 0:
		say "You press the CALL TRAIN button. Nothing happens. Maybe try pressing the button again.";
		decrease the finnickiness of the button by 1;
	else:
		say "You press the CALL TRAIN button. An electronic voice informs you, 'The train will be here any minute now.' That was easy.";
		now the train is ready;
		the train comes in 10 turns from now.
Understand "note" and "sticky note" as the call train button.
After examining the CALL TRAIN button:
	now the noun is examined.
At the time when the train comes:
	if the player is in the train station:
		say "A train whooshes by at dangerously high speed. Must be the one you called. It doesn't stop though, so if you really needed a train you might need to call another.";
	now the train is not ready.

running-across is an action applying to nothing. Running is an action applying to nothing. Carry out running:
	if the player is in the train station:
		say "Where do you want to run?";
	else:
		say "This isn't the place for that".
Understand the command "run" as something new.  Understand "run" as running.
Understand "run e/east/w/west" as a mistake ("You'd run into a wall!").
Understand "run s/South" as a mistake ("You'd fall in the road. Too dangerous.").
Understand "run across the tracks" as running-across. Understand "run across tracks" as running-across. Understand "run tracks/n/north" as running-across.
Instead of going when the player is wearing the pair of running shoes:
	say "You're wearing running shoes. These are for running, not just exploring."
Carry out running-across:
	if the player is not in the train station:
		say "You don't see any tracks.";
	else if the player is not wearing the pair of running shoes:
		say "You're gonna run wearing these shoes???? You'd break your back.";
	else if the pair of running shoes is not laced:
		say "You start to run but you trip on the loose laces.";
	else if the train is not ready:
		say "You run across the tracks to the other platform and back to this one. That was exhilarating!";
	else:
		say "Well that was dumb. You get distracted as you run across the tracks and don't notice the train coming until it's too late.";
		conclude with 37.
The pair of running shoes can be laced. The pair of running shoes is not laced.
Lacing is an action applying to one touchable thing. Understand "lace [something] up" as lacing. Understand "tie [something]" as lacing. Understand "lace up [something]" as lacing.
Carry out lacing:
	say "That doesn't make sense."
Instead of lacing the pair of running shoes:
	if the player is not wearing the pair of running shoes:
		say "That seems like a rather pointless endeavor if you're not wearing the shoes..";
	else:
		say "You tie the laces on the running shoes so that there is no chance you could trip on them. You're ready to run!";
		now the pair of running shoes is laced.
	
After taking off the pair of running shoes:
	now the pair of running shoes is not laced.

test running with "e / s / get right shoe / n / u / get left shoe / d / d / w / n  / n / n / e / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button / press button  / press button / press button / w / take off shoes / put on running shoes / lace up running shoes / run across tracks "


Section 4 - Warehouse

Abandoned Warehouse is a room. West of the Town Square is the warehouse. The Abandoned Warehouse is south of the Road. The description is "The warehouse is old and abandoned. It is big and extends South. Not much more to say. The Road is to the North. The Tunnel of Extraction is below. There are holes in the wall to the East and West." The Tunnel of Extraction is below the warehouse. The tunnel's count is initially 0.

Before going through the tunnel:
	if the tunnel's count is 1:
		say "This tunnel was pretty spooky the first time you went through it. You take a second to mentally prepare yourself before going through again.";
		increment the tunnel's count;
		stop the action;
	increment the tunnel's count;
	if the player is not wearing work shoes and the player is not wearing the pair of running shoes:
		say "That doesn't look like a safe place to go without shoes.";
		stop the action;
	else:
		say "You go through the long and winding Tunnel of Extraction.";


The hole is scenery in the warehouse. The description of the hole is "A hole in the wall. You could probably go through it."

South of the Abandoned Warehouse is a room called A Spooky Lair. 
The description of the lair is "A lair in which a demonic ritual might be held. There is a table with a pentagram drawn on it. It's the South end of the warehouse; the only exit is North, to the rest of the warehouse."
The table is scenery in the Spooky lair. The table is a supporter. There is a candle on the table. The candle is lit. The description is "It's a candle. It's burning, the way candles do." A sacrificial knife is on the table. The description of the sacrificial knife is "A knife that looks like it might be used in a demonic ritual - or, you know, for cutting stuff.".
A snake is a kind of animal. A snake is usually privately-named. There is a snake called Alice. There is a snake called Bob. There is a snake called Charlie. There is a snake called David. Alice, Bob, Charlie, and David are in the lair.
[todo: "x snake" or "x snakes" giving "you can't see any such thing" seems bad if they're described as being there]
The candle can be urge passed. The candle is not urge passed.

Every turn when the player is in the lair:
	if the player is wearing the dollop and the candle is not urge passed:
		say "You feel drawn toward the candle, as though its destiny and yours are intertwined.";
		now the candle is urge passed.
Understand "snake" as Bob.
Instead of examining Bob:
	say "It's a rattlesnake. They say rattlesnakes are dangerous, but you've always thought that was silly.".
Instead of taking Bob:
	say "The snakes are moving too fast for that. Maybe if you could lure them to you..."

Understand "give mouse to snake" and "throw mouse to snake" and "feed mouse to snake" as a mistake ("The snakes are moving too fast to give one a mouse. Maybe you need to lure into somewhere.")

After dropping a mouse:
	if the noun is not in the cage:
		say "The mouse sees an opportunity and scurries off before it can be [if the player is in the lair]eaten by a snake or [end if]put back in the canister.";
		now the noun is nowhere.
	

Instead of taking or touching the candle when the player is wearing a dollop of hair gel:
	say "You touch the candle. The flame leaps onto your hair. Boom!";
	conclude with 17.

Instead of taking the candle:
	say "You feel like taking the candle will disrupt the rituals here and curse you and your descendants. Probably better not to disturb it."
Blowing out is an action applying to one thing. Understand "Blow out [something]" as blowing out. Understand "Blow [something] out" as blowing out.
Carry out blowing out:
	say "That doesn't make sense."
Instead of blowing out the candle:
	say "That seems really rude. Someone lit that candle for a reason, and you can't just go blowing things out willy nilly."

Test candle with "e / e / get stool / w / n / e / put stool down / get on stool / open cabinet / get gel / put on gel / w / d / d / w / s / get candle".

A mouse is a kind of animal.
A canister is a kind of openable container. Every canister contains a mouse. canisters are usually closed.

There is an ancient cabinet in the spooky lair. The description of the ancient cabinet is "The ancient cabinet seems like it could have been here for millenia." The ancient cabinet is a closed openable container. There are 3 canisters in the ancient cabinet. The ancient cabinet is fixed in place.

the can't take other people rule does nothing when taking the mouse.

	
Instead of inserting something into the cage:	
	If the player does not have the noun:
		say "You can't put [the noun] in the cage without first taking it.";
		stop the action;
	else if the noun is not a mouse:
		continue the action;
	else if the cage is closed:
		say "You can't put a mouse in a closed cage!";
	else if the player has the cage:
		say "You try to put the mouse in the cage while holding both of them, but in the end you drop the cage and the mouse scurries off. Oh well, maybe there are more mice.";
		now the noun is nowhere;
		let X be the location of the player;
		now the cage is in X;
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

test cage with "e / get key / w / open door / w / unlock shed with key / open shed / get cage / e / e / d / get small key / w / s / put cage down / open ancient cabinet / get canister / open canister / get mouse / put mouse in cage / close cage / lock cage with small key"
	

Part 4 - Nature

Section 1 - Piranhas

West of the Road is By the Stream. The description of By the Stream is "There's a stream, making whatever sound water makes. There's also a scary warning sign. The road is to the East, and the clearing is to the South." The warning sign is scenery in By the Stream. The description is "The sign says BEWARE OF PIRANHAS." A thing called the stream is scenery in By the Stream. The description is "It's a stream of water." Understand "water" as the stream.

Instead of entering the stream: say "Water is nice, but out here? Maybe in the privacy of your own home you'd reconsider."

The swimming piranhas are an undescribed thing. The swimming piranhas are nowhere.
The bucketful of piranha-infested water is a liquid. The piranha-infested water is nowhere.
Instead of taking the stream when the player has the bucket:
	try inserting the bucket into the stream.
Instead of inserting the bucket into the stream:
	say "You dip the bucket in the water, coming out with a bucketful of water and a few... piranhas?!";
	now the piranha-infested water is in the bucket.

Test piranhas with "e / e / get stool / w / w / open door / w / put down stool
	 / get on stool / get bucket / w / w / w / take water / e / s / d / u / u / e / plug drain / turn on faucet / pour bucket / take off belt / take off shoes / take off socks / take off pants / take off jacket / take off shirt / take off hat / take off underwear / get in tub"
[
dump in pirhanas
take off pants
take off underwear
take off socks
take off shirt
take off shoes
take off belt
take off hat
take off jacket
get in tub]

Section 2 - Trees

South of By the Stream is a Clearing. The description of the Clearing is "It's very clear here. The edge of the woods is to the West. A hole that leads into the abandoned warehouse is to the East. There's a stream to the North."

West of the Clearing is the Edge of the Woods. The description of the Edge of the Woods is "The woods start here and extend to the West. There's a clearing to the East."
West of the Edge is a room called the Woods. The description of the Woods is "There's lots of trees, in particular, an ash tree, an elm tree, and a pine tree. The edge of the woods is to the East. Going South, you can see signs for a hunting lodge.[if the nest is not found] You can hear a faint sound from above.[end if]"

Instead of going nowhere from the Woods: say "Too many trees. You'd get lost."

A tree is a kind of backdrop. Every tree has a room called the branches. An ash tree is a tree. An elm tree is a tree. A pine tree is a tree. Understand "branch" as a tree.

The wasps' nest is in Top of Ash Tree. The description is "A light brown nest of wasps[if the nest is not found] in the tree's branches[end if]."

Instead of dropping the wasps' nest when the player does not have the wasps' nest:
	say "You can only throw something you already have."
Instead of taking the wasps' nest when the player is not in the Woods: say "Try as you might, you can't reach the nest. But you think you could shake the tree to make it drop."
Instead of dropping the wasps' nest:
	say "You toss the wasps[apostrophe] nest. Your last sensation is a barrage of stings from the army of angry wasps that bursts from the nest to attack you.";
	conclude with 34.
The nest can be found. The nest is not found.

Shaking is an action applying to one touchable thing. Understand "shake [something]" as shaking.

Carry out shaking: say "That would achieve nothing."

Instead of shaking a tree:
	say "You shake the tree vigorously.";
	if the player is in Top of Ash Tree and the wasps' nest is in Top of Ash Tree:
		say "The wasps[apostrophe] nest is dislodged. You watch it fall to the top of the elm tree.";
		now the wasps' nest is in Top of Elm Tree;
	else if the player is in Top of Elm Tree and the wasps' nest is in Top of Elm Tree:
		say "The wasps[apostrophe] nest is dislodged. You watch it fall to the top of the pine tree.";
		now the wasps' nest is in Top of Pine Tree;
	else if the player is in Top of Pine Tree and the wasps' nest is in Top of Pine Tree:
		say "The wasps[apostrophe] nest is dislodged. You watch it fall to the forest floor.";
		now the wasps' nest is in Woods;
		now the nest is found.

The branches of the elm is a room called Middle Branches of Elm Tree. The description of Middle Branches of Elm Tree is "You're roughly half of the height of the Elm Tree."
The branches of the pine is a room called Top of Pine Tree. The description of Top of Pine Tree is "The pine tree is short. You're on top."
The branches of the ash is a room called Lower Branches of Ash Tree. The description of Lower Branches of Ash Tree is "You're a bit off the ground in the ash tree."

Middle Branches of Ash Tree is above Lower Branches of Ash Tree. The description is "More tree."
Upper Branches of Ash Tree is above Middle Branches of Ash Tree. The description is "Even more tree."
Top of Ash Tree is above Upper Branches of Ash Tree. The description is "The highest point of the tree. There's no more tree above. Wow, you can see so far away."
Top of Elm Tree is above Middle Branches of Elm Tree.

An ash tree is in Woods, Lower Part of Ash Tree, Upper Part of Ash Tree, and Top of Ash Tree.
An elm tree is in Woods, Middle Branches of Elm Tree, and Top of Elm Tree.
A pine tree is in Woods and Top of Pine Tree.

The Woods is down from Middle Branches of Elm Tree.
The Woods is down from Top of Pine Tree.
The Woods is down from Lower Branches of Ash Tree.
Up of the Woods is nowhere.

Instead of going up from the Woods: say "There are many trees you could climb. You'll have to name one specifically."
Instead of climbing a tree (called the apparatus):
	if the player is in the car:
		say "You'll have to get out of the car to do that.";
	else if the player is enclosed by the woods:
		move the player to the branches of the apparatus;
	else:
		try going up.

[?????????? "going" is the action, not "going up", so uh sad.]
Going-up is an action applying to nothing. Understand "climb up/upward/upwards/higher" as going-up. Instead of going-up: try going up.
Going-down is an action applying to nothing. Understand "climb down/downward/downwards/lower" as going-down. Instead of going-down: try going down.

Test trees with "e / e / open fridge / take fish / w / d / w / w / w / w / throw fish / wait / wait / wait / w / climb ash / u / u / u / shake tree / d / d / d / d / climb elm / u / shake tree / d / d / climb pine / shake tree / d / take nest / throw nest".
Test treetops with "e / e / open fridge / take fish / w / d / w / w / w / w / throw fish / wait / wait / wait / w / climb ash / u / u / u".



South of the Woods is the Hunting Grounds. The description of the Hunting Grounds is "Where hunters hunt things, as long as it's the right season. The woods are to the North. You can head into the Hunting Lodge to the South."

South of the Hunting Grounds is a door called the hunting lodge entrance. South of the entrance is a room called the Hunting Lodge. The description of the Hunting Lodge is "Where hunters rest or something. One wall is covered in animal heads - a deer, a moose, a lion(!). Kinda creepy, to be honest. The exit is North." Instead of going outside from the Hunting Lodge, try going North. The moose head is a wearable portable undescribed things in the hunting lodge. The deer head and the lion head are undescribed things in the hunting lodge. The deer head is portable. There is a poster in the hunting lodge. The poster weeks is initially 5. 
The description of the poster is "A poster reading '[if it is hunting season]Hunting Season is Now[else]Hunting season begins in [the poster weeks] weeks![end if]'".


To decide if it is hunting season:
	if the time machine's use count is greater than 2:
		decide yes;
	decide no;
Instead of wearing the moose head:
	if the player is in the hunting grounds or the player is in the woods:
		say "You slip in mud while trying to put the moose head over your own. Maybe you should do this on more stable ground.";
	else:
		continue the action.

The moose head can be accustomed. The moose head is not accustomed.
Instead of going somewhere when the player is wearing the moose head and the moose head is not accustomed:
	say "Wow, you nearly fell over. Walking while wearing a taxidermied moose head is hard. Maybe it'll go better if you try that again now that you have your balance?";
	now the moose head is accustomed.

Instead of going to the hunting grounds when the player is wearing the moose head and it is hunting season and the moose head is accustomed:
	say "You go into the hunting grounds, foolishly forgetting that there is a moose head atop your own. The hunters waste no time before shooting you.. at lEast you got a quick death.";
	conclude with 36;

test moose with "e / u / w / get quarter / n / get quarter / open second drawer / get quarter / s / e / d / d / w / e / open entrance / s / u / go into time machine / insert quarter into slot / insert quarter into slot / insert quarter into slot / press button / get out /d / n / w / w / w / w / s / open entrance / s / get moose head / wear moose head / n / n"

test time-machine with  "e / u / w / get quarter / n / get quarter / open second drawer / get quarter / s / e / d / d / w / e / open entrance / s / u / go into time machine"

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
		say "You're too scared of the bear to go there. You might be able to distract the bear with something it likes eating, though.";
	else:
		say "As you walk into the woods, a large grizzly bear shows up, baring (bear-ing?) its teeth at you. You hastily take three steps back.";
		say "The bear seems to be guarding the entrance to the woods. Seems like it would be awfully difficult to get through here unless the bear were somehow distracted. With food, maybe?";
		now the bear is in the Woods.

Understand the command "poke" as "attack". [TODO: if the player tries to attack the bear without first going to the woods, what do]
Instead of attacking the bear:
	if the player is holding the stick:
		say "You take your stick and poke the bear. It wakes up and promptly eats you.";
		conclude with 24;
	else if the player is holding the knife:
		say "You're not so violent as to use a knife on a poor innocent bear.";
	else:
		say "With your bear (*ahem*) bare hands? You're kind of dumb, but not *that* dumb."

Test bear with "e / s / take blue key / unlock door with blue key / open door / s / take stick / n / n / e / open fridge / take fish / w / d / w / w / w / w / throw fish / z / z / z / w / attack bear".

To decide if the fish is ready to be thrown:
	if the player is in the Edge of the Woods and the bear is in the Woods:
		decide yes;
	decide no.
understand "throw [something] to bear" as dropping.
understand "throw [something] West" as dropping.
understand "toss [something] to bear" as dropping.
understand "toss [something] West" as dropping.

Instead of dropping the fish when the fish is ready to be thrown:
	say "You throw the fish to the West. The bear looks at the fish curiously.";
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

Before wearing something:
	if the player does not have the noun:
		stop the action.

Part 5 - Town

South of the Outskirts of Town is the Town Square.
The description of Town Square is "The Town Square stretches out in front of you. There are 10 or 20 unremarkable buildings that you couldn't care less about. South of you is the Mad Scientist's House. West, a hole in the wall leads into the Abandoned Warehouse. North of here, the town thins out."
South of the Town Square is a door called the Mad Scientist's Grand Entrance. South of the Mad Scientist's grand entrance is the Mad Scientist's house.
The description of the Mad Scientist's House is "A house filled with so many useless gadgets the like of which you've never seen. There are tubes, filling two thirds of the room. High up on the wall there is a shelf. Taking up one entire wall of the room is an enormous amplifier." Gadgets and tubes and a tool shelf and an amplifier are scenery in the Mad Scientist's house. A door called a ladder is above the mad scientist's house. The ladder is open and unopenable. Understand "amp" as the amplifier.

The description of the shelf is "A high-up shelf that you imagine stores the mad scientist's secrets.  [if the player is on the stool]On the tool shelf, you can see [a list of the things on the shelf]. That's disappointing[else]It's so high up that you can't see on it[end if]." The shelf is a supporter. A small tool box and a bottle of soylent are on the shelf. The small tool box is an openable closed container. Super glue is in the small tool box. Super glue and soylent are edible.
After eating the soylent, say "You could get used to this mad scientist lifestyle - that soylent is truly delectable."
Rule for printing the name of the shelf when the player is not on the stool:
	say "high-up shelf"; omit contents in listing.
The description of soylent is "A fully nutritional meal replacement. It's made of people." 

Instead of opening something portable:
	if the player does not have the noun:
		say "You need to pick up [the noun] before you can open it.";
	else:
		continue the action.

The super glue can be cut or whole. The glue is whole.
The description of the super glue is "A tube of super glue. It has a warning: EXTREMELY STICKY. [if the glue is whole]Unfortunately, the cap seems to be super glued on, so it's not going to be much use to you.[else]It has been cut, and glue is slowly seeping out of the tube.[end if]".
Instead of cutting the super glue:
	If the player does not have the glue:
		say "You need to take the tube of super glue first.";
	else If the player has the knife:
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

Above the ladder is the Mad Science Laboratory. Understand "Lab" as the mad science laboratory. The description of the mad science laboratory is "A room full of so much mad science, it makes you mad just to think about it. The wall is covered in chalkboards, and the chalkboards are covered in diagrams, and the diagrams are covered in labels. Maddening."
Instead of climbing the ladder, try going up.
The time machine is a fixed in place enterable container in the Mad Science Laboratory. The time machine has a number called the use count. The time machine's use count is initially 0. The description of the time machine is "A cardboard box with the words 'TIME MACHINE' scrawled on it in sharpie. Below the words '25 cents per 2 weeks forward' are written a little smaller." 
The red button is a fixed in place thing in the time machine. The coin slot is a fixed in place closed unopenable container in the time machine. The coin slot has a number called the credits. The coin slot's credits is initially 0. The coin slot can be available. The coin slot is available.
Rule for printing  the name of the time machine:
	say "time machine";
	omit contents in listing.
	
The description of the red button is "A big red button. Says 'TRAVEL' on it. You guess it might mean time travel.". The description of the coin slot is "A coin slot that looks like it was ripped from an old arcade machine. Looks like it accepts only quarters. There's a note next to it that says you can put in as many quarters as you want before pressing the button."

Every turn:
	now the coin slot is available.
Instead of inserting something into the coin slot: 
	if the coin slot is not available:
		say "The previous quarter is still making its way into the slot.";
		stop the action;
	If the noun is not a quarter:
		say "That doesn't fit in the slot!";
		stop the action;
	say "You put a quarter in the slot. It makes a satisfying *clink*.";
	now the noun is nowhere;
	now the coin slot is not available;
	increase the coin slot's credits by 1.

The time safe is a fixed in place openable closed container. The description of the time safe is "A locker labelled 'TIME SAFE - place objects in here to guarantee that they age properly while not being messed with by people wandering by or the wind while you are in the time machine.". The time safe is in the mad science laboratory.
The middle safe is a fixed in place openable closed container in the time safe. The description of the middle safe is "A smaller safe inside the bigger one, almost as big.".
The inner safe is a fixed in place openable closed container in the middle safe. The description of the inner safe is "The innermost safe; where you are supposed to put things.". Understand "innermost safe" as the inner safe.
Instead of inserting something into the middle safe:
	say "There's no room. You have to put it in the inner safe."
Instead of inserting something into the time safe:
	say "There's no room. You have to put it in the innermost safe."
Understand "outer safe" as the time safe.
To decide if the pie is guarded:
	if the pie is not in the inner safe:
		decide no;
	if the inner safe is open:
		decide no;
	If the middle safe is open:
		decide no;
	If the time safe is open:
		decide no;
	decide yes.

The pie can be aged. The pie is not aged.
Instead of taking the pie when the player is in the time machine:
	say "You can't reach the time safe from in the time machine. You'll have to get out first."
Instead of eating the pie when the pie is in the inner safe:
	say "First you need to take the pie out of the safe."
Instead of eating the pie when the pie is aged:
	say "You eat the pie. It tastes... strange. As though it's been sitting out for 2 weeks. Your stomach starts to feel unpleasant and then --";
	conclude with 32.
	
pie crumbs are a liquid. The description of the crumbs is "The crumbs that were left behind when someone took a pie from this location." The pie crumbs are nowhere.
Instead of pushing the button:
	if the coin slot's credits is 0:
		say "You need to put a quarter in the coin slot first.";
	else:
		say "You feel yourself pressed back into the seat, and the world swirls around you. The sun sets and rises again many times. And then, suddenly, the world is calm.";
		increase the time machine's use count by the coin slot's credits;
		decrease the poster weeks by the coin slot's credits;
		decrease the poster weeks by the coin slot's credits;
		now the coin slot's credits is 0;
		now the wasps' nest is nowhere;
		now the nest is found;
		if the pie is guarded:
			if the pie is not in the refrigerator:
				now the pie is aged;
		else if the pie is not enclosed by the time machine:
			let X be the location of the pie;
			now the pie is nowhere;
			move the pie crumbs to X.
	
test pie with "e / e / open fridge / get pie / w / u / w / get quarter / e / d / d / w / e / open entrance / s / u / open time safe / open middle safe / open inner safe / put pie in inner safe / close inner safe / close middle safe / close time safe / go in time machine / put quarter in slot / press button / get out / open outer safe / open middle safe / open inner safe / get pie / eat pie"

Xyzzying is an action applying to nothing. Understand "xyzzy" and "plover" as xyzzying.
Plughing is an action applying to nothing. Understand "plugh" as plughing.

Carry out xyzzying: say "A hollow voice says, 'Insert red herring here.'"

Carry out plughing: say "A hollow voice says, 'This puzzle was brought to you by plugh (pronounced ✈✈✈ Galactic Trendsetters ✈✈✈).'"

Release along with an interpreter.