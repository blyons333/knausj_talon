os: mac
and app.bundle: com.google.Chrome
and title: /mail.google.com/
-
mess last: key(p)
mess next: key(n)
mess fold: key(:)
mess unfold: key(;)
window main: key(shift-esc)
chat last: key(ctrl-,)
chat next: key(ctrl-.)
mail send: key(cmd-enter)
toolbar: key(,)
mail select: key(x)
mail archive: key(e)
mail trash: key(#)
mail reply: key(shift-r)
mail reply all: key(shift-a)
mail forward: key(f)
undo: key(z)
mail read: key(shift-i)
mail unread: key(shift-u)
mail: key(u)
mail last: key(k)
mail next: key(j)
mail open: key(o)
pane next: key(g n)
pane last: key(g p)
search: key(/)
mail new: key(c)
mail move: key(v)
go label [<user.text>]:
	key(g l)
	sleep(50ms)
	insert(text or "")
	sleep(250ms)
go inbox: key(g i)