do -> Array::shuffle ?= ->
  for i in [@length-1..1]
    j = Math.floor Math.random() * (i + 1)
    [@[i], @[j]] = [@[j], @[i]]
  @

visualize = (tasks, topics) ->
				stasks = tasks.shuffle()
				stopics = topics.shuffle()
				task = stasks[0]
				i = 0
				while /TOPIC/.test(task)
								task = task.replace /TOPIC/, stopics[i]
								i += 1
				$('body').append(task)

$(document).ready ->
				$.getJSON('/tasks.json').done (tasks) ->
								$.getJSON('/topics.json').done (topics) ->
												visualize(tasks, topics)
