#Blackout:Blackout #Werewolf:EmptyWerewolf
EXTERNAL Name(CharName)
You were sure that you were dead. You had to be. The Shield Guardian ambushed you with his minions and you had no way to fight back. 
Hell, his punch alone had knocked you out.
The afterlife was definitely not what you expected though...
All you could hear was the mumbling of some man getting closer.


{Name("Stranger")}
"Damn monsters... what the hell were they doing out here?"
"Nothing can ever just be straightfoward, nooo that would be too easy."
"..."
"Oh Hell!"
"Please tell me you aren't dead..."
"...Are you...dead?"

->Choices
==Choices==
* ["Aughh..."] -> Alive
* [Pretend to be dead.] -> Dead


==Alive==
#Blackout:Empty
#Lyall:Shock 
"Oh! You're alive, good."
#Lyall:Confused
"What are you doing out here all alone?"
* ["I was trying to catch the train."] -> Catchtrain
* ["What are YOU doing out here alone?"] -> Noyou

==Dead==
You hear the stranger shuffle closer.
He begins to go through the bag at your side.
What person's first instinct was to loot a dead body???
{Name("You")}
#Blackout:Empty
"Hey!?"
{Name("Stranger")}
#Lyall:Shock
"Oh gods you're alive!" He exclaims, jumping back.
#Lyall:Awkward
"I mean, that's good, but that couldn't have been any more startling."
#Lyall:Confused
"Haah...so. What are you doing all the way out here alone?"
* ["I was trying to catch the train."] -> Catchtrain
* ["What are YOU doing out here alone?"] -> Noyou


==Catchtrain==
#Lyall:Awkward
"The train to Withermore? I'm heading there too. Haha, wow..."
"I'm not stalking you I swear this is pure coincidence."
He lingers awkwardly for a few long moments of silence.
"I'm Lyall by the way."
{Name("You")}
How was this the man that saved you from those monsters? He didn't exactly seem all that strong.
You sigh and introduce yourself out of courtesy.
"I hope you don't plan on staying in Withermore. That is not the most welcoming of places."
{Name("Lyall")}
#Lyall:Neutral
"Oh, no. I'm just passing through. I have a masquerade ball to crash."
{Name("You")}
"Crash? You're going uninvited?"
{Name("Lyall")}
He holds up a letter. An invitation to the estate of the Lady Morrigan.
You'd know that red seal anywhere.
It was that woman who sent ruin to your town. She was the reason for all of these rampaging monsters.
{Name("You")}
"Are you...close with the Lady?"
{Name("Lyall")}
#Lyall:Grin
He smirks mischievously. "I've never even met her."
{Name("You")}
You can't tell if he is telling the truth and nobody associated with the Lady Morrigan was trustworthy...
Was this all just an act to get you to trust him? To let your guard down so he could finish you off?
*[Believe him.] -> Believe
*[Stab him]  -> Stab

==Believe==
{Name("You")}"What do you have against her, then?" 
{Name("Lyall")}
#Lyall:Sad
That makes his grin quickly fade into a frown.
"I have a hunch that she has something to do with the murder of my friends."
{Name("You")}
Oh...
Perhaps this wasn't a trap after all.
{Name("Lyall")}
#Lyall:Neutral
"I'm really on my own with all this. Hell, I went into that huge mansion back there alone to find clues."
"...It'd really be a lot simpler if I had someone along with me."
#Lyall:Awkward
"Someone that already knows of the Lady Morrigan..."
He eyes you expectantly.
Why did he remind you so much of a lost dog?
{Name("You")} 
You sigh. "You want me to go with you?"
{Name("Lyall")}
#Lyall:Happy
He looks absolutely ecstatic.
"Well, if you're offering, how could I refuse?"
{Name("You")}
Perhaps this adventure wouldn't be so bad. After all, at rock bottom you could only go up.
"Alright. I suppose I do owe you for saving me. Let's get on that train!"
-> END



==Stab==
#Lyall:Shock
He stumbles back in pain, visibly surprised by your sudden attack.
{Name("Lyall")}
#Lyall:Angry
"Gods! What's wrong with you?!"
He places a hand on the hilt of the dagger, ripping it out of his stomach. Hot blood drips down from the wound and he covers it with a scarred hand. 
{Name("You")}
"I cannot trust someone who is with her!" You exclaim, eyes darting to the knife that he threw aside.
{Name("Lyall")}
"I already told you, I've never even met her! I swear-!"
He doubles over, a spine chilling crack sounding from his back.
{Name("You")}
...What?
{Name("Lyall")}
#Lyall:EmptyLyall
Falling to the ground, he writhes in pain as his body rearranges itself.
Bones crack and bend, blood dripping down his lips as his skull pushes outwards and his teeth sharpen.
"RUN!" He manages out through gritted teeth.
{Name("You")}
#Werewolf:Werewoof
Within seconds, the man that once stood before you was no longer a man.
No.
He was a monster.
You turn and flee, a roar sounding behind you as you leap over a fallen log.
*[Climb into a tree] -> Tree
*[Run to the train] -> Train

