A team of seven researchers has gone missing. You try and track down your team by visiting the island they last were located at. You look around and the island is completely abandonned! In the distance you notice an island with smoke rising. Maybe the researchers will be there?
->smoky_island

===smoky_island
You approach the smoky island with your big wooden boat. You set out your anchor and realize you only have room to take two items in your pocket. What do you take with you?
->item
=item
*{not compass}[a compass]->compass
*{not radio}[a radio]->radio
*{not binoculars}[binoculars]->binoculars
*{not notebook}[a field notebook]->notebook
*{not rope}[some rope]->rope
+[Nothing]->continue_smoky
=next_item
What will you choose next?
*{not compass}[a compass]->compass
*{not radio}[a radio]->radio
*{not binoculars}[binoculars]->binoculars
*{not notebook}[a field notebook]->notebook
*{not rope}[some rope]->rope
+[Nothing]->continue_smoky
=compass
You decided to take a compass
*{not next_item}[choose next item]->next_item
*->continue_smoky
=radio
You decided to take a radio
*{not next_item}[choose next item]->next_item
*->continue_smoky
=binoculars
You decided to take binoculars
*{not next_item}[choose next item]->next_item
*->continue_smoky
=notebook
You decided to take a field notebook
*{not next_item}[choose next item]->next_item
*->continue_smoky
=rope
You decided to take some rope
*{not next_item}[choose next item]->next_item
*->continue_smoky

=continue_smoky
As you make you way onto the shore you see a path. Following the trail you make your way toward the smoke. Surely the research team has camped there?
->continue_path

=continue_path
+[continue]->see_natives
+{not return_boat}[return to the boat]->return_boat

=return_boat
Your boat is missing from the spot you left it! Hopefully you have some items with you or you can find some that will be helpful. What should you do now?
*[attempt to swim to another island]->drown
*[return to your adventure]->continue_path
=drown
You attempt to swim to another island
->drown_choices
=drown_choices
+{drown_actions < 2}[change your mind and go back]->continue_path
+[continue]->drown_actions
=drown_actions
{You are not very good at swimming | You begin to sink | lower...| and lower | You are drowning| You drowned| You are dead | The End | No really, The End | Why are you still continuing? | The End (For Real)| ->END}
->drown_choices

=use_binoculars
You use your binoculars to zoom in and get a look of the area before you walk up to the smoke on the path.
->see_natives
===see_natives
You see a village of native people. The path leads up to the village. None of the people are wearing badges or look familiar. Do you follow the path or hide and observe? 
*[Follow the path]->meet_natives
*[Hide]
Where will you hide?
**[A tree]->tree
**[A hut]->hut
=tree
You pick a tree just on the border of the village. It isn't very stable but the larger trees are somewhat difficult to climb. 
->tree_choices
=tree_choices
+{tree_actions < 6}[continue]->tree_actions
*->fall
=tree_actions
{!You climb up the tree | You find a branch to perch on | You watch and wait for something interesting to happen | The people commerce and you are getting very hungry | Nothing is happening| ...until.... }
->tree_choices
=fall
You begin to hear cracking. You hold your breath and try your best not to move but you are unlucky. You scream as you fall out of the tree.
->meet_natives
=hut
You choose to tuck into the safety of a small hut. It seems to have a small kitchen-like station setup. On a table, you see a delicious looking bowl of soup. You are hungry and tired from your voyage to the islands and lack of food resources. This may be your only change to eat in a while. Should you eat the food?
*[Yes]->eat 
*[No]->hut_catch

=hut_catch
A man walks in on you looking over the bowl. He yells something and a group come over. 
->meet_natives
=eat
You eat the food. It is so delicious and you are so hungry that you eat the entire bowl. Greedy you! You feel tired and full after eating now and take a rest in the hut...
    
    You feel dizzy now...
    
    What is happening? 
    
    You lay in the corner and look to your left...
    
    "HELLO!" I'M BENNY! 
    
    You see a rainbow cartoon looking rat with a big grin. He is holding a tray of mini pies.
*"What is going on?"
    "I'm Benny! But everyone calls me Pie Rat! Why? Because I love pie! I like the research badge you're wearing! Want a pie?
**"Sure"
Benny hands you a pie. It's your favorite! You eat without feeling full. Benny says "I need to leave now, I have no more pie, BYE!." You want more pie. You sprint after Benny. 
->chase_loop
=chase_loop
+{loop < 10}[Keep chasing]->loop
*->wake

=loop
{&You get so close | Benny speeds up | You speed up}
->chase_loop
=wake
As you chase Benny you see a bright light above shining and you tumble to the ground. Your eyes squint and you make out something...
->meet_natives
=meet_natives
You and the natives inevitably meet. They surround you, observing and speaking in a foreign language. 
->communicate_choice
=communicate_choice
That didn't work
+{communicate < 4}[Try to communicate]->communicate
+[Point to your badge]->end
=communicate
{~ "Hello?"| "Do you speak English?" | You smile | You wave}
->communicate_choice
===end
The people recognize your badge and smile. They bring you into a building and welcome you to a table. They present you a backpack with a notebook from one of your research collegues. Inside is a map that they point to an X. It is a neighboring island. You understand that the researchers have gone there. Will you go on another adventure?...
->END



