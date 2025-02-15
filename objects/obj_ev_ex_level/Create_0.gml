var inv = asset_get_index("obj_inventory")

if (global.level.level_string != global.room_trailer_room) {
	ini_open(global.save_directory + "exmemory/save.vs")
	ini_write_string("save", "Player Info", ds_grid_write(inv.ds_player_info))
	ini_write_string("save", "Equipment", ds_grid_write(inv.ds_equipment))
	ini_write_string("save", "Room", global.level.level_string)
	ini_write_string("save", "Fake Ending", global.fake_ending ? "1" : "0")
	ini_write_string("save", "Final Ending", global.final_ending ? "1" : "0")
	ini_close()
}


switch global.level.level_string {
	case global.room_e000:
	case global.room_e000_alt:
	case global.room_e015_final:
	case global.room_e112_extra_final:
		instance_create_layer(0, 0, "Instances", asset_get_index("obj_secret_exit"))
		break;
	case global.room_e009_final:
		instance_create_layer(0, 0, "Instances", asset_get_index("obj_riddle_002"))
		break;
	case global.room_e002:
		ds_list_set(inv.ds_ccr, 5, "12504367")
		instance_create_layer(0, 0, "Instances", asset_get_index("obj_riddle_008"))
		break;
	case global.room_e099:
		instance_create_layer(0, 0, "Instances", asset_get_index("obj_ev_ex_riddle_e099"))
		break;
}

