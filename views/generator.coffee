do -> Array::shuffle ?= ->
  for i in [@length-1..1]
    j = Math.floor Math.random() * (i + 1)
    [@[i], @[j]] = [@[j], @[i]]
  @

tasks = [ "Make a riddle having TOPIC as a solution.",
	"Make a plot involving TOPIC as a theme.",
	"Make a poem about TOPIC without using it as a word.",
	"Make a poem about TOPIC where a one word change inverses the meaning.",
	"Collect poetic descriptions for  TOPIC.",
	"Collect blunt descriptions for  TOPIC.",
	"Plot to take over the world using TOPIC, TOPIC, and TOPIC."
	]
topics = [
	"love",
	"death",
	"cats",
	"electricity",
	"the internet",
	"life",
	"Goedels incompleteness theorem",
	"whisky",
	"water",
	"being honest",
	"a game of your choice",
	"a ball pen"
]

topic = () ->
				stasks = tasks.shuffle()
				stopics = topics.shuffle()
				task = stasks[0]
				i = 0
				while /TOPIC/.test(task)
								task = task.replace /TOPIC/, stopics[i]
								i += 1
				task

visualize = (s) -> 
	t = topic(tasks, topics)
	$(s).append(t)

$(document).ready -> visualize('body')
