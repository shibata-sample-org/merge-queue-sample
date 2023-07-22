#!/bin/bash
BRANCH="$(date +%s)"
git switch -c ${BRANCH}
git commit -m "empty commit" --allow-empty
git push origin ${BRANCH}
gh pr create -f
sleep 3
gh merge
git switch main
