# ` is an interesting key for a prefix
#set-option -g prefix `
set-option -g prefix C-a

unbind-key C-b
bind-key C-a last-window
bind-key ` last-window
bind-key a send-prefix

# we might need ` at some point, allow switching
# we can also send the prefix char with `-a
bind-key F11 set-option -g prefix C-a
bind-key F12 set-option -g prefix `

# set-option -g default-terminal "screen-256color"
set-option -g status-keys vi
set-option -g bell-action any
set-option -g set-titles on
set-option -g set-titles-string '#H:#S.#I.#P #W #T' # window number,program name,active (or not)
set-option -g visual-bell off

setw -g mode-keys vi
setw -g monitor-activity on

bind e previous-window
bind f next-window
bind E swap-window -t -1
bind F swap-window -t +1
# bind j up-pane 
# bind k down-pane

# set-option -g status-justify centre
set-option -g status-justify left
set-option -g status-bg black
set-option -g status-fg white
set-option -g status-left-length 40
set-option -g status-right-length 80

set-option -g pane-active-border-fg green
set-option -g pane-active-border-bg black
set-option -g pane-border-fg white
set-option -g pane-border-bg black

set-option -g message-fg black
set-option -g message-bg green

#setw -g mode-bg black

setw -g window-status-bg black
setw -g window-status-current-fg green
setw -g window-status-bell-attr default
setw -g window-status-bell-fg red
setw -g window-status-activity-attr default
setw -g window-status-activity-fg yellow
set -g status-left '#[fg=red]#H#[fg=green]:#[fg=white]#S #[fg=green]][#[default]'
set -g status-right '#[fg=green]][#[fg=white] #T #[fg=green]][ #[fg=blue]%Y-%m-%d #[fg=white]%H:%M#[default]'
set -g status-interval 5
set -g status-right '#[fg=green]][#[fg=white] #(tmux-mem-cpu-load 5 4) #[fg=green]][ #[fg=yellow]%H:%M#[default]'
set -g history-limit 4096
set -g mouse on
# split panes using | and -
bind | split-window -h
bind - split-window -v
unbind '"'
unbind %
bind r source-file ~/.tmux.conf


new -n IRC "irssi" 
neww -n Main 
