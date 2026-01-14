#!/usr/bin/env python3
"""
Interactive task preview UI.
Displays tasks, allows toggling by number, then executes selected tasks.
"""

class Task:
    def __init__(self, description, detector, action, default=True):
        self.description = description
        self.detector = detector  # returns True if already done
        self.action = action
        self.default = default
        self.enabled = default

    def is_done(self):
        return self.detector()


def filter_pending(tasks):
    """Return only tasks that haven't been done yet."""
    return [t for t in tasks if not t.is_done()]


def display_tasks(tasks):
    """Print numbered list of tasks with checkboxes."""
    print("")
    for i, task in enumerate(tasks, 1):
        checkbox = "[x]" if task.enabled else "[ ]"
        print("%s %2d. %s" % (checkbox, i, task.description))
    print("")


def toggle_prompt(tasks):
    """Loop: display tasks, get input, toggle until Enter pressed."""
    while True:
        display_tasks(tasks)
        try:
            response = input("Toggle by number (e.g. '1 3 5'), Enter to proceed: ")
        except EOFError:
            print("")
            return
        response = response.strip()
        if not response:
            return
        for token in response.split():
            try:
                num = int(token)
                if 1 <= num <= len(tasks):
                    tasks[num - 1].enabled = not tasks[num - 1].enabled
                else:
                    print("Invalid number: %d" % num)
            except ValueError:
                print("Not a number: %s" % token)


def execute_tasks(tasks):
    """Execute all enabled tasks."""
    enabled = [t for t in tasks if t.enabled]
    print("\nExecuting %d task(s)...\n" % len(enabled))
    for task in enabled:
        print(">> %s" % task.description)
        task.action()
    print("\nDone.")


def run_tasks(all_tasks):
    """Main entry point: filter pending, preview, toggle, execute."""
    tasks = filter_pending(all_tasks)
    if not tasks:
        print("Nothing to do - all tasks complete.")
        return
    print("Task preview (%d pending):" % len(tasks))
    toggle_prompt(tasks)
    enabled_count = sum(1 for t in tasks if t.enabled)
    if enabled_count == 0:
        print("All tasks disabled, nothing to do.")
    else:
        execute_tasks(tasks)
