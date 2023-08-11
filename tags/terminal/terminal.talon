tag: terminal
-
# tags should be activated for each specific terminal in the respective talon file

lisa: user.terminal_list_directories()
lisa all: user.terminal_list_all_directories()
katie [dir] [<user.text>]: user.terminal_change_directory(text or "")
katie root: user.terminal_change_dirictory_root()
katie (up | back): user.terminal_change_directory("..")
go <user.system_path>: insert('cd "{system_path}"\n')
path <user.system_path>: insert('{system_path}')
path quad <user.system_path>: insert('"{system_path}"')
clear screen: user.terminal_clear_screen()
run last: user.terminal_run_last()
rerun [<user.text>]: user.terminal_rerun_search(text or "")
rerun search: user.terminal_rerun_search("")
exit: key(ctrl-d)
exit all:
    key(ctrl-d)
    insert("y")
    key(enter)
kill: key(ctrl-c)
kill all: user.terminal_kill_all()
dev stop E B A:
    # Code folder
    user.tab_close_wrapper()
    # File basket inbox
    user.tab_close_wrapper()
    # shell_plus
    insert("exit")
    key(enter)
    sleep(4000ms)
    user.tab_close_wrapper()
    # psql
    key(ctrl-d)
    sleep(3000ms)
    user.tab_close_wrapper()
    # celery beat
    key(ctrl-c)
    sleep(5000ms)
    user.tab_close_wrapper()
    # celery analytics
    key(ctrl-c)
    sleep(5000ms)
    user.tab_close_wrapper()
    # celery
    key(ctrl-c)
    sleep(5000ms)
    user.tab_close_wrapper()
    # server
    key(ctrl-c)
    sleep(5000ms)
    user.tab_close_wrapper()

activate E B A:
    insert("conda activate eba")
    key(enter)

activate M M C:
    insert("workon .")
    key(enter)

activate box:
    insert("source venv/bin/activate")
    key(enter)

re start services:
    insert("sudo supervisorctl restart all")

postgres E B A:
    insert("psql eba")

postgres M M C:
    insert("psql mmc")

query select all:
    insert("SELECT * FROM ")

query where:
    insert(" WHERE ")

query group by:
    insert(" GROUP BY ")

copy paste:
    edit.copy()
    sleep(50ms)
    edit.paste()
