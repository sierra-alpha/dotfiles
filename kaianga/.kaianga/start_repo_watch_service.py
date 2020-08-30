#!/user/bin/env/ python3

import argparse
import os
import subprocess
import toml

repos = toml.load("repos-to-watch.toml")

def main(raw_args=None):

    parser = argparse.ArgumentParser(
        description=("Parses the repos-to-watch file and sets up"
                     "A service that starts on boot to automatically"
                     "push those files"
        )
    )

    parser.add_argument(
        "-u",
        "--user",
        help=("Give a user name to change ~ to /home/<user>")
    )

    args = parser.parse_args(raw_args)

    user = args.user

    for repo in repos:

        user = user or ""
        repo_path = os.path.join("home", user, repo[2:]) if "~" in repo else repo

        import pdb; pdb.set_trace()
        os.chdir(repo)
        print(repo)

    # systemctl --user --now enable \
    #           gitwatch@$(systemd-escape "'-r url/to/repository' '-b branch' /path/to/folder").service

if __name__ == "__main__":
    main()