==Tree==
#Werewolf:EmptyWerewolf
You heave yourself up into a winding tree, gripping tightly to one of the branches and hold your breath.
#Werewolf:Werewoof
Lyall-...no, the werewolf prowls past the tree, steps eerily silent. It disappears into the brush and you let out a relieved sigh.
#Werewolf:EmptyWerewolf
Thank the gods above. 
Your head whips around upon hearing the snap of a branch.
#Werewolf:Werewoof
Looking down, the wolf is quickly clawing his way up the tree, lips pulled back in a snarl.
You try to climb down from the opposite side but the werewolf catches your leg with a claw, sending you flopping onto the grass below.
Within seconds, it leaps down and you can feel its jaws clamp around your throat.
Snap.
-> END


==Train==
#Werewolf:EmptyWerewolf
The train was arriving, you could hear its horn echo through the trees. Unfortunantely, you could also hear the drumming of the werewolf's paws behind you.
You push yourself forward, truly wishing you had grabbed the knife before you ran.
The station came into sight, along with the train, although it didn't seem to be stopping.
The town was abandoned after all, so why would it stop?
#Werewolf:Werewoof
You feel the wind gust by as the train begins to pass through the station and you turn to meet eyes with the werewolf, which had caught up behind you.
This would not be your final day.
You take a running jump toward the train and hit roughly against the side, barely managing to grab ahold of one of the maintenence ladders. Wrapping your arm around it, you turn.
The werewolf did not follow. It halted in its tracks, eyes following your train car until you eventually vanished from view.
#Werewolf:EmptyWerewolf
You made it.
->END

==Noyou==
#Lyall:Neutral
"I'm making my way to the city of Withermore."
#Lyall:Confused
"I assume you're doing the same, considering how close you are to the train station."
{Name("You")}
"I am...Anything to get out of this cursed town. The nobles led it to ruin."
{Name("Stranger")}
#Lyall:Confused
"The nobles...? Are you from here?"
{Name("You")}
"A nearby town. Their influence has spread and the monsters of these forests are threatening our lives."
{Name("Stranger")}
#Lyall:Neutral
"I know. I've had quite a few run-ins myself."
"..."
#Lyall:Confused
"You don't happen to know of the Lady Morrigan, do you?" #Lyall:Neutral
{Name("You")}
"How could I not? She is one of the wretched souls that did this."
{Name("Stranger")}
##Lyall:Smirk
"Yeah, I know. That's why I'm planning to pay her a visit."
#Lyall:Neutral
"Seems that you know a lot more about her than I do... It'd be nice to have someone like you on my side."
#Lyall:Confused
"What are your thoughts on masquerade balls?"
{Name("You")}
"I've never been to one before." You shrug.
"What does this have to do with the Lady Morrigan, though?"
{Name("Stranger")}
#Lyall:Smirk
"I just so happen to have an invitation to a ball she is throwing." He holds up the sealed letter. You'd know that red seal anywhere.
#Lyall:Awkward
"Would you like to be my plus one?"
*["As long as I get to show that witch a piece of my mind."] -> Masquerade

*["An invitation? Are you...close with the Lady?"] -> Suspicion

==Masquerade==
#Lyall:Happy
"Perfect! We'll just have to pick up something to wear on the way there. Don't exactly want to get outed as frauds now do we?"
The two of you begin to make your way over to the train station, listening to the horn of the oncoming train echo through the decayed forest.
The stranger then turns to you with a smile.
{Name("Lyall")}
#Lyall:Subtlesmile
"My name is Lyall by the way."
->END


==Suspicion==
#Lyall:Confused
"Close? I've never even met the woman. In fact, I only just recently learned of her existence." 
{Name("You")}
"Why do you want to 'pay her a visit' then?"
{Name("Stranger")}
#Lyall:Sad
He falls silent, frowning.
"I believe she is behind the murder of my friends."
{Name("You")}
So he wasn't much different than the people of your town. Many had lost family to the monsters that were sent rampaging. You included.
#Lyall:Neutral
"I'm sorry."
{Name("Stranger")}
"There's nothing for you to apologize for. I would just like to find out why she did this to me."
#Lyall:Sad
He frowns, glancing up at the night sky. It would've been tremendously dark if it wasn't for the moon in the sky.
{Name("You")}
In a forest full of monsters, the moon no longer brought you ease. 
"Well, what are we waiting around for then? We're not going to get to that masquerade if we wait around for the full moon. This place is infested with werewolves."
{Name("Stranger")}
#Lyall:Neutral
This makes him pause.
#Lyall:Awkward
"There's no need to worry about them. I've had my fair share of encounters. You're with an expert." He smiles, making his way toward the station.
{Name("You")}
"Ohh, a self proclaimed expert, huh? I'm feeling safer already." You say sarcastically, jogging to catch up with his long strides.
Once at his side, you finally decide to introduce yourself.
{Name("Stranger")}
#Lyall:Subtlesmile
He glances down, stopping at the platform before casting a warm look in your direction.
{Name("Lyall")}
#Lyall:Happy
"Lyall."
-> END


