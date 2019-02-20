"Unsafe" by Brian Chen and Jakob Weisblat

The story description is "TODO fixme".
The release number is 1.
The story creation year is 2019.

Section 1 - Meta

Instead of going through a closed door:
	say "You can't go through [the door gone through] because it's closed."
[comment: The can't go through closed doors rule is not listed in the check going rulebook.]

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

Section 2 - House

Part 3 - First Floor

The Bedroom is a room. The description is "It's your bedroom. It's not very interesting. The hall is to the east."

East of the Bedroom is a room called the Hall. The description of The Hall is "The hall in the middle of your house. Your bedroom is to the west. The staircase leading upwards is to the north. (??) The kitchen is to the east."

North of the Hall is the Staircase. The Staircase is an open door. The staircase is not openable.

East of the Hall is the Kitchen.
The toaster, the cabinet, the refrigerator, and the stool are in the kitchen.
The cabinet is a closed openable container.
The top drawer, the middle drawer, and the bottom drawer are closed openable containers in the cabinet. [TODO: improve the drawer situation]
In the middle drawer is a bread box. The bread box is a closed openable fixed in place container. In the bread box is a loaf of bread. [TODO: make the loaf of bread have slices which are edible] [TODO: the load of bread is wrapped.]
The refrigerator is a closed openable fixed in place container.
A fish is in the refrigerator. "It's a blue herring. Delicious!"
The fish is edible.

The stool is an enterable portable supporter in the kitchen. The description is "It's a stool that you can stand on."

The toaster is a fixed in place device. The toaster can be plugged in or unplugged. The toaster is unplugged. [TODO: the toaster needs to become more interesting.]

South of the Hall is the Back Entryway. There is a blue key in the back entryway. The back door is a locked door. The back door is south of the back entryway. The blue key unlocks the back door.

South of the back door is the backyard. In the backyard is a stick.


Part 4 - Second Floor

Above the Hall is a room called the Upstairs Hall. The description of the Upstairs Hall is "The second floor of your house. Stairs lead down. The study is west, and the bathroom is east."
The staircase is below the Upstairs Hall.

West of the Upstairs Hall is the Study.
North of the Study is a room called the Closet.

East of the Upstairs Hall is the Bathroom.
The mirror is scenery in the bathroom.
There is a medicine cabinet in the bathroom. The medicine cabinet is an openable closed container. There is hair gel in the medicine cabinet. The hair gel is wearable. The description is "A bottle of hair gel. You can put it on. There's a warning on the gel that says 'EXTREMELY FLAMMABLE'."

Instead of opening or closing the medicine cabinet when the player is not on the stool:
	say "You're not tall enough to reach the medicine cabinet. Drat!"

Below the Hall is the Basement. The Tunnel of Extraction is a door. It is open. It is not openable. It is west of the Basement. [???] The description is "A long, winding tunnel. It used to be used to extract minerals and stuff. Now, it's probably still useful for extracting other things."

The description of the Basement is "The dark basement of your house. The hall is upstairs. The Tunnel of Extraction is to the west."

The House is a region. The Bedroom and the Kitchen and the Hall and the Upstairs Hall and the Study and the Back Entryway and the Closet and the Bathroom and the Basement are in the House.

Section 2 - Between

West of the bedroom is a door called the Side Door. West of the side door is a room called The Garden. The side door is closed.
In the garden is a locked closed container called the Shed.
The roof of the Shed is part of The Shed. On top of the Roof is a bucket. The bucket is an unopenable open container.

West of the Garden is the Outskirts of Town.
North of the Outskirts of Town is the Space Center.
North of the Space Center is the Launch Pad.
West of the Outskirts of Town is the Road. 
The description of the Road is "To the North you can see a fork in the road."
North of the road is a room called Further Along the Road.
West of Further Along the Road is the Parking Lot.
North of Further Along is the Abandoned Train Station.
East of the Abandoned Train station is the Control Room.

Abandoned Warehouse is a room. West of the Town Square is the warehouse. The Abandoned Warehouse is south of the Road. The description is "The warehouse is old and abandoned. Not much more to say. The Road is to the west. There's something to the south. The Tunnel of Extraction is below." The Tunnel of Extraction is below the warehouse.

South of the Abandoned Warehouse is a room called A Spooky Lair. 
The description of the lair is "A lair in which a demonic ritual might be held. There is a table with a pentagram drawn on it."
The table is scenery in the Spooky lair. The table is a supporter. There is a candle on the table. The candle is lit.
A snake is a kind of animal. There are 4 snakes in the spooky lair.

Instead of taking or touching the candle when the player is wearing hair gel:
	say "You touch the candle. The flame leaps onto your hair. Boom!";
	conclude with 17.

Section 3 - Nature

West of the Road is a stream. South of the stream is a clearing. west of the clearing is the edge of the woods. West of the edge is a room called the Woods. South of the Woods is the Hunting Grounds. South of the hunting grounds is the hunting lodge.

East of the clearing is the abandoned warehouse.

The bear is a neuter animal. [TODO: if you try to go to the woods, the bear shows up]

Section 4 - Town

South of the Outskirts of Town is the Town Square.
South of the Town Square is a door called the Mad Scientist's Grand Entrance. south of the Mad Scientist's grand entrance is the Mad Scientist's house.
Above the Mad Scientist's house is the Mad Science Laboratory.
