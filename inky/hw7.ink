-(Ayla) Ayla is locked in her room. She sits all day, staring out the window. This is her life, and it will never change. 
+{Ayla<2}[Change Ayla's life]->change
//limit loop
+{Ayla<4}[Ayla keeps staring]
//limit loop second time
    -(staring) She stares and stares at the skies outside, getting quite bored, until she
        ++{ignore<3}notices something outside the window. ->ignore
        //force choices if been here twice
        ++(sleeps)[falls asleep]->sleep
        *{ignore>2} [peers closer at what is outside.]->outside
        //make available after i>2
        +{nope}[Ayla decides to look for the key again.] She finds the key under the desk->nope.key
->END
==change==
//change pathway
A knock sounds on the door, even though no one should ever arrive at Ayla's tower. She looks up, and ignores it.
 *[Ignore it]->ignore
 *[Don't ignore it]
    She glances towards the door, thinking for the first time in her life about what to do. 
        **(door)[She opens the door]
        **{glanceOut}Ignore it->ignore
        **(glanceOut)[She glances out the peephole] 
          ***{glanceOut}->door
            - A wizened old face stares back at her, an old man with long gray hair and an even longer beard. 
          
            ->doorOpened
            
==ignore==
//repeated ignorance
    It's hard to ignore, but
    +(ignored)She ignores it.->staring
==doorOpened==
//door opened, connect to change
    This really should not be happening, but Ayla watches as the man lifts a wrinkled hand to wave at her. 
        *"Hello,"
        ->talking
        
    *Ayla shuts the door in his face
        - and lets everything go back to normal.->staring
->END
==talking==
"Hello there," says the man. 
    *(hello) "Hello[."],"
    *(questions)"Who are you[?"],"
        -"My name is Adam. And I'm here to set you free, if you'd like,"
        *Stay->Ayla
        *Go with him
            -Ayla considers it, not realizing she should stay. But the intrigue is too strong, and she lets him lead her down the stairs and outside.->bye
    *[Ayla screams]
        -Ayla is not ready for this, and goes back to her window->staring
==outside==
//looking outside
A man stands there, long gray hair and even longer gray beard. He really should not be there, yet there he stands. Being a smart girl, Ayla ignores him. 
    ->nope
==sleep==
Her eyes fall shut, like every other day, until they open the next day. ->Ayla
    ->END
==nope==
//key search
Ayla is tired of listening and wants to talk to him. For the first time, she glances around to figure out how to get out. 
    *[Try to open the window]->window
    *[Try to open the door]->door
    =window
    Ayla tries wrenching the window open, but it doesn't move. She doesn't know that there's a key somewhere in her room, a key you need to put in the lock to get out. 
    *[Find the key]
        -Scrambling around the room, looking like an idiot, Ayla tries to figure out where the key could be hidden. 
        **[Check the dresser]->dresser
        **[Check the bookshelf]->bookshelf
        **[Check under the bed]->bed
        =dresser
        Peering under the dresser, Ayla sees nothing, because the key is not under the dresser. That's too obvious. 
        //only if not visited
        *{!bookshelf}[Look under the bookshelf]->bookshelf
        *{!bed}[Look under the bed]->bed
        +->where
        =bookshelf
        It's not clear why Ayla is looking under the bookshelf, since there is only a one inch gap and no one would ever put a key here.
        *{!bed}[Look under the bed]->bed
        *{!dresser}[Look under the dresser]->dresser
        +->where
        =bed
        The bed would be smart, if the underside of the bed had anywhere to hide a key. Ayla crawls under anyways, getting dust in her eyes and hair for no reason.  
        *{!bookshelf}[Look under the bookshelf]->bookshelf
        *{!dresser}[Look under the dresser]->dresser
        +->where
        =where
        "Where is the stupid key," says Ayla.
        +(look)[Look for the key]->findIt
        =findIt
        {! She searches under her desk.|She searches in her bathroom. |She searches every place except under the cup on her desk where the key is. ->oops}
        ->look
        =oops
    *[Be good and go back to the window]->staring
    *[Look under the cup]
        -You can't do that. You can't leave.  Go back to the window. ->staring
        *{staring>1} [Ayla ignores me and lifts the cup.]->key2
        =key2
            -(key)Key in hand, Ayla goes to the window.
            *Open the window
                -With the window opened, Ayla stares down, and considers taking the jump. 
                        **Jump->bye
                        **Stay->Ayla
            *Go back->Ayla
         
    =door
    Ayla tries tugging the door opened, but she's not allowed to leave, so it doesn't budge.->Ayla
==bye==
//once outside, conversations to have
The grass is green outside. 
-{doorOpened} The man watches while Ayla stares around at the green grass, the blue skies, and the brush of wind. A faint voice whispers for her to turn around.
    *Go back inside->Ayla
    *Be free
    //convo with  stranger
        -I stare in amazement as for the first time, I stand in the real world. 
            -(meetStranger)Are you ready to go," says the man. "The others are waiting."
             *[Go with him]
            *"Others?"
                -"The others who have escaped," he replies.
                -I think for a moment, before deciding to trust him and follow his lead. ->END
            *Ask for more details
                -"I don't even know who you are," I say.
                *"And escaped from what?"
                    -"Have youe ever heard a voice in your head?"
                        *Yes
                            ,I have. 
                            "You've escaped that voice, dictating your every move.->END
                        *No
                            ,I haven't.He stares, before replying. 
                            "Maybe you're not the right one,"
                            The world goes black before I even begin to think about what he is saying->END
  -{window}"Where are we going?"->meetStranger
                //go to conversation
    -(window)
-{nope.key2} 
//first time outside
As Alya jumps down, her feet touch the grass for the first time. A faint voice whispers for her to turn around. 
    *Go back inside->Ayla
    *Be free
        -I stare in amazement as for the first time, I stand in the real world. I realize the man is in the distance, watching me. 
            *Talk to him->talking
            *Ignore him->happy
            
==happy==
//simple ending
I want to be alone, I realize. So I simply turn and walk the other way, with my own will for the first time. 
        
->END