if (global.final_ending) {
	
	var egg_text = [];
	var egg_x = -1;
	var egg_y = -1;
	switch (global.level.level_string) {
		case global.room_e000:
		case global.room_e000_alt:
			egg_x = 5
			egg_y = 4
			egg_text = [
				"Thanks again for playing this mod to the end!", 
				"You will find other eggs in certain rooms who will provide some commentary!",
				"Have fun reading them!",
				"(I swear there is nothing else to do! This is the real end! You will only find bonus content!)",
				"(Also, you can skip to the next room by pressing Ctrl+N)"
			]
			break;
		case global.room_e001:
			egg_x = 6
			egg_y = 6
			egg_text = [
				"I was pretty confident with the layout of this room.", 
				"...Well, until I posted the \"trailer\" on Discord.",
				"I still don't know what's wrong though!",
				"Also, about the walls...",
				"I don't know if the walls are oriented correctly...",
				"I just tried to keep it consistent within the mod",
			]
			break;
		case global.room_e017_sword:
			egg_x = 4
			egg_y = 4
			egg_text = [
				"(Sorry if I make the room too easy)",
				"No issues here, there aren't a lot of ways to design a difficult 1D puzzle",
			]
			break
		case global.room_e018_sword:
			egg_x = 5
			egg_y = 5
			egg_text = [
				"For this one, I mainly tried to make the speedrun route work",
				"I'm sure about the eyes, the egg, and the add statue positions though!",
				"As for the walls, I tried something pretty but I feel like the real room contains much more empty space.",
			]
			break
		case global.room_e019_sword:
			egg_x = 4
			egg_y = 1
			egg_text = [
				"I screwed up on this one.",
				"It feels too weird, too empty...",
				"But I can't find what's wrong!"
			]
			break
		case global.room_e020_sword:
			egg_x = 7
			egg_y = 6
			egg_text = [
				"This one is perfect.",
				"Down to the last, minute details.",
				"(I hope)",
			]
			break
		case global.room_e021_sword:
			egg_x = 1
			egg_y = 3
			egg_text = [
				"I don't remember if the horizontal wall was on the other side.",
				"Same thing for the vertical one!"
			]
			break
		case global.room_e022_sword:
			egg_x = 10
			egg_y = 6
			egg_text = [
				"I think the layout is kinda okay. But it still feels wrong.",
				"I randomly placed the smilers and prayed that it's okay"
			]
			break
		case global.room_e024_sword:
			egg_x = 9
			egg_y = 1
			egg_text = [
				"I don't remember if it's the right room order.",
				"I can remember the first and last few ones but after that...",
				"Sometimes I remember which room follows another one, but that's all!"
			]
			break
		case global.room_e026_sword:
			egg_x = 0
			egg_y = 8
			egg_text = [
				"I tried for several minutes to make it look like a waffle...",
				"I could not.",
				"I hope it's good enough!"
			]
			break
		case global.room_e027_sword:
			egg_x = 1
			egg_y = 1
			egg_text = [
				"I feel like there is a way to cheese this one now.",
				"But I don't really mind!"
			]
			break
		case global.room_e029_sword:
			egg_x = 5
			egg_y = 6
			egg_text = [
				"This one is a tragedy.",
				"It looks like nothing.",
				"And it's not even hard.",
				"The original one was not memorable I guess.",
			]
			break
		case global.room_e034_wings:
			egg_x = 0
			egg_y = 8
			egg_text = [
				"How am I supposed to remember where and what enemies there were in these kind of rooms???",
				"This is probably the worst section of the game to try to recreate from memory..."
			]
			break
		case global.room_e035_wings:
			egg_x = 11
			egg_y = 1
			egg_text = [
				"Yeah, no chance it matches the original one."
			]
			break
		case global.room_e036_wings:
			egg_x = 9
			egg_y = 4
			egg_text = [
				"Not an outstanding room in my mind.",
				"The only thing I remember is the tile you have to pick up before the snake walks on it."
			]
			break
		case global.room_e038_wings:
			egg_x = 11
			egg_y = 3
			egg_text = [
				"I don't even remember what was the main trick for this one!",
				"I'm not even sure if an Eus statue was involved..."
			]
			break
		case global.room_e039_wings:
			egg_x = 4
			egg_y = 3
			egg_text = [
				"\"Punch the wall to wait,",
				"And use the rod only to let the beaver collide with the snake\"",
				"I started from there and tried to rebuild the room with that in mind!"
			]
			break
		case global.room_e048_memory:
			egg_x = 0
			egg_y = 6
			egg_text = [
				"This one is funny.",
				"I just know there is a route that doesn't use the statues",
				"For the rest, I closed my eyes and drew whatever looked good!",
				"(In the end, I think it looks horrible)" 
			]
			break
		case global.room_e051_memory:
			egg_x = 5
			egg_y = 1
			egg_text = [
				"I love these kind of rooms!",
				"I hope I did the two of them justice!"
			]
			break
		case global.room_e052_memory:
			egg_x = 9
			egg_y = 6
			egg_text = [
				"I remember the fact that you had to push one of the statue in a pit without using the rod.",
				"But I didn't know how to make the solution not obvious.",
				"So, uh, here's my version of this puzzle!",
				"And the next room is very similar!"
			]
			break
		case global.room_e054_memory:
			egg_x = 8
			egg_y = 4
			egg_text = [
				"This one is a catastrophe...",
				"Everything just looks so wrong...",
				"I only remember you had to push the statue to make the bridge...",
				"Well, I hope you enjoyed my totally lame version of the puzzle!"
			]
			break
		case global.room_e055_memory:
			egg_x = 8
			egg_y = 5
			egg_text = [
				"Except for the positions of the buttons and the stairs, I think this one is perfect!"
			]
			break
		case global.room_e057_memory:
			egg_x = 0
			egg_y = 8
			egg_text = [
				"I think I made it easier than I remember somehow?",
				"Even though I think there weren't that many exploding tiles...",
			]
			break
		case global.room_e058_memory:
			egg_x = 4
			egg_y = 1
			egg_text = [
				"I knew the exact solution for this one...",
				"And somehow I struggled to reproduce it!"
			]
			break
		case global.room_e061_memory:
			egg_x = 5
			egg_y = 3
			egg_text = [
				"This was the section I think I remembered the best.",
				"Or at least, I think I remember the vibe of every room pretty well!",
			]
			break
		case global.room_e002:
			egg_x = 0
			egg_y = 8
			egg_text = [
				"This puzzle is not randomized as you might have guess from what the egg said.",
				"It was too much work so I just hard-coded the order.",
				"The order I chose alternate between killing one on the left and one on the right"
			]
			break
		case global.room_e003_final:
			egg_x = 4
			egg_y = 6
			egg_text = [
				"Different enemies and glass chessboard is all I had in mind for this one!"
			]
			break
		case global.room_e004_final:
			egg_x = 5
			egg_y = 1
			egg_text = [
				"I don't remember if you could walk on the UI...",
				"But I guess it doesn't really matter for this one!",
			]
			break
		case global.room_e005_final:
			egg_x = 0
			egg_y = 8
			egg_text = [
				"I tried to do something interesting because I don't remember what was hard in the original room",
				"I hope you enjoyed my version of this room!",
			]
			break
		case global.room_e006_final:
			egg_x = 12
			egg_y = 4
			egg_text = [
				"I think I nailed this one.",
				"It was very memorable and easy to recreate!",
			]
			break
		case global.room_e007_final:
			egg_x = 0
			egg_y = 8
			egg_text = [
				"I'm pretty sure there was a wall to prevent using the UI.",
				"I noticed that when I tested the whole mod later...",
				"But I left it like that because I think it's funny!",
				"And the original one wasn't that hard."
			]
			break
		case global.room_e008_final:
			egg_x = 2
			egg_y = 4
			egg_text = [
				"Snaakes!",
				"The solution for this one is really different from the one I memorized!",
				"But it's easier in my opinion!"
			]
			break
		case global.room_e009_final:
			egg_x = 10
			egg_y = 5
			egg_text = [
				"Nothing much to say for this one.",
				"The only thing I'm not sure is whether there were 2 or 4 statues."
			]
			break
		case global.room_e010_final:
			egg_x = 11
			egg_y = 5
			egg_text = [
				"What a beautiful room...",
				"No way I could forget about it!",
			]
			break
		case global.room_e011_final:
			egg_x = 4
			egg_y = 3
			egg_text = [
				"No comment.",
			]
			break
		case global.room_e014_final:
			egg_x = 2
			egg_y = 0
			egg_text = [
				"Not sure about the placement of the exploding tiles, but it's good enough!",
			]
			break
		case global.room_e015_final:
			egg_x = 0
			egg_y = 8
			egg_text = [
				"Okay.",
				"I found an easy way to display the hint with F1",
				"But I'm really lazy."
			]
			break
		case global.room_e016_final:
			egg_x = 3
			egg_y = 2
			egg_text = [
				"Yeah, I don't remember what the egg was saying at all during this part.",
				"So, uh, I had to improvise something!",
				"(You can skip to the birch room, there won't be any commentary during the escort)"
			]
			break
		case global.room_exxx_birch:
		case global.room_exxx_birch_alt:
			egg_x = 1
			egg_y = 6
			egg_text = [
				"About that part, I always wanted to hide the super rod within the trailer rooms and remix some EX rooms for it.",
				"Originally, there was no hint at all and the game was supposed to end and reset the save data when taking the stairs.",
				"But I thought nobody would take the time to redo everything just to check if something was there, especially for a mod.",
				"Therefore, I decided to make it more obvious.",
				"In exchange, the bonus rooms for the super rod was made a bit harder to reach!"
			]
			break
		case global.room_e098:
			egg_x = 12
			egg_y = 7
			egg_text = [
				"Yeah, I tried hard to make the player notice the brane number",
				"After that, you only had to think about how to get to 99.",
				"And I thought this task would not be too hard for someone who already beat the game!"
			]
			break
		case global.room_cif_room:
			egg_x = 4
			egg_y = 6
			egg_text = [
				"I also tried to recreate Cif's room from memory.",
				"With, of course, a little twist that requires the super rod!",
				"Also, I gathered all commentary for rooms from E099 and beyond in E113!"
			]
			break
		case global.room_lev_room:
			egg_x = 2
			egg_y = 4
			egg_text = [
				"I had to add Lev's room from memory.",
				"Just because this was also possible with the super rod.",
				"The chest contains nothing like in the original game.",
				"Just to not make the player feels bad for getting nothing, I designed this room as a small puzzle that \"uses\" the chest and the super rod!",
				"I hope this small room was fun anyway!"
			]
			break
		case global.room_e113:
			egg_x = 0
			egg_y = 8
			egg_text = [
				"It's going to take a little time. I hope you don't mind.",
				"I tried to make all the levels use the endless rod to its best.",
				"And I wanted them to be relatively short!",
				"Most of them aren't really hard if you're careful enough!",
				"E099: A small warm-up challenge that requires using every burdens and the super rod",
				"And, uh, I guess you can technically softlock if you go there the first time without the void memory.",
				"Really sorry if it happened!",
				"E100: I tried to make something that looks like the super rod",
				"I know you're supposed to see the burden carved before getting it.",
				"But I think it's a cool way to introduce this unexpected section!",
				"E101: I think this is my favorite level!",
				"It may at first seem impossible to align the buttons and the exit before spawning to shades",
				"But once you understand the trick it's really fast and cool to execute!",
				"E102: This one is not hard",
				"You just have to be careful not to push the egg by accident!",
				"E103: I really like this one too!",
				"I wanted player to realize that once you summon a shade you can get rid of the other enemy!",
				"That's all you need to understand to beat this level!",
				"E104: For this one, there are two points to understand.",
				"The first is how to kill the beaver at the top using your upgraded rod.",
				"And the other is if you let the mimic push the statue, you'll realize you can't place the button back in the room!",
				"Huge congrats if you realize that ahead of time!",
				"E105: Maybe there is a way to do it without moving the buttons?",
				"E106: I'm pretty sure there is no way to make a path in the middle.",
				"If you found one way to do it, send the solution to me!",
				"E107: There is a way to do it without using the super rod!",
				"But it's really tedious...",
				"E108: I really love rooms where you have to store enough breakable tiles to reach the exit!",
				"E109: It took me some time to find something that requires the super rod while keeping the layout close to the original.",
				"I finally came up with something simple!",
				"I will actually cry if it's still feasible without it :(",
				"E110: I'm sorry",
				"(Actually it's a lot easier than the original one)",
				"E111: It uses a trick similar to the original one.",
				"You just have to store enough tiles at the start...",
				"...and pay attention to not make the path back to the buttons impossible!",
				"E112: There are only two safe ways to finish removing the \"1\".",
				"Once you get that, the solution is clear.",
				"...",
				"For the final brand puzzle...",
				"I only added this part because I forgot you could manipulate your locust number to go beyond E113",
				"So I decided to make use of that for a final puzzle!",
				"There were two hints to nudge the player in the right direction:",
				"The Add statue in E103 that blocks the access to the UI...",
				"And the hint given by the egg at E000.",
				"(I hope you didn't get zapped while doing UI manip in E103 and lost all your locusts in the process...)",
				"At first there was no way to loop between the rooms using UI manip.",
				"It only was a dark idol to reset to E000 in each room",
				"I wanted it to be a community effort where each person would search for one of the fragments of the brand...",
				"But I was not confident enough people would take the time to find it...",
				"...and I thought it would be too much work just for one bonus art in the credits...",
				"So that's how the current version you solved came to be!",
				"...",
				"Well...",
				"That was a lot of work for maybe 2 or 3 people playing this mod...",
				"And maybe nobody will take the time to reach this part.",
				"Was it worth it?",
				"If you're reading this, then I guess the answer is yes!",
				"And if nobody is...",
				"It's still yes because it was a fun and enlightening experience!",
				"...",
				"...",
				"End of the commentary!",
				"(There are 2 optional bonus rooms in this mod, did you find them?)"
				
			]
			break
	}
	
	if (array_length(egg_text) > 0) {
		var inst = instance_create_layer(egg_x * 16 + 8, egg_y * 16 + 8, "Instances", asset_get_index("obj_boulder"))
		
		with (inst) {
			text = egg_text
			special_message = -1
			voice = b_voice	
			moods = array_create(array_length(egg_text), neutral)
			speakers = array_create(array_length(egg_text), id)
		}
	}
}
