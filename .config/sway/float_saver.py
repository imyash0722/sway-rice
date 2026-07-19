import sys
import json
import os
import subprocess

STATE_FILE = os.path.expanduser("~/.config/sway/floating_sizes.json")

def load_state():
    if os.path.exists(STATE_FILE):
        with open(STATE_FILE, "r") as f:
            return json.load(f)
    return {}

def save_state(state):
    with open(STATE_FILE, "w") as f:
        json.dump(state, f)

if __name__ == "__main__":
    import i3ipc
    i3 = i3ipc.Connection()
    state = load_state()

    def on_window_new(i3, e):
        app_id = e.container.app_id or e.container.window_class
        if not app_id: return
        if app_id in state:
            w, h = state[app_id]
            e.container.command(f"resize set {w} {h}")

    def on_window_close(i3, e):
        app_id = e.container.app_id or e.container.window_class
        if not app_id: return
        if e.container.floating == "user_on" or e.container.floating == "auto_on":
            rect = e.container.rect
            state[app_id] = [rect.width, rect.height]
            save_state(state)
            
    def on_window_floating(i3, e):
        app_id = e.container.app_id or e.container.window_class
        if not app_id: return
        if e.container.floating == "user_on" or e.container.floating == "auto_on":
            if app_id in state:
                w, h = state[app_id]
                e.container.command(f"resize set {w} {h}")

    i3.on("window::new", on_window_new)
    i3.on("window::close", on_window_close)
    i3.on("window::floating", on_window_floating)
    i3.main()
