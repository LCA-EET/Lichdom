# Lichdom
Design, writing, and voice acting by Endarire.  Coding by LCA with use of k4thos's Protagonist Can Die mod with permission.  Images in this documentation are from Wizards of the Coast.

GIBBERLINGS3 FORUM THREAD: **INSERT**

![If you wanna be a lich, this is the right place!](https://static.wikia.nocookie.net/forgottenrealms/images/2/2e/Runestonecarverns.png/revision/latest?cb=20191004102509)

# So, you wanna be a Lich.
You're in the right place!  You're also late to the party.

![Szass Tam, the Famous Thay Necromancer Lich](https://static.wikia.nocookie.net/forgottenrealms/images/9/98/Monster_Manual_5e_-_Lich_-_p202.jpg/revision/latest/scale-to-width-down/1000?cb=20141113093711)
_Szass Tam, the Famous Necromancer Lich of Thay_

Throughout the realms and the planes, many have already become Liches or Demiliches of some sort.  Perhaps they sought immortality.  Perhaps they had enough of  needing to eat and breathe.  Perhaps they were tired of being chilled, shocked, diseased, entangled, level drained, paralyzed, petrified, poisoned, polymorphed into squirrels, stunned, and webbed.

Regardless of their reasoning, with this mod, you too can become a Lich with the help of Gravetender Morris in Athkatla's Graveyard District (SoA) or Saradush (ToB).  You have plenty of chances to decline, but because you came here, I assume you seek the secrets of a Lich transformation as performed by Gravetender Morris.

# Requirements for Lichdom
- Level 12 or higher in any casting class or kit.  This applies to Bard, Cleric, Druid, Paladin, Ranger, Shaman, Sorcerer, and Wizard (Mage).  Multiclassed or dual classed characters need at least 12 levels in one of these classes to undergo the ritual.

- 120,000G per transformation.  (This amount is configurable.)

- The chosen character may be of any alignment, but their alignment will turn into the Evil version of this alignment.  Thus, LG/LN/LE become LE; NG/TN/NE become NE; and CG/CN/CE become CE.  This alignment change may disqualify this character from their current class, such as a Paladin becoming an Ex-Paladin or a Ranger becoming an Ex-Ranger.

- Note that many recruitable NPCs simply refuse to undergo this Lichdom ritual for personal reasons.  (This too is configurable if you just want to ignore the story ramifications of Valygar, Minsc, and Jaheira becoming Liches, for example.)

- A series of tasks given by Gravetender Morris.  Notably, you will need at least 3 Lich Dusts (a new key item from this mod) from the corpses of Alhoons, Liches, and Demiliches.  (This item is droppable, but unstealable.)  If Dracoliches were in the game, they would also carry Lich Dust.

- The character can't have the Undead flag active.  Thus, for example, Hexxat isn't eligible because of this.

- The character's soul must be in their body.

- Accepting the strong possibility that this process is irreversible.

# Effects of Lichdom (Default)
- Since the process of Lichdom is so varied within D&D's decades of canon, and much of it is left to intrepretation, various aspects of Lichdom are configurable in-game via **WHAT METHOD?**.  

- The default effects and requirements were heavily inspired by [Liches in _Baldur's Gate_](https://baldursgate.fandom.com/wiki/Lich) as well as [3.5's Liches](https://www.d20srd.org/srd/monsters/lich.htm).

- Immunity to damage from nonmagical weapons.

- Immune (100% resistant) to HP damage from cold, electricity, and poison.

- Immune to the negative statuses of Berserk, Charm, Confusion, Domination, Disease, Fatigue/Exhaustion, Fear, Grease, Entangle, Hold/Paralysis, Level Drain/Negative Levels, Petrification, Polymorph Other, Sleep/Unconsciousness, Stun, and Web.  Also immune to at least most instant death effects such as Disintegrate and Finger of Death.

- Continual Detect Invisibliity.

- +1 to INT, WIS, and CHA scores.

- Natural AC improves by 3.

- You gain the innate ability of Lich Touch, usable at will but only once per turn.  Lich Touch deals d10 cold damage in melee range (no save), and the subject must save vs. paralysis or be paralyzed for 5 rounds.  Undead and other subjects immune to paralysis are immune to Lich Touch, and spell resistance applies.

- You gain the innate ability of Lich Form, usable at will but only once per turn.  This is purely a cosmetic ability which changes the character's appearance to that of a typical Lich.  By default, a Lich made by Morris's method looks identical to a typical character.

- Unlike a typical Lich in BG2, you have no racial immunity to spells of a certain level.

- All Liches start with their phylactery - a cloak called the Shroud of the Lich.  This shroud is unstealable and undroppable.  (For technical reasons, the Lich's abilities are put onto an item instead of something else like a slotless script.)

Your phylactery must be in your inventory for you to auto-revive out of combat.  (This auto-revival normally happens immediately after combat ends, but the script may need a few seconds to catch up.)  Note that depending on your settings, your phylactery may break upon death.  Regardless of settings, certain SoA events _will_ remove CHARNAME's (the protagonist's) phylactery for a time.

- The UI changes your displayed race to Lich.  Mechanically, you're still a member of your original race such as Human or Gnome.

# Configurable Lichdom Options
Since Lichdom's requirements and effects throughout the editions and decades of D&D have varied so much, it seemed fitting to include a variety of options to better suit your play style.

**Lichdom Monetary Cost Per Transformation (Install Option)**
- 120,000G (Default)

- 100,00G

- 75,000G

- 50,000G

- 40,000G

- Custom: Enter a whole number for a gold piece cost.

**Upon character death, your phylactery will break _% of the time. (In-Game Config Option)**
- 0% (Default)

- 1%

- 3%

- 5%

- 10%

- 15%

- 20%

- 25%

- 33%

- 50%

- Custom

**Can a broken phylactery be replaced? (In-Game Config Option)**
- Yes, but it costs the same as a new phylactery. (Default)

- No.

**What happens to a Lich if it dies without its phylactery in inventory? (In-Game Config Option)**
- The Lich dies but can be revived via Raise Dead, Resurrection, etc. (Default)

- The Lich permanently dies.

**Is a Lich allergic to (unable to equip, regardless of proficiencies) to items that harm undead such as a Mace of Disruption, a Flame Tongue/Burning Earth Sword, a Protection from Undead scroll, or an Azuredge Axe?  Note that your normal proficiencies apply, regardless of this option, and if you enable this option with anti-Undead items equipped, you will immediately unequip or drop them. (In-Game Config Option)**
- Yes (Default)

- No

**What's the highest level of hostile spells to which a Lich should be immune?  Note that friendly spells such as heals and buffs work normally, regardless of this setting. (In-Game Config Option)**
- None (Default)

- 1

- 2

- 3

- 4

- 5

**What bonus to all mental ability scores (INT, WIS, and CHA) should apply to Liches? (In-Game Config Option)**
- +1 (Default)

- +2

- None

**What bonus to natural AC (crushing, piercing, and slashing) should Liches receive? (In-Game Config Option)**
- 1

- 2

- 3 (Default)

- 4

- 5

- None

**What bonus to spell resistance should Liches receive? (In-Game Config Option)**
- None (Default)

- +5%

- +10%

- +20%

- +25%

- +30%

- +33%

- +40%

- +50%

- +60%

- +70%

- +75%

- +80%

- +90%

- +100%

**How long should the paraylsis effect from your Lich Touch innate ability last? (In-Game Config)**
- 3 rounds

- 5 rounds (Default)

- 10 rounds

- 25 rounds

- 50 rounds

- 100 rounds

- 8 hours

- 24 hours

- Permanent until dispelled or removed

**What should the saving throw penalty be for your Lich Touch ability? (In-Game Config)**
- 1 per 2 levels

- 1 per 3 levels

- 1 per 4 levels (Default)

- 1 per 5 levels

- 1 per 6 levels

- 2 total

- 3 total

- 4 total
   
- None

**Should spell resistance apply to your Lich Touch innate ability? (In-Game Config)**

- Yes (Default)

- No

# Install Order Notes
As of this writing, Lichdom has no mod prerequisites.

- Lichdom should be installed AFTER these mods if you use them:  [EET Start AKA EET Core](https://github.com/Gibberlings3/EET), all mods that add quests or areas, and all mods that add recruitable NPCs.

- Lichdom should be installed BEFORE these mods if you use them:  [EET End](https://github.com/Gibberlings3/EET).

Specifically, Lichdom has a small amount of cross-mod content AKA crossmod content with these mods, included with permission from authors of original NPCs:

- [Afaaq](https://github.com/Argent77/DjinniCompanion)

- [Hubelpot](https://github.com/SpellholdStudios/Hubelpot_the_Vegetable_Merchant_NPC)

- [Longer Road (Bodhi & Irenicus)](https://github.com/InfinityMods/LongerRoadEE)

- [Love Conquers All AKA LCA (Caelar & Corwin)](https://github.com/LCA-EET/LCA)

- [Region of Terror (Drizzt)](https://github.com/SpellholdStudios/Region_of_Terror)

- [Saradas Magic II (Saradas)](https://github.com/SpellholdStudios/Saradas_Magic_for_BG2)

- [Sir Neh'taniel](https://www.nexusmods.com/baldursgate2ee/mods/60?tab=description)

- Mods that BG1 NPCs to BG2EE.

# New Item Descriptions


# Q & A (FAQ)
**How lore friendly is this mod?**
- While I tried to make the premise of this mod fit within existing Faerun and _Baldur's Gate_ series lore, I am not sure off-hand how accurate this is.  The plot makes a big deal about certain characters dying, but Imoen can die and be raised freely in the games with no long-term story impact.  Let's just say BioWare - and, by extension, BeamDog - were inconsitent in their writing in this regard.

NPCs the world over were NOT recoded to treat characters drastically differently after becoming a Lich.  In vanilla BG2, you could walk fairly freely through the streets and countrysides of Amn with a [vampire](https://baldursgate.fandom.com/wiki/Hexxat), a [drow](https://baldursgate.fandom.com/wiki/Viconia_DeVir), and a [cackling Red Wizard](https://baldursgate.fandom.com/wiki/Edwin) spamming [undead animating spells](https://baldursgate.fandom.com/wiki/Animate_Dead_(wizard)) and NPCs would probably complain most about the drow, not the small army that acts as a Faerunian version of a weapon of mass destruction (WMD) in their midst.

Ultimately, this Lichdom mod is mostly about the mechanical side of being a Lich.  If you want a game that was built from the ground up to account for NPCs' reactions to becoming a Lich and the associated necromancy, play [_Pathfinder: Wrath of the Righteous_](https://store.steampowered.com/app/1184370/Pathfinder_Wrath_of_the_Righteous__Enhanced_Edition/) or another such game, if that exists.

**120,000 coins per Lich transformation?  Boy, that sure is expensive!**
- Lichdom is intended as a high initial cost, high long-time return for the character who undergoes this transformation.  The auto-revival aspect matters more in no reload runs.

**How am I meant to get 120,000 or more coins by level 12?!  That's nuts!**
- I wondered the same thing about the [D&D 3.5 Lich](https://www.d20srd.org/srd/monsters/lich.htm) that only needs caster level 11 to undergo the ritual when the expected wealth by level means that characters who become Liches are likely doing it MUCH later, like level 15+.

The truest answer is, "Adventure!"  Remember, you don't NEED to undergo the Lichdom ritual ASAP!

**Why require only level 12 in a casting class to become a Lich?**
- That's inspired by the [D&D 3.5 Lich](https://www.d20srd.org/srd/monsters/lich.htm) which requires caster level 11.  Since caster levels don't work well as prerequisites in the Infinity Engine, I rounded up to 12 since that's when full casters (Cleric, Druid/Shaman, and Sorcerer/Wizard) start to get their level 6 spell slots.

- As a solo single-classed character, reaching level 12 is probably easy in BG2, even if you start in SoA.  Reaching it as a triple-classed character in a party of 6, depending on your mod wad and the content you do, may take you until late SoA or even ToB to reach this point.  In short, Lichdom is meant to be attainable by characters in SoA with a variety of play styles.

**Why make the phylactery a cloak instead of a more traditional amulet or crown?**
- Amulets: Edwin's Amulet is normally glued to his neck, and I wanted Liches to be able to use [https://baldursgate.fandom.com/wiki/Amulet_of_Power](Amulets of Power).

- Crown: I like Ioun Stones.

- Cloak: Cloaks are generally a low-power item slot.  (Maybe there are mods which give high-powered cloaks to casters.)  In short, giving up a cloak slot is easier than giving up most other slots.

Shroud of the Lich is also an intentional reference to [an ability of the same name from DDO AKA _Dungeons & Dragons Online_](https://ddocompendium.com/w/Shroud_of_the_Lich).

**Why make a mod about becoming a Lich?**
- In Infinity Engine games, Lichdom is like _dimension door_ - it seems like plenty of creatures can use it _except_ you!  Also, the notion of being able to use this option that's been in the D&D books for decades in various forms appealed to me.

- In short, it's unique.  For the EE games, I know of no other mods which apply 'templates' to player characters like Lycanthrope, Lich, or Vampire.  (I'm not counting recruitable NPCs that are these sorts of creatures, nor shapeshifting abilities to mimic these templates.)  Maybe someone will soon make and public release a mod to turn characters into Werechihuahuas or other Lycanthropes, or into Angels, Constructs Demons, Devils, Elementals, Genies, Oozes, or Plants!

# License, Editing, and Redistribution/Rehosting
- This mod (Lichdom) is licensed under the [Creative Commons Attribution-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-sa/4.0/).

In short, this license means that, so long as you link to the original mod (https://github.com/LCA-EET/Lichdom/ or one of its official mirrors if there are any) AND you preserve the ENTIRE credits section, you can otherwise redistribute and edit this mod.

Cross-mod AKA crossmod content is also allowed and encouraged!  Don't ask permission for this:  Just do it and pweath send us a link as an Issue on this GitHub repository or/and a linked forum thread! (Linking your crossmod content isn't required, but encouraged!)

Just remember that this mod was made for non-commercial purposes, and Wizards of the Coast would probably very much NOT like you if you tried selling your mods for money.

# Credits
- Endarire: He did the design, voice acting, and writing for this mod - including this documentation!

- LCA: He coded this mod and proofread various documentation.

- k4thos and others involved in making and publishing [Protagonist Can Die](https://forums.beamdog.com/discussion/74528/mod-player1-can-die) which was sometimes called Player1 Can Die.  This mod was instrumental in the auto-revival ability of the Lich.

- Aaron Williams, author of Nodwick Comic: He was the first to use the phrase "Son of a Lich" regarding undeath.

- Angel and SubtleDoctor: Their discussions about the importance of lore adherence in mods helped in this mod's refinement.

- The Infinity Engine Modding Community.

- The Lord Jesus Christ.  Many D&D spells and other things are inspired by Bible passages, such as [Elijah calling down fire from heaven a la _flame strike_ in 1 Kings 18](https://www.biblegateway.com/passage/?search=1%20Kings%2018&version=NIV), [water being created from a rock in Exodus 17 a la _create water_](https://www.biblegateway.com/passage/?search=Exodus 17&version=NkJV), [pillars of cloud and fire tagging along with the Israelites in the desert wilderness for years a la an air elemental and a fire elemental](https://www.biblegateway.com/passage/?search=Exodus%2013%3A17-14%3A29&version=ESV), and [The Lord thundering loudly, confusing the Philistines into killing themselves a la _confusion_](https://www.biblegateway.com/passage/?search=1%20Samuel%207&version=nKJV).  Even the idol Bhaal/Baal is mentioned in various places in the Old Testament.
