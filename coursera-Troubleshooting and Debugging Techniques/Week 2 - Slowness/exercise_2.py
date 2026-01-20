""" Sample Code """
#!/usr/bin/env python
import subprocess
src = "/data/prod/"
dest = "/data/prod_backup/"
subprocess.call(["rsync", "-arq", src, dest])


""" submit code """
#!/usr/bin/env python

import subprocess
from multiprocessing import Pool
import os

def copy(args):
    print(f"Handling {args[0]} {args[1]}")
    subprocess.call(["rsync", "-arq", args[0], args[1]])

if __name__ == "__main__":
    src = "/home/student-...../data/prod/"
    dest = "/home/student-.....//data/prod_backup/"

    tasks = []
    for root, dirs, files in os.walk(src, topdown=False):
        for name in dirs:
            tasks.append([os.path.join(root, name),os.path.join(dest, name)])
    print(tasks)
    p = Pool(len(tasks))
    p.map(copy, tasks)
