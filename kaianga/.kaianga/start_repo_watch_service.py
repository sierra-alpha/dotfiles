#!/user/bin/env/ python3

import subprocess
import toml

repos = toml.load("repos-to-watch.toml")

def main(raw_args=None):

    parser = argparse.ArgumentParser(
        description=("Get the relevant info to execute a "
                     "Docker Build command that supports build secrets")
    )

    parser.add_argument(
        "-d",
        "--leave-dirty",
        action="store_true",
        default=False,
        help=("If set this will leave the password files "
              "in the directory when finished")
    )

    args = parser.parse_args(raw_args)

    for repo in repos:


    systemctl --user --now enable \
              gitwatch@$(systemd-escape "'-r url/to/repository' '-b branch' /path/to/folder").service

if __name__ == "__main__":
    main()
