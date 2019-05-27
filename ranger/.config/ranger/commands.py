# You always need to import ranger.api.commands here to get the Command class:
from ranger.api.commands import *

# My additional commands
class terminal(Command):
    """:terminal

    Open new tmux split in the current directory.
    """
    def execute(self):
        import os
        from ranger.ext.get_executables import get_executables
        if os.environ.get('TMUX'):
            command = 'tmux split-window -v'
        else:
            command = os.environ.get('TERMCMD', os.environ.get('TERM'))
            if command not in get_executables():
                command = 'x-terminal-emulator'
            if command not in get_executables():
                command = 'xterm'
        self.fm.run(command, flags='f')

