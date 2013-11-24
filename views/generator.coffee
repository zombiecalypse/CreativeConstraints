do -> Array::shuffle ?= ->
  for i in [@length-1..1]
    j = Math.floor Math.random() * (i + 1)
    [@[i], @[j]] = [@[j], @[i]]
  @

topic = (tasks, topics) ->
				stasks = tasks.shuffle()
				stopics = topics.shuffle()
				task = stasks[0]
				i = 0
				while /TOPIC/.test(task)
								task = task.replace /TOPIC/, stopics[i]
								i += 1
				task

visualize = (s, prefix="") ->
				$.getJSON(prefix + '/topics.json')
								.done (topics) ->
												$.getJSON(prefix + '/tasks.json').done (tasks) ->
																t = topic(tasks, topics)
																$(s).append(t)
								.fail (h, t, e) -> alert("#{e}: #{t} #{h}")

#$(document).ready -> visualize('body')
