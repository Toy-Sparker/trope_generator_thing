extends Node

enum tropeTypes {
	Characterization,
	Plot
}

# 0 - Characterization, 1 - plot
var TropeArray = [
	{
		"Hot-Blooded": "Passionate about everything they do.",
		"The Woobie": "Suffers a lot and needs a hug.",
		"Deadpan Snarker": "Drily snarks regularly.",
		"The Chosen One": "The one who is chosen to save the world according to a chooser or to a prophercy.",
		"Apocalypse Maiden": "A person is chosen to bring end the world.",
		"Anti-Hero": "A hero who does unheroic things and/or has a unheroic personality.",
		"The Antichrist": "The chosen one but evil.",
		"Knight in Sour Armor": "A cynical, bitter, and/or pessimistic character who still does good anyway.",
		"The Snark Knight": "A world-weary character finds everyone worth snarking at, themselves included.",
		"Stepford Smiler": "Happy on the outside. Depressed/empty/unstable on the inside.",
		"Stepford Snarker": "Uses snark to hide negative emotions and/or hurt on the inside.",
		"Shrinking Violet": "An insecure and very shy person.",
		"Tranquil Fury": "Calm, but serious and violently angry.",
		"Anti-Nihilist": "Believes that life may be meaningless, but we can give it our own meaning.",
		"One Man Army": "One who has the strength of many.",
		"Ax-Crazy": "Dangerously unhinged, unstable, and prone to random violence.",
		"The Eeyore": "Perpetually depressed and pessimistic character.",
		"Despair Event Horizon": "Point of losing all hope.",
		"Byronic Hero": "A troubled, brooding, sometimes selfish outcast whose passions and strive towards a goal cause drama.",
		"Sanity Slippage": "Becomes increasingly insane throughout the story.",	
		"Plucky Comic Relief": "Character whose main purpose is behaving in a silly or is full of comical behavior for the rule of comedy.",
	},
	{
		"15 Minutes of Fame": "Character gets famous for a bit",
		"Enemies to Lovers": "Two characters start as hateful towards eachother until both of them develop romantic feelings for the other.",
		"Abuse Mistake": "Something innocent is mistaken for abuse or vice versa.",
		"All for Nothing": "The results of a complex story/plot are all undone in one fell swoop.",
		"The B Grade": "Someone gets upset over getting a grade that is slightly less than perfect.",
		"Be Careful What You Wish For": "A character's wish is granted, and they regret wishing for it.",
		"Earn Your Happy Ending": "Characters go through hell.... but end up happy in the end as a result.",
		"Downer Ending": "An ending intended to sadden the viewers.",
		"Accidental Hero": "A person performs a heroic action by complete accident.",
		"Accidental Marriage": "Someone gets married accidentally.",
		"Alien Invasion": "Aliens plan to invade a planet.",
		"Be Yourself": "Don't try to be someone else, just be yourself.",
		"Becoming the Mask": "Becoming what you're pretending to be.",
		"Cabin Fever": "Going mad from being in an isolated area without outside contact for an extended period."
	}
]
