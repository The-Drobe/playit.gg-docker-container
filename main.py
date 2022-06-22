import subprocess

p = subprocess.Popen(["./playit", "-c" ,"/data/config.toml"])
print("started playit.gg", flush=True)
# ... do other things while notepad is running
returncode = p.wait() # wait for notepad to exit
print("stoped playit.gg", flush=True)