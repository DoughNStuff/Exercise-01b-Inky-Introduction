/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 * Recurring choices
 * Conditionals in descriptions
 * Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the enternace of a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
+ [Take the south tunnel] -> south_tunnel
+ [Turn back and take the north tunnel] -> north_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
+ {torch_pickup} [Light tunnel] -> east_tunnel_lit
+ [Go back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. You notice a light at the end of the tunnel.
+ {torch_pickup} [Light tunnel] -> west_tunnel_lit
* [Go to light] -> chasm
+ [Go back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off the thousands of coins in the room. You grab the riches and run. You're rich!
-> END

== west_tunnel_lit ==
You notice a large seemingly-bottomless chasm in front of you 
+ [Go back] -> cave_mouth
-> END

== chasm ==
You take one step and fall into a large chasm. You die.
-> END

== south_tunnel ==
You are in the south tunnel. You heard loud stomps ahead of you. You are not going to engage.
+ {torch_pickup} [Light tunnel] -> south_tunnel_lit
+ [Go back] -> cave_mouth
-> END

== south_tunnel_lit ==
The large dragon ahead notices you and promptly incinerates you. You die.
-> END

== north_tunnel ==
You are staring back at your village. Do you really want to give up now?
* [Go home] -> home
+ [Go back] -> cave_mouth

== home ==
You go home. Nothing gained, nothing lost, I guess.
-> END
