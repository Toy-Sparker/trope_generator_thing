extends Node

enum tropeTypes {
	characterization,
	plot,
	archetypes
}

var TropeDict : Dictionary = {
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
	"Sanity Slippage": "Becomes increasingly insane throughout the story."
}